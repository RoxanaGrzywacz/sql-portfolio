# Project Setup Instructions

## Required Software

To run this project on your computer, you need to install the following software:

1. **MySQL Server**  
   Download **MySQL Community Server** from the official [MySQL website](https://dev.mysql.com/downloads/installer/).  
   Make sure you have both **MySQL Server** and **MySQL Workbench** installed.

2. **MySQL Workbench**  
   MySQL Workbench is a graphical tool that allows you to interact with MySQL databases. It can be downloaded from the same page as MySQL Server.

3. **Python 3.x**  
   Download and install Python from [python.org](https://www.python.org/downloads/).

4. **Visual Studio Code (or another code editor)**  
   **Visual Studio Code** is a popular code editor. You can download it from [Visual Studio Code](https://code.visualstudio.com/).

5. **Git**  
   Git is necessary for cloning the repository and working with versions. It can be downloaded from [Git](https://git-scm.com/downloads).

---

## Getting Started with the Project

1. **Clone the Repository**  
    Open **Git Bash** (or terminal) and clone the repository from GitHub:

   ```bash
   git clone https://github.com/RoxanaGrzywacz/sql-portfolio.git
   ```

    Then navigate to the project folder:
    ```bash
    cd /path/to/sql-portfolio
    ```
2. **Connect to the MySQL Server**
    Open MySQL Workbench and connect to your local MySQL server using your login (e.g., root) and password.
3. **Create the Database**

    In MySQL Workbench, run the following code to create a new database:
    ```sql
    CREATE DATABASE vet_data_base 
    CHARACTER SET utf8mb4 
    COLLATE utf8mb4_unicode_ci;
    ```

4. **Switch to the New Database**
    In MySQL Workbench, run the following code to switch to the newly created database:

    ```sql
    USE vet_data_base;
    ```

5. **Create Tables**
    To create tables in the database, follow these steps:

    - Click File → Open SQL Script in MySQL Workbench.
    - Select the file create_tables.sql, located in the project folder.
    - After the script loads, click the Execute button (the lightning icon) or press Ctrl + Enter.

6. **Import Data from the JSON File**
    To import data into the database from the JSON file, open Git Bash (or terminal) and run the following Python script:

    ```bash
    python import_json_to_mysql.py
    ```

    Make sure you have installed the required Python libraries (`mysql-connector-python`). If not, install them using the following command:

    ```bash
    pip install mysql-connector-python
    ```

7. **Test Operations in the Database**
    After importing the data, you can test various operations in the database, such as:

    - Adding new columns,
    - Creating SQL queries,
    - Running automation (e.g., updating vaccination status).
    - You can also run queries like:

        ```sql
        SELECT * FROM table;
        ```

    Or test adding new data.
