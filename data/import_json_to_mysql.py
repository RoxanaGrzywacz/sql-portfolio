import json
import mysql.connector

# Connect to the MySQL database
conn = mysql.connector.connect(
    host="localhost",
    user="name",  # Change to your username
    password="password",  # Change to your password
    database="dataBaseName"  # Change to your database name
)
cursor = conn.cursor()

# Load the JSON file
with open("vet_patients_data.json", "r", encoding="utf-8") as file:
    data = json.load(file)

# Dictionary to store owners (to avoid duplicates)
owners_dict = {}

# Insert owners and patients data
for pet in data:
    owner_name = pet["owner"]["name"]
    owner_phone = pet["owner"]["phone"]

     # Check if the owner already exists
    if (owner_name, owner_phone) not in owners_dict:
        cursor.execute("INSERT INTO owner (name, phone) VALUES (%s, %s)", (owner_name, owner_phone))
        owners_dict[(owner_name, owner_phone)] = cursor.lastrowid  # Get the ID of the new owner
    owner_id = owners_dict[(owner_name, owner_phone)]

    # Insert the pet data
    cursor.execute("""
        INSERT INTO patients (name, species, breed, age, weight_kg, owner_id)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (pet["name"], pet["species"], pet["breed"], pet["age"], pet["weight_kg"], owner_id))

# Commit the changes and close the connection
conn.commit()
cursor.close()
conn.close()

print("Import successful")
