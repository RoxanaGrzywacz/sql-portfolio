-- Selects all patients (rabbits) assigned to the owner with ID 40
-- The subquery in the WHERE clause searches for the owner with ID 40

SELECT * FROM patients 
WHERE owner_id = (SELECT id 
	FROM owner WHERE id = '40');

-- Selects the ID and name of the owner and patient (rabbit) for owners with IDs: 40, 20, 22, 33, 2
-- Joins the owner and patients tables based on the owner ID to retrieve information about the owner and their patients
-- Sorts the result by owner ID (owner_id)

SELECT o.id AS owner_id, o.name AS owner_name, p.id AS patient_id, p.name AS patient_name
FROM owner o
JOIN patients p ON o.id = p.owner_id
WHERE o.id IN (40, 20, 22,33,2)
ORDER BY o.id;

-- Selects all columns from the 'owner' table
-- Orders the results in descending order based on the 'id' column
-- This means the most recent owners (with higher id values) will appear first

SELECT * FROM owner
ORDER BY id DESC;

-- Selects the 'id' and 'name' of owners from the 'owner' table
-- Uses a LEFT JOIN to include all owners, even those without a patient
-- Filters the results to show only owners who do not have any associated patients
-- This is done by checking if 'p.id' is NULL, meaning no corresponding patient exists

SELECT o.id AS owner_id, o.name AS owner_name
FROM owner o
LEFT JOIN patients p ON o.id = p.owner_id
WHERE p.id IS NULL;

-- Selects the 'owner_id' and the count of patients for each owner
-- From the 'patients' table, groups the results by 'owner_id'
-- The HAVING clause filters the results to show only owners who have more than one patient

SELECT owner_id, COUNT(*) AS patient_count
FROM patients
GROUP BY owner_id
HAVING COUNT(*) > 1;

-- Selects the 'name' and 'age' of pets (from the 'patients' table),
-- and the 'name', 'id', and 'phone' of the corresponding owners (from the 'owner' table).
-- Uses a LEFT JOIN to include all pets, even if they don't have an associated owner.
-- Filters the results to include only pets that are older than 10 years.

SELECT p.name AS pet_name, p.age AS pet_age, o.name AS owner_name, o.id AS owner_id, o.phone
FROM patients p
LEFT JOIN owner o ON p.owner_id = o.id
WHERE p.age > 10;

-- Retrieves a list of patients who are vaccinated, showing their ID, name, and vaccination status.
-- The query filters patients whose 'vaccinated' status is 'YES' and orders them by 'id' in ascending order.
-- This helps in finding all vaccinated patients sorted by their ID.

SELECT id, name, vaccinated
FROM patients
WHERE vaccinated = 'YES'
ORDER BY id ASC;





