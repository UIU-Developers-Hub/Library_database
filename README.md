# Library_database
A database system for library. In here all basic MYSQL operation are implemented in a single file. Initially around 30 person data are handled in here 
Database Schema
Here is the schema for the database tables:

books

book_id (Primary Key)

title (NOT NULL)

author (NOT NULL)

genre

price (Default: 500.00)

members

member_id (Primary Key)

name (NOT NULL, UNIQUE)

email (NOT NULL, UNIQUE)

book_issues

issue_id (Primary Key)

member_id (Foreign Key referencing members(member_id) ON DELETE CASCADE)

book_id (Foreign Key referencing books(book_id) ON DELETE CASCADE)

issue_date
For any inquiries, please contact sajidahamedkhulna2000@gmail.com
