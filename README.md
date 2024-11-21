# Embedded SQL for PostgreSQL - Database Management Systems

This repository contains an embedded SQL utility designed to work with PostgreSQL JDBC drivers. It demonstrates the use of SQL queries in the context of a relational database for a hypothetical scenario involving suppliers, parts, and cataloging systems.

The project includes the following components:

- **SQL Scripts** for database creation and data loading
- **Java Code** for interacting with the PostgreSQL database via JDBC
- **Sample Data Files** for loading into the database

## Table of Contents

- [Database Schema](#database-schema)
- [SQL Queries](#sql-queries)
- [Java Embedded SQL Program](#java-embedded-sql-program)
- [Setup Instructions](#setup-instructions)
- [Usage Instructions](#usage-instructions)
- [File Structure](#file-structure)

## Database Schema

The following tables are created in the PostgreSQL database:

1. **student** - Information about students.
2. **faculty** - Information about faculty members.
3. **class** - Course offerings linked to faculty.
4. **enrolled** - Many-to-many relationship between students and courses.
5. **emp** - Employee information.
6. **dept** - Department information and related employees.
7. **works** - Employee department assignments.
8. **flights** - Flight details.
9. **aircraft** - Aircraft details.
10. **employees** - Employee details for aircraft certification.
11. **certified** - Certification of employees to operate aircraft.
12. **suppliers** - Supplier details.
13. **parts** - Part details.
14. **catalog** - Catalog linking suppliers and parts.
15. **sailors** - Sailor details for a hypothetical system.

## SQL Queries

The repository provides several predefined SQL queries for interacting with the database:

1. **Find parts with a cost lower than a specified value.**
2. **Find the total number of parts supplied by each supplier.**
3. **Find suppliers who supply at least 3 parts.**
4. **Find suppliers who supply only green parts.**
5. **Find the most expensive part for suppliers who supply both green and red parts.**
6. **Find parts with cost lower than a specified value.**
7. **Find the address of suppliers who supply a specified part.**

These queries are used to interact with the database and are embedded in the Java program.

## Java Embedded SQL Program

The Java program (`EmbeddedSQL.java`) connects to a PostgreSQL database and allows the user to execute SQL queries interactively. The program uses the PostgreSQL JDBC driver to perform the following tasks:

- Establish a connection to the database.
- Execute SQL queries and updates (e.g., `SELECT`, `INSERT`, `UPDATE`).
- Display query results in a formatted table.

### Example Queries in the Java Program

- Find the total number of parts supplied by each supplier.
- Find suppliers who supply only green parts.
- Find the most expensive part for suppliers who supply both green and red parts.

## Setup Instructions

To set up the project, follow these steps:

1. **Install PostgreSQL**: Ensure that PostgreSQL is installed on your machine and running.
2. **Create Database**: Use the provided `chapter5.sql` script to create the necessary tables and populate them with data.
   - Run the script in PostgreSQL:
     ```sql
     \i chapter5.sql
     ```
3. **Install JDBC Driver**: Ensure that the PostgreSQL JDBC driver (`pg73jdbc3.jar`) is available in your project classpath.
4. **Compile Java Program**: Navigate to the `lab6` directory and compile the Java program.
   ```bash
   javac EmbeddedSQL.java
