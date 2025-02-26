
CREATE TABLE owner(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
phone VARCHAR(255) UNIQUE
);

CREATE TABLE patients(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
species VARCHAR(255),
breed VARCHAR(255),
age INT,
weight_kg DECIMAL(10,2),
owner_id INT,
FOREIGN KEY (owner_id) REFERENCES owner(id)
);

CREATE TABLE vaccinations(
id INT AUTO_INCREMENT PRIMARY KEY,
patient_id INT,
vaccination_date DATE,
vaccine_type VARCHAR(255),
FOREIGN KEY (patient_id) REFERENCES patients(id)
);