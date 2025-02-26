import json
import mysql.connector

# Połącz się z bazą danych MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="Roxana",  # Zmień na swoją nazwę użytkownika
    password="TMJFMR6@!h1",  # Zmień na swoje hasło
    database="VetDataBase"  # Zmień na nazwę swojej bazy danych
)
cursor = conn.cursor()

# Wczytaj plik JSON
with open("vet_patients_data.json", "r", encoding="utf-8") as file:
    data = json.load(file)

# Słownik do przechowywania właścicieli (aby uniknąć duplikatów)
owners_dict = {}

# Wstawianie danych właścicieli i pacjentów
for pet in data:
    owner_name = pet["owner"]["name"]
    owner_phone = pet["owner"]["phone"]

    # Sprawdzenie, czy właściciel już istnieje
    if (owner_name, owner_phone) not in owners_dict:
        cursor.execute("INSERT INTO owner (name, phone) VALUES (%s, %s)", (owner_name, owner_phone))
        owners_dict[(owner_name, owner_phone)] = cursor.lastrowid  # Pobranie ID nowego właściciela
    owner_id = owners_dict[(owner_name, owner_phone)]

    # Wstawienie pacjenta
    cursor.execute("""
        INSERT INTO patients (name, species, breed, age, weight_kg, owner_id)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (pet["name"], pet["species"], pet["breed"], pet["age"], pet["weight_kg"], owner_id))

# Zatwierdzenie zmian i zamknięcie połączenia
conn.commit()
cursor.close()
conn.close()

print("Import zakończony sukcesem!")
