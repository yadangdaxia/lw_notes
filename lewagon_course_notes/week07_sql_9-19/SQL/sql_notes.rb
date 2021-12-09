# SQL => Structured Query Language for communicating with database
# Can save as .sql file
# Convention is to put SQL commands in uppercase, but can do lowercase as well

# Gives array of all patient names, first and last
# first_name and last_name are column headers
SELECT first_name, last_name FROM patients

# Gives all columns about patients
# patients is table name
SELECT * FROM patients

# Gives all patients who are 21
SELECT * FROM patients WHERE age = 21

# Tests against string
SELECT * FROM doctors WHERE specialty = 'Cardiac Surgery'

# Searches anything with 'Surgery', similar to regexp
SELECT * FROM doctors WHERE specialty LIKE '#Surgery'
# can use NOT LIKE as well - everything but

# Searches anything that ends with 'Surgery'
SELECT * FROM doctors WHERE specialty LIKE '%Surgery'

# AND operator
SELECT * FROM doctors
WHERE specialty = 'Cardiac Surgery'
AND first_name = 'Steve'

# OR operator
SELECT * FROM doctors
WHERE specialty = 'Cardiac Surgery'
OR first_name = 'Superman'

# Ascending order
SELECT * FROM patients ORDER BY age ASC
# Descending order
SELECT * FROM patients ORDER BY age DESC

# How many doctors do I have?
SELECT COUNT(*) FROM doctors

# How many doctors do I have with one specific specialty?
# Returns doctors by specialty
SELECT COUNT(*), specialty
FROM doctors
GROUP BY specialty

# AS renames the column to 'c', then reorders
SELECT COUNT(*), AS c, specialty
FROM doctors
GROUP BY specialty
ORDER BY c DESC

# Gives all inhabitants from Paris. This works, but ...
SELECT * FROM inhabitants
WHERE city_id = 2

# Better way
SELECT * FROM inhabitants i, cities c
WHERE i.city_id = c.id
AND c.name = 'Paris'

# Same (?)
SELECT * FROM inhabitants i
JOIN cities c ON c.id = i.city_id
WHERE c.name = 'Paris'

# Gives all adults living in Paris
SELECT .first_name, i.last_name   #Always need SELECT and FROM
FROM inhabitants i
JOIN cities c ON c.id = i.city_id   # Sometimes need to join with other tables
WHERE i.city_id = c.id   # Sometimes need to filter for a condition
AND c.name = 'Paris'   # Or filter multiple conditions
AND i.age >= 18
ORDER BY i.age ASC   # And can sort


SELECT c.date, p.first_name, p.last_name, d.first_name, d.last_name
FROM consultations c
JOIN patients p ON p.i = c.patient_id
JOIN doctors d ON d.id = c.doctor_id   # This is the query
WHERE c.date >= DATE ('2016-12-01') AND c.date ('2017-01-01')   # Not sure about DATE syntax but can do similar things
ORDER BY c.date ASC



# When/where does a query start and end?


# https://sqliteonline.com/
# File > Open DB >

#sqlite is one file on computer, so can just send it to someone


CREATE TABLE `cities` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR
);

#  Can use .schema while in sql prompt


SELECT patients.first_name, patients.last_name, doctor.first_name
FROM patients
JOIN consultations ON patients.id = consultations.patient_id
JOIN doctors ON doctors.id = consultations.doctor_id
WHERE doctors.first_name = "John"





