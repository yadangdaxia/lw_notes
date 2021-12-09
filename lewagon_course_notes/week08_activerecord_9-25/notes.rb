# CRUD
# limit command in SELECT statement for pagination (not display too many results)
# Can execute these SQL commands directly in sqlite terminal
# Always back up databases (to cloud, zip drive, etc.)


# READ
# Select only certain elements, e.g. https://www.airbnb.com/flats/52
# In SQL:
SELECT *
FROM flats
WHERE id = 52

# https://github.com/yadangdaxia
# In SQL:
SELECT *
FROM users
WHERE username = 'yadangdaxia'


# CREATE
# No need to specify id
INSERT INTO doctors (name, age, specialty)
VALUES ('Dr. Strange', 45, 'Psychology')

# UPDATE
UPDATE doctors SET age = 40, name = 'John' WHERE id = 3

# DELETE
DELETE FROM doctors WHERE id = 32

# Facebook and Google style of DELETE, aka "soft delete"
UPDATE photos SET deleted=true WHERE id=12345678

# Unpublish (e.g. for products you aren't carrying anymore)
UPDATE products SET published=false WHERE id=12345


####

# Save info
doctor = Doctor.new(name: "John", specialty:"Surgeon")
doctor.save

# Load info to database
INSERT INTO doctors (name, specialty) VALUES ('John', 'Surgeon')
