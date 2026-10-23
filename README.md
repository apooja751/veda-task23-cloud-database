# Task 23: Create Tables and Insert Data in a Cloud Database

## Overview
This project demonstrates how to create tables and insert sample data into a managed MySQL database hosted on Amazon Web Services (AWS) using Amazon RDS.

## Objectives
- Create and configure an AWS RDS MySQL database.
- Connect to the cloud database using the MySQL command-line client.
- Create tables with primary keys and appropriate data types.
- Insert sample records and verify them using SQL queries.

## Technologies Used
- Amazon Web Services (AWS)
- Amazon RDS for MySQL
- MySQL Community Server 8.0 client
- Windows PowerShell
- SQL

## AWS Configuration
- **DB Instance Identifier:** `veda-task23-mysql-db`
- **Database Name:** `task23db`
- **Database Engine:** MySQL
- **Instance Class:** `db.t3.micro`
- **AWS Region:** Asia Pacific (Mumbai) — `ap-south-1`
- **Port:** `3306`

## Database Tables

### 1. Students
|      Column    |   Data Type  |        Description              |
|----------------|--------------|---------------------------------|
| `student_id`   | INT          | Primary key with auto-increment |
| `student_name` | VARCHAR(100) | Student name                    |
| `email`        | VARCHAR(100) | Unique email address            |
| `course`       | VARCHAR(50)  | Course name                     |
| `marks`        | DECIMAL(5,2) | Student marks                   |

### 2. Courses
|       Column      |   Data Type   |         Description             |
|-------------------|---------------|---------------------------------|
| `course_id`       | INT           | Primary key with auto-increment |
| `course_name`     | VARCHAR(100)  | Course name                     |
| `duration_months` | INT           | Course duration                 |
| `course_fee`      | DECIMAL(10,2) | Course fee                      |

## Sample Data and Verification
The database was populated with fictional sample data.

- **Courses inserted:** 3
- **Students inserted:** 5
- **Total records:** 8

The data was verified using `SELECT` queries and record-count queries.

## SQL Script
The file [`task23_database.sql`](task23_database.sql) contains the SQL statements for selecting the database, creating both tables, inserting sample records, and verifying the results.

**Note:** The script is intended for a fresh database. Do not execute the table-creation and insertion statements again on a database that already contains these tables and records.

## Security Notes
- Database credentials are not included in this repository.
- MySQL access should be restricted to trusted IP addresses.
- Avoid publishing passwords, access keys, or other secrets.

## Result
Successfully created two tables, inserted sample records, and verified the data in an AWS RDS MySQL cloud database.


