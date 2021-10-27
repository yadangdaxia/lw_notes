# Create schema

# Then create new database (empty)
rake db:create

#
rake db:timestamp

touch/migrate/PASTE_TIMESTAMP_create_restaurants.rb

# Make migration file
class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.timestamps
    end
  end
end
# Schema is automatically created


# Make model.rb file
class Restaurant < ActiveRecord:Base
end

# Puts data into table
rake db:migrate


# Update
rake db:timestamp
touch/migrate/PASTE_TIMESTAMP_update_column.rb

# Create new class to update the spelling
class UpdateColumn < ActiveRecord::Migration
  # changes :address to :address_phone
  change_column :restaurants, :address, :address_phone
end




