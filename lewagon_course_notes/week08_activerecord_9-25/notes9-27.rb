# Using ActiveRecord Methods
# Note: YML file helps when using multiple environments
# Documentation here : https://guides.rubyonrails.org/active_record_basics.html

# Class name includes "s" because the table is "restaurants"
class CreateRestaurants < ActiveRecord::Migration
  # This method creates the table
  def change
    # Method inherited from Migration
    create_table :restaurants do |t|
      # Column names
      t.string :name
      t.string :address
      t.float :rating
      # What is timestamp doing?
      t.timestamps null: false
    end
  end
end

# COMMAND LINE STUFF

# Get menu
rake -T
# Create db
rake db:create
# Migrate
rake db:migrate
# Can do them on the same line
rake db: create db: migrate db: seed
# Deletes the db file
rake db:drop


# Can see stuff after db:migrate
sqlite> .schema

# See tables
sqlite> .tables

# If update field in schema, need to create new migration
rake db:timestamp
touch db/migrate/2021092794930_add_rating_to_restaurants.rb

# 2021092794930_add_rating_to_restaurants.rb
class AddRatingToRestaurants < ActiveRecord::Migration
  def change
    # I'm confused about this syntax - table name, new column name, data type (?)
    add_column :restaurants, :rating, :integer
  end
end

# Launch in terminal
rake db:migrate

#restaurant.rb
# Model file named in singular because it represents each instance of a restaurant
class Restaurant < ActiveRecord::Base
end


# in IRB
load "config/application.rb"

# CREATEs the instance and saves in the database
fox = Restaurant.new(name: "The Red Fox", address: "Shanghai")
fox.save

# Check the name and UPDATE it
fox.name
fox.name = "The Blue Fox"
fox.save



# READ all records from table
Restaurant.all
# Returns array of restaurant objects,
# same as SELECT "restaurants".* FROM "restaurants"
restaurants = Restaurant.all
name_one = restaurants.first
name_one.name
# Should return "The Blue Fox"

# Other READ methods:
# Find a specific restaurant that is id 2
Restaurant.find(2)
# Active record method that finds by column name
Restaurant.find_by_name("The Weak Goose")
weak_goose = find_by_name("The Weak Goose")

# DELETE an item in the database
weak_goose.destroy

# Advanced queries (can do this in IRB as well)
Restaurant.count

Restaurant.create(name: "The Golden Goose", address: "London")

# Finds restaurants in London
Restaurant.where(address: "London")

# Finds a restaurant that includes the word "Goose" somewhere in the name field - write in SQL language
Restaurant.where("name LIKE ?", "%Goose%")

Restaurant.order(created_at: :desc)

# seeds.rb - manual file to "backup" data(?)

fox = Restaurant.new(name: "The Fox")
fox.save
# Running the following code will get you back to your sample data
rake db: create db: migrate db: seed

# This works, but is boring.
100.times do |i|
  Restaurant.create(name: "restaurant number #{i}")
end
# Can also use gem called faker to auto-generate sample names, emails, etc.
# Remember to gem install faker and then require "faker" at the top of the file

# Can also do web scraping and API calls


rake db:drop db:create db:migrate db:seed


sqlite3 db/development.sqlite3
sqlite> .schema


