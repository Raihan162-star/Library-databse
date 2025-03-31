CREATE DATABASE LibraryDB;

USE LibraryDB;


-- This sql statment deletes the database at any given moment

DROP DATABASE LibraryDB;



SELECT DATABASE();

-- Creation of the table that holds data of the books
CREATE TABLE tbl_BooksDB(
Book_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(60) NOT NULL,
Author VARCHAR(60) NOT NULL,
Genre VARCHAR(60) NOT NULL,
Published_year VARCHAR(60) NOT NULL


)

SHOW TABLES;

-- This shows the structure of the table
DESC tbl_BooksDB;

-- Using Alter tables and the unique contraint so that there arent any duplicate data
ALTER TABLE tbl_BooksDB
ADD CONSTRAINT unique_book_combo
UNIQUE (Title, Author, Genre, Published_year);


ALTER TABLE borrowers
ADD CONSTRAINT unique_book_combo
UNIQUE (Borrower,Email,Telephone);

ALTER TABLE tbl_BooksDB AUTO_INCREMENT = 1;
ALTER TABLE Borrowers AUTO_INCREMENT = 1;

-- insertation of data onto the table
INSERT INTO tbl_BooksDB(Title,Author,Genre,Published_year  )
VALUES('The Lord of the rings','J. R. R. Tolkien','high fantasy', '1954');
INSERT INTO tbl_BooksDB(Title,Author,Genre,Published_year)
VALUES('The Great Gatsby','F.Scott Fitzgerald','Tragedy','1925');
INSERT INTO tbl_BooksDB(Title,Author,Genre,Published_year)
VALUES('To Kill a MockingBird','Harper Lee','Southern Gothic','1960');
INSERT INTO tbl_BooksDB(Title,Author,Genre,Published_year)
VALUES('An Inspector calls','J.B Priestley','Drama','1945');
INSERT INTO tbl_BooksDB(Title,Author,Genre,Published_year)
VALUES('Frankenstein','Mary Shelly','Gothic','1818');


-- This delete statment can delete specific data from the data by using the primary key 
DELETE FROM tbl_BooksDB WHERE Book_ID = 2;

-- This command shows the data that gets inserted into the table
SELECT * FROM tbl_BooksDB;

-- these set of update statments allow data to be updated at any given moment
UPDATE tbl_BooksDB
SET Title = '', Author = '', Genre = '', Published_year = ''
WHERE Book_id = 1;


UPDATE tbl_BooksDB
SET Title = '', Author = '', Genre = '', Published_year = ''
WHERE Book_id = 2;

UPDATE tbl_BooksDB
SET Title = '', Author = '', Genre = '', Published_year = ''
WHERE Book_id = 3;



UPDATE tbl_BooksDB
SET Title = '', Author = '', Genre = '', Published_year = ''
WHERE Book_id = 4;



UPDATE tbl_BooksDB
SET Title = '', Author = '', Genre = '', Published_year = ''
WHERE Book_id = 5;


-- A table for the people who borrowed books

CREATE TABLE Borrowers(
BorrowerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Borrower VARCHAR(80) NOT NULL,
Email VARCHAR(80) NOT NULL,
Telephone VARCHAR(80) NOT NULL

)

DESC borrowers

EXPLAIN Borrowers;


INSERT INTO borrowers  (Borrower,Email,Telephone)
VALUES('William Kingdon Clifford', 'WilliamKingdomClifford@gmail.com', '07403539846')


INSERT INTO borrowers  (Borrower,Email,Telephone)
VALUES('James Watt', 'JamesWatt@gmail.com', '07556915612')


INSERT INTO borrowers  (Borrower,Email,Telephone)
VALUES('Karl Pearson', 'KarlPearson@gmail.com', '07449483233')


INSERT INTO borrowers  (Borrower,Email,Telephone)
VALUES('Charles Spearman', 'CharlesSpearman@gmail.com', '7407059209')


INSERT INTO borrowers  (Borrower,Email,Telephone)
VALUES('Francis Galton', 'FrancisGlaton@gmail.com', '7401338216')


INSERT INTO borrowers  (Borrower,Email,Telephone)
VALUES('Isaac Todhunter', 'IsaacTodhunter@gmail.com', '7406171775')


INSERT INTO borrowers  (Borrower,Email,Telephone)
VALUES('Wilhelm Maximilian Wundt', 'WilhelmMaximilianWundt@gmail.com', '7402254465')


SELECT * FROM borrowers;

DELETE FROM borrowers WHERE BorrowerID = 3

TRUNCATE borrowers