# model file intern.rb
# QUESTION - I'm not sure about these
class Doctor < ActiveRecord::Base
    has_many :interns
    has_many :consultations
    # Only write the one you need. E.g. if don't need to access patients of doctors, don't write in Patients model
    has_many :patients, through: :consultations
    # Validations
    # presence to force last name to exist
    # uniqueness to ensure only one doctor with that last name
    validates :last_name, presence: true, uniqueness: true
end

# Syntax for unique first name (?)
validates :first_name, uniqueness: { scope: :last_name }

class Intern < ActiveRecord::Base
    belongs_to :doctor
end

# Can create doctor by  load config/application.rb in irb

house = Doctor.new(first_name: "Greg", last_name: "House")
allison = Intern.new(first_name: "Allison", last_name: "Smith")

# Allison's id and doctor will be undefined until defining intern id to doctor id. Shorthand is:
allison.doctor = house
# Save allison
allison.save

# Another one
jeff = Intern.new(first_name: "Jeff", last_name: "Cooper")
jeff.doctor = house
jeff.save

# Check
Doctor.all

# Who is Allison's doctor?
allison.doctor
# Can chain as well
allison.doctor.first_name

# Pluralize
house.interns.count




# FLOW: change database, create new migration, run migrations, create models (?)

# 1. Create or update the schema

# 2. Create migration files
rake db:timestamp
touch db/migrate/202112345678_create_patients.rb
touch db/migrate/202112345678_create_consultations.rb

# 3. Code migration file
# db/migrate/202112345678_create_patients.rb
class CreatePatients < ActiveRecord::Migration[6.0]
    def change
      create_table :patients do |t|
        t.string      :first_name
        t.string      :last_name
        t.timestamps
      end
    end
end

# 4. Code migration file
# db/migrate/202112345678_create_consultations.rb
class CreateConsulations < ActiveRecord::Migration[6.0]
    def change
      create_table :consultations do |t|
        t.references :patient, foreign_key: true
        t.references :doctor, foreign_key: true
        # Older way of writing: t.references :doctor, index: "true"
        t.timestamps null: false
      end
    end
end

# 5. Migrate new migration
rake db:migrate

# 6. Create two new models

# patient.rb
class Patient < ActiveRecord::Base
    has_many :consultations
end

# consultation.rb
class Consultation < ActiveRecord::Base
    # two foreign keys
    belongs_to :patient
    belongs_to :doctor
end

# 7. Play with it in irb; make a patient

load "config/application.rb"
Patient.all
trump = Patient.new(first_name: "Donald", last_name: "Trump")
trump.save
biden = Patient.new(first_name: "Joe", last_name: "Biden")
biden.save

flu = Consultation.new
flu.patient = trump
flu.doctor = house
flu.save

headache = Consultation.new
headache.patient = biden
headache.doctor = house
headache.save

# 8. Continue playing in irb

trump.consultations
house.consultations
flu.doctor.last_name

patients = []
house.consultations.each do |consultation|
    patients << consultation.patient
end

# Print patients array to get all patients from Dr. House
patients


# line 6 ( through: ) does this but with one request (line 127 executes)
house.consultations.each do |consultation|
    patients << consultations.patient
end

house.patients


# Can use migration to add and remove columns

# db/migrate/202112345678_add_intern_reference_to_patients.rb
class AddInternReferenceToPatients < ActiveRecord::Migration[6.0]
    def change
      add_reference :patients, :intern, foreign_key: true
    end
end

# Validations (e.g. range, fits regex, nulls, etc.)
strange = Doctor.new(first_name: "Stephen")
strange.valid?
# Result will be false
strange.save
# Will not be saved, returns false

strange.last_name = "Strange"
strange.valid?
# Returns true
strange.save
# Will be saved successfully

fake_house = Doctor.new(first_name: "Faker", last_name: "House")
fake_house.valid?
# Queries (SQL request) and returns false

# Other validations (check documentation)
inclusion
length

# Validation can also be done front-end of course.
# It is done through JS which can be disabled in browser,
# so backend validation is still necessary
