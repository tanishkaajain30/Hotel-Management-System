# Hotel Management System

## Project Overview
The Hotel Management System is a Python and MySQL-based project designed to manage hotel operations such as customer records, room management, bookings, payments, check-in/check-out, and hotel reports.

The project uses Python for application logic and MySQL for storing and managing data.

## Project Objectives
- Manage customer information.
- Add, update, search, and delete room details.
- Create and manage hotel bookings.
- Calculate bills and record payments.
- Handle customer check-in and check-out.
- Generate reports to analyze hotel operations.

## Technologies Used
- **Python 3**
- **MySQL**
- **MySQL Connector**
- **Jupyter Notebook**
- **MySQL Workbench**

## Database Design
The project uses a relational database named `Hotel_mgmt_system` with four tables:

| Table | Purpose |
|---|---|
| Customers | Stores customer information |
| Rooms | Stores room details and availability |
| Bookings | Stores booking and stay information |
| Payments | Stores payment details and status |

Primary keys and foreign keys are used to establish relationships between the tables.

## Project Modules
1. Customer Management
2. Room Management
3. Booking Management
4. Payment Management
5. Check-in / Check-out Management
6. Hotel Reports

## Key Features
- Customer registration and management.
- Room availability checking.
- Booking creation and cancellation.
- Prevention of overlapping active bookings.
- Bill calculation and payment recording.
- Check-in and check-out status updates.
- Revenue, occupancy, and booking reports.

## Project Files
- `Hotel_mgmt_system.ipynb` – Main Python implementation.
- `hotel_database.sql` – Database and table creation queries.

## How to Run
1. Install Python and MySQL.
2. Install the MySQL Connector package:
   `pip install mysql-connector-python`
3. Open MySQL Workbench and ensure your MySQL server is running.
4. Open `hotel_database.sql` in MySQL Workbench and execute it to create the database and tables.
5. Open `Hotel_mgmt_system.ipynb` in Jupyter Notebook.
6. Configure your MySQL connection credentials securely.
7. Run the notebook cells in order.
8. Execute the main menu to use the system.

## Learning Outcomes
- Practiced Python programming and function-based application development.
- Applied SQL queries and relational database concepts.
- Implemented primary keys, foreign keys, and table relationships.
- Used Python-MySQL connectivity to perform CRUD operations.
- Developed reporting queries using joins, aggregate functions, and grouping.

## Conclusion
This project demonstrates the integration of Python and MySQL to develop a basic Hotel Management System. It provides practical experience in database management, application development, and SQL-based reporting.
