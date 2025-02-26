-- This trigger is set to activate after a new record is inserted into the 'vaccinations' table.
-- The trigger will update the 'vaccinated' column in the 'patients' table to 'YES' for the corresponding patient.
-- It uses the 'NEW.patient_id' to refer to the patient being vaccinated and updates their 'vaccinated' status.
-- This ensures that whenever a patient receives a new vaccination, their 'vaccinated' status is automatically updated.

DELIMITER //

CREATE TRIGGER update_vaccinated_status
AFTER INSERT ON vaccinations
FOR EACH ROW
BEGIN
    UPDATE patients
    SET vaccinated = 'YES'
    WHERE id = NEW.patient_id;
END; //

DELIMITER ;
