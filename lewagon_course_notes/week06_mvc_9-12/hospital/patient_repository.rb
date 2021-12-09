require 'csv'
require_relative 'patient'


class PatientRepository
  def initialize(csv_file, room_repository)
    @room_repository = room_repository
    @csv_file = csv_file
    @patients = []
    @next_id = 1
    load_csv
  end

  def add(patient)
    @patients << patient
    # Increment the counter when adding to repo
    next_id += 1
  end

  private

  def load_csv
    # The first row is headers (not data)
    csv_options = { headers: :first_row, header_converters: :symbol }
    # Sets counter to 0
    @next_id = 0
    CSV.foreach(@csv_file, csv_options) do |row|
      row[:id]    = row[:id].to_i          # Convert column to Integer
      row[:cured] = row[:cured] == "true"  # Convert column to boolean
      p row
      # Fetch Room instance with id row[:room_id] from the room repo / Deserialization
      room = @room_repository.find(row[:room_id])
      patient = Patient.new(row)
      patient.room = room
      @patients << Patient.new(row)
      @next_id = row[:id]
    end
    # Increments the counter
    @next_id += 1
  end
end

patient_repo = PatientRepository.new('patients.csv')
# leif = Patient.new(name: "Leif")
# sven = Patient.new(name: "Sven")

# repo.add(leif)
# repo.add(sven)
p patient_repo
