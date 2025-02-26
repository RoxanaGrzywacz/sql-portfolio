-- Alters the 'patients' table by adding a new column called 'vaccinated'.
-- The new column is of type VARCHAR(3) and will store a value indicating vaccination status.
-- The default value for the 'vaccinated' column is set to 'no', meaning by default, pets are not vaccinated.

ALTER TABLE patients
ADD COLUMN vaccinated VARCHAR(3) DEFAULT 'no';
