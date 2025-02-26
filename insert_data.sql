-- Adding a new patient (animal) to the patients table
-- Pet name: Filip, species: Miniature rabbit, breed: Dwarf Hotot, age: 1 year, weight: 2.4 kg
-- Owner with ID 40

INSERT INTO patients (name, species, breed, age, weight_kg, owner_id) 
VALUES ('Filip', 'Miniature rabbit', 'Dwarf Hotot', 1, 2.4, 40);

-- Adding several new patients (animals) to the patients table
-- The values corresponding to names, species, breeds, age, weight, and owners (IDs)

INSERT INTO patients (name, species, breed, age, weight_kg, owner_id) 
VALUES 

    ('Bella', 'Miniature rabbit', 'Jersey Wooly', 3, 3.5, 40),
    ('Max', 'Miniature rabbit', 'English Angora', 5, 1.0, 20),   
    ('Luna', 'Miniature rabbit', 'Mini Satin', 2, 4.3, 22),
    ('Charlie', 'Miniature rabbit', 'Mini Satin', 7, 0.7, 33),
    ('Simba', 'Miniature rabbit', 'Dwarf Hotot', 4, 1.5, 2);

-- Adding new owners to the owner table
-- The values corresponding to the owners' names and their phone numbers

INSERT INTO owner (name, phone) 
VALUES 
    ('Marek Dobrovsky','500-100-300'),
    ('Natasha Ivanova','111-222-888'),
    ('Kazimiera Podwiślańska','205-53-15'),
    ('Mathew Cool','589-698-877'),
    ('Jakub Kuba','125-999-585');

-- Inserts a new record into the 'vaccinations' table, linking a patient (with ID 31) to a vaccination.
-- The vaccination date is specified as '2025-02-20' and the vaccine type is 'Cylap'.

INSERT INTO vaccinations (patient_id, vaccination_date, vaccine_type)
VALUES
	(31, '2025-02-20', 'Cylap'); -- This is one of the ways to input a date value in SQL, using the 'YYYY-MM-DD' format.


-- Inserts a new record into the 'vaccinations' table, linking a patient (with ID 40) to a vaccination.
-- The vaccination date is automatically set to the current date using the CURDATE() function.
-- The vaccine type is specified as 'Filavac VHD K C+V'.

INSERT INTO vaccinations (patient_id, vaccination_date, vaccine_type)
VALUES
-- CURDATE() returns the current date in 'YYYY-MM-DD' format, making it convenient for recording today's date without needing to manually input it.
	(40, CURDATE(), 'Filavac VHD K C+V'); 

