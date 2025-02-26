-- Updates the 'vaccinated' status of the patient with ID 31 in the 'patients' table.
-- The 'vaccinated' column is set to 'YES', indicating that the patient has been vaccinated.

UPDATE patients
SET vaccinated = 'YES'
WHERE id = 31;

-- Updates the 'vaccinated' status to 'YES' for all patients that have at least one entry in the 'vaccinations' table.
-- The 'vaccinated' column is set to 'YES' for all patients whose ID is present in the 'vaccinations' table.
-- The 'IN' clause checks if the patient's ID matches any 'patient_id' from the 'vaccinations' table.

UPDATE patients
SET vaccinated = 'YES'
WHERE id IN (SELECT DISTINCT patient_id FROM vaccinations);

