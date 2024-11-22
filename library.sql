-- Active: 1731863607241@@127.0.0.1@3306@library
CREATE DATABASE library;

USE library;

DROP TABLE IF EXISTS books;

DROP TABLE IF EXISTS members;

DROP Table IF EXISTS book_issues;

CREATE Table books (
    book_id int PRIMARY KEY,
    title VARCHAR(250) NOT NULL,
    author VARCHAR(50) NOT NULL,
    genre VARCHAR(50),
    price DECIMAL(10, 2) DEFAULT 500.00
);

CREATE Table members (
    member_id int PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE book_issues (
    issue_id int PRIMARY KEY,
    member_id int,
    book_id int,
    issued_date DATE,
    Foreign Key (member_id) REFERENCES members (member_id) on DELETE CASCADE,
    Foreign Key (book_id) REFERENCES books (book_id) on DELETE CASCADE
);

INSERT INTO
    books (
        book_id,
        title,
        author,
        genre,
        price
    )
VALUES (
        1,
        'To Kill a Mockingbird',
        'Harper Lee',
        'Fiction',
        350.00
    ),
    (
        2,
        '1984',
        'George Orwell',
        'Dystopian',
        400.00
    ),
    (
        3,
        'The Great Gatsby',
        'F. Scott Fitzgerald',
        'Classic',
        300.00
    ),
    (
        4,
        'Moby Dick',
        'Herman Melville',
        'Adventure',
        450.00
    ),
    (
        5,
        'Pride and Prejudice',
        'Jane Austen',
        'Romance',
        320.00
    ),
    (
        6,
        'The Catcher in the Rye',
        'J.D. Salinger',
        'Classic',
        280.00
    ),
    (
        7,
        'Brave New World',
        'Aldous Huxley',
        'Dystopian',
        380.00
    ),
    (
        8,
        'The Hobbit',
        'J.R.R. Tolkien',
        'Fantasy',
        420.00
    ),
    (
        9,
        'War and Peace',
        'Leo Tolstoy',
        'Historical Fiction',
        500.00
    ),
    (
        10,
        'Anna Karenina',
        'Leo Tolstoy',
        'Romance',
        450.00
    ),
    (
        11,
        'Crime and Punishment',
        'Fyodor Dostoevsky',
        'Philosophical Fiction',
        400.00
    ),
    (
        12,
        'The Alchemist',
        'Paulo Coelho',
        'Fiction',
        350.00
    ),
    (
        13,
        'The Kite Runner',
        'Khaled Hosseini',
        'Drama',
        360.00
    ),
    (
        14,
        'One Hundred Years of Solitude',
        'Gabriel García Márquez',
        'Magical Realism',
        390.00
    ),
    (
        15,
        'The Road',
        'Cormac McCarthy',
        'Post-Apocalyptic',
        310.00
    ),
    (
        16,
        'Life of Pi',
        'Yann Martel',
        'Adventure',
        330.00
    ),
    (
        17,
        'The Book Thief',
        'Markus Zusak',
        'Historical Fiction',
        370.00
    ),
    (
        18,
        'The Da Vinci Code',
        'Dan Brown',
        'Mystery',
        400.00
    ),
    (
        19,
        'Angels & Demons',
        'Dan Brown',
        'Thriller',
        380.00
    ),
    (
        20,
        'Harry Potter and the Sorcerer\'s Stone',
        'J.K. Rowling',
        'Fantasy',
        450.00
    ),
    (
        21,
        'Harry Potter and the Chamber of Secrets',
        'J.K. Rowling',
        'Fantasy',
        460.00
    ),
    (
        22,
        'The Hunger Games',
        'Suzanne Collins',
        'Dystopian',
        350.00
    ),
    (
        23,
        'Catching Fire',
        'Suzanne Collins',
        'Dystopian',
        360.00
    ),
    (
        24,
        'Mockingjay',
        'Suzanne Collins',
        'Dystopian',
        370.00
    ),
    (
        25,
        'Divergent',
        'Veronica Roth',
        'Dystopian',
        340.00
    ),
    (
        26,
        'The Fault in Our Stars',
        'John Green',
        'Romance',
        300.00
    ),
    (
        27,
        'Paper Towns',
        'John Green',
        'Mystery',
        290.00
    ),
    (
        28,
        'Looking for Alaska',
        'John Green',
        'Young Adult',
        310.00
    ),
    (
        29,
        'The Maze Runner',
        'James Dashner',
        'Science Fiction',
        380.00
    ),
    (
        30,
        'The Shining',
        'Stephen King',
        'Horror',
        410.00
    );

INSERT INTO
    members (member_id, name, email)
VALUES (
        1,
        'John Doe',
        'johndoe@example.com'
    ),
    (
        2,
        'Jane Smith',
        'janesmith@example.com'
    ),
    (
        3,
        'Robert Brown',
        'robertbrown@example.com'
    ),
    (
        4,
        'Emily Davis',
        'emilydavis@example.com'
    ),
    (
        5,
        'Michael Johnson',
        'michaeljohnson@example.com'
    ),
    (
        6,
        'Sarah Wilson',
        'sarahwilson@example.com'
    ),
    (
        7,
        'David Miller',
        'davidmiller@example.com'
    ),
    (
        8,
        'Linda Taylor',
        'lindataylor@example.com'
    ),
    (
        9,
        'James Anderson',
        'jamesanderson@example.com'
    ),
    (
        10,
        'Patricia Thomas',
        'patriciathomas@example.com'
    ),
    (
        11,
        'Christopher Lee',
        'christopherlee@example.com'
    ),
    (
        12,
        'Barbara Moore',
        'barbaramoore@example.com'
    ),
    (
        13,
        'Daniel Jackson',
        'danieljackson@example.com'
    ),
    (
        14,
        'Elizabeth Harris',
        'elizabethharris@example.com'
    ),
    (
        15,
        'Paul Clark',
        'paulclark@example.com'
    ),
    (
        16,
        'Jessica Lewis',
        'jessicalewis@example.com'
    ),
    (
        17,
        'Andrew Walker',
        'andrewwalker@example.com'
    ),
    (
        18,
        'Karen Young',
        'karenyoung@example.com'
    ),
    (
        19,
        'Joshua Allen',
        'joshuaallen@example.com'
    ),
    (
        20,
        'Nancy King',
        'nancyking@example.com'
    ),
    (
        21,
        'Ryan Scott',
        'ryanscott@example.com'
    ),
    (
        22,
        'Laura Wright',
        'laurawright@example.com'
    ),
    (
        23,
        'Kevin Green',
        'kevingreen@example.com'
    ),
    (
        24,
        'Ashley Adams',
        'ashleyadams@example.com'
    ),
    (
        25,
        'Brian Baker',
        'brianbaker@example.com'
    ),
    (
        26,
        'Samantha Hall',
        'samanthahall@example.com'
    ),
    (
        27,
        'Jason Phillips',
        'jasonphillips@example.com'
    ),
    (
        28,
        'Megan Carter',
        'megancarter@example.com'
    ),
    (
        29,
        'Steven Mitchell',
        'stevenmitchell@example.com'
    ),
    (
        30,
        'Angela Perez',
        'angelaperez@example.com'
    );

INSERT INTO
    book_issues (
        issue_id,
        member_id,
        book_id,
        issued_date
    )
VALUES (1, 1, 2, '2024-11-01'),
    (2, 2, 4, '2024-11-02'),
    (3, 3, 1, '2024-11-03'),
    (4, 4, 5, '2024-11-04'),
    (5, 5, 3, '2024-11-05'),
    (6, 6, 6, '2024-11-06'),
    (7, 7, 8, '2024-11-07'),
    (8, 8, 10, '2024-11-08'),
    (9, 9, 9, '2024-11-09'),
    (10, 10, 7, '2024-11-10'),
    (11, 11, 11, '2024-11-11'),
    (12, 12, 13, '2024-11-12'),
    (13, 13, 15, '2024-11-13'),
    (14, 14, 12, '2024-11-14'),
    (15, 15, 14, '2024-11-15'),
    (16, 16, 16, '2024-11-16'),
    (17, 17, 18, '2024-11-17'),
    (18, 18, 20, '2024-11-18'),
    (19, 19, 17, '2024-11-19'),
    (20, 20, 19, '2024-11-20'),
    (21, 21, 21, '2024-11-01'),
    (22, 22, 23, '2024-11-02'),
    (23, 23, 24, '2024-11-03'),
    (24, 24, 22, '2024-11-04'),
    (25, 25, 25, '2024-11-05'),
    (26, 26, 26, '2024-11-06'),
    (27, 27, 27, '2024-11-07'),
    (28, 28, 28, '2024-11-08'),
    (29, 29, 29, '2024-11-09'),
    (30, 30, 30, '2024-11-10');

-- showin the results of insert values:
SELECT * FROM book_issues;

SELECT * FROM members;

SELECT * FROM books;

DELETE FROM members WHERE member_id = 1;

UPDATE members SET name = 'sajid' WHERE member_id = 13;

UPDATE members
SET
    email = 'sajidahamedkhulna2000@gmail.com'
WHERE
    member_id = 13;

ALTER TABLE members ADD COLUMN age INT;

UPDATE members SET age = 24 WHERE member_id = 13;
-- updating the record
UPDATE books SET price = 870.00 WHERE book_id = 1;

UPDATE members
SET
    age = CASE
        WHEN member_id = 2 THEN 30
        WHEN member_id = 3 THEN 40
        WHEN member_id = 4 THEN 20
        WHEN member_id = 5 THEN 35
        WHEN member_id = 6 THEN 16
        WHEN member_id = 7 THEN 29
        WHEN member_id = 8 THEN 38
        WHEN member_id = 9 THEN 34
        WHEN member_id = 10 THEN 44
        WHEN member_id = 11 THEN 47
        WHEN member_id = 12 THEN 58
        WHEN member_id = 13 THEN 24
        WHEN member_id = 14 THEN 22
        WHEN member_id = 15 THEN 27
        WHEN member_id = 16 THEN 22
        WHEN member_id = 17 THEN 24
        WHEN member_id = 18 THEN 25
        WHEN member_id = 19 THEN 45
        WHEN member_id = 20 THEN 39
        WHEN member_id = 21 THEN 36
        WHEN member_id = 22 THEN 41
        WHEN member_id = 23 THEN 38
        WHEN member_id = 24 THEN 45
        WHEN member_id = 25 THEN 29
        WHEN member_id = 26 THEN 38
        WHEN member_id = 27 THEN 46
        WHEN member_id = 28 THEN 33
        WHEN member_id = 29 THEN 43
        WHEN member_id = 30 THEN 29
        ELSE age
    END;
-- using greater and less than operation
SELECT * FROM books WHERE price > 430;

SELECT * FROM book_issues WHERE member_id <= 11;
-- sum operation
SELECT SUM(price) AS total_price FROM books;

SELECT SUM(member_id) AS total_memberid FROM members;
-- Average price of books
SELECT AVG(price) AS average_price FROM books;
-- searching max min operation:
SELECT MAX(price) AS max_price FROM books;

SELECT MIN(price) AS min_price FROM books;
-- sorting ascending and descending
SELECT * FROM books ORDER BY price ASC;

SELECT * FROM book_issues ORDER BY member_id DESC;
-- searching for book with a specefic table
SELECT * FROM books WHERE book_id = 4;

SELECT email, age FROM members WHERE member_id = 13;
-- soritng memebers name from ascending order
SELECT * FROM members ORDER BY name ASC;
-- filterig email by specefic domain
SELECT * FROM members WHERE email LIKE 'janesmith@example.com';
-- sorting the issue_date using ascendig and descendig order
SELECT * FROM book_issues ORDER BY issued_date ASC;

SELECT * FROM book_issues ORDER BY issued_date DESC;

-- counitng the number of books from the count
SELECT COUNT(issued_date) AS books_count FROM book_issues;
-- searching books between range of price
SELECT * FROM books WHERE price BETWEEN 400 AND 650;
-- selecting distinct genre from books
SELECT DISTINCT genre FROM books;
-- distinct is a kind of word that actually eliminate the non repetitive values from the database

SELECT count(DISTINCT age) FROM members;
-- counting  the unique genre from the book tables
SELECT COUNT(DISTINCT genre) AS unique_genre FROM books;

SELECT count(DISTINCT age) AS unique_age FROM members;
-- finding the earliest and latest issued date
DESCRIBE book_issues;

SELECT MIN(issued_date) AS earliest_issue_date FROM book_issues;

SELECT MAX(issued_date) AS latest_issue_date FROM book_issues;
-- aggregating the total number of books issued
SELECT member_id, COUNT(issue_id) AS total_issued
FROM book_issues
GROUP BY
    member_id;

SELECT book_id, COUNT(issue_id) AS total_issued
FROM book_issues
GROUP BY
    issue_id;
-- selecting books from there price and sort them as ascending and descending order
SELECT * FROM books ORDER BY price ASC;

SELECT * FROM books ORDER BY price DESC;
-- counting the issued books for specefic member
SELECT COUNT(*) AS issue_count FROM book_issues WHERE member_id = 4;
-- Finding books with null genre
SELECT * FROM books WHERE genre is NULL;

-- Using case to conditional statments
-- ***  powerful use for to handel conditional case
SELECT
    book_id,
    title,
    author,
    price,
    CASE
        WHEN price <= 300 THEN 'affordable'
        WHEN price BETWEEN 320 AND 450  THEN 'Quite costly'
        ELSE 'Expensive'
    END as price_categorization
FROM books;