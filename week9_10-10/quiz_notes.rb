

# Gets 3 most recent books written by Jules Verne

SELECT * FROM books
JOIN authors ON authors.id = books.author_id
WHERE authors.name = "Jules Verne"
ORDER BY year_published DESC
LIMIT 3

# See schema at https://kitt.lewagon.com/db/41991

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string :email
    t.timestamps
  end
end

# Create
class CreateReadings 
  def change
    create_table :readings do |t|
    t.date :reading_date
    t.references :user, foreign_key: true
    t.references :book, foreign_key: true
    t.timestamps
    end
  end
end

# Update
class AddCategoryToBooks < ActiveRecord::Migration
  def change
    add_column: :books, :category: string
  end
end

# Add author to db
lewis = Author.new(name: "Michael Lewis") 
lewis.save

# Get all authors
Author.all

# Get author with id 8
Author.find(8)
Author.find_by_id(8)

# Store author in vairable
jules = Author.where(name: "Jules Verne").first
jules = Author.find_by_name("Jules Verne")

# Get Jules Verne's books
jules.books

# Create new book
twenty_thousand = Book.create(title: "20k leagues under")

# Add jules Verne as this book's author (must use instance jules)
twenty_thousand.author = jules

# Save 
twenty_thousand.save


