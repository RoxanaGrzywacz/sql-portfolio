# sql-portfolio

Portfolio of SQL queries and database projects

# SQL Portfolio Project

This project is a SQL database designed to showcase my skills in managing and manipulating relational databases. It represents a veterinary clinic for rabbits, where each rabbit is treated as a patient. The database manages information about pet owners and their rabbits, including features like tracking vaccinations, storing owners' contact details, and associating patients (rabbits) with their owners.

## Project Description

The database consists of three main tables:

- **`owner`**: Contains information about pet owners.
- **`patients`**: Stores details about the pets.
- **`vaccinations`**: Keeps track of the pets' vaccination history.

This project demonstrates basic SQL operations such as:

- Creating tables with primary and foreign key relationships.
- Inserting, updating, and deleting data.
- Querying data using various SQL clauses.
- Creating new tables and modifying schema.

## Database Structure

### Tables:

1. **owner**

   - `id` (INT) - Unique identifier for each owner (Primary Key)
   - `name` (VARCHAR) - Name of the owner
   - `phone` (VARCHAR) - Phone number of the owner (Unique)

2. **patients**

   - `id` (INT) - Unique identifier for each pet (Primary Key)
   - `name` (VARCHAR) - Name of the pet
   - `species` (VARCHAR) - Species of the pet
   - `breed` (VARCHAR) - Breed of the pet
   - `age` (INT) - Age of the pet
   - `weight_kg` (DECIMAL) - Weight of the pet in kilograms
   - `owner_id` (INT) - Reference to the owner (Foreign Key to `owner`)
   - `vaccinated` (VARCHAR) - The patient's vaccination status

3. **vaccinations**
   - `id` (INT) - Unique identifier for each vaccination record (Primary Key)
   - `patient_id` (INT) - Reference to the pet (Foreign Key to `patients`)
   - `vaccination_date` (DATE) - Date of vaccination
   - `vaccine_type` (VARCHAR) - Type of vaccine administered
