CREATE DATABASE LibraryDB;
USE LibraryDB;


CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    published_year INT
);

CREATE TABLE Borrowers (
    borrower_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(20)
);

CREATE TABLE BorrowedBooks (
    borrowed_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    borrower_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (borrower_id) REFERENCES Borrowers(borrower_id)
);

SELECT * FROM Books;
SELECT * FROM BorrowedBooks;


-- Insert sample books
INSERT INTO Books (title, author, genre, published_year) VALUES
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960),
('1984', 'George Orwell', 'Dystopian', 1949),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925);

-- Insert sample borrowers
INSERT INTO Borrowers (name, email, phone_number) VALUES
('Alice Johnson', 'alice@gmail.com', '123-456-7890'),
('Bob Smith', 'bob@gmail.com', '987-654-3210');

-- Insert sample borrowed books
INSERT INTO BorrowedBooks (book_id, borrower_id, borrow_date, return_date) VALUES
(1, 1, '2025-04-01', NULL),
(2, 2, '2025-04-02', NULL);


SELECT * FROM Books;


SELECT * FROM Borrowers;


SELECT bb.borrowed_id, b.title, br.name, bb.borrow_date, bb.return_date
FROM BorrowedBooks bb
JOIN Books b ON bb.book_id = b.book_id
JOIN Borrowers br ON bb.borrower_id = br.borrower_id;


UPDATE BorrowedBooks
SET return_date = '2025-04-15'
WHERE borrowed_id = 1;


SELECT * FROM BorrowedBooks
WHERE borrower_id = 1 AND return_date IS NULL;


DELETE FROM Borrowers
WHERE borrower_id = 1;

DELETE FROM Borrowers
WHERE borrower_id = 1
AND NOT EXISTS (
    SELECT 1 FROM BorrowedBooks
    WHERE borrower_id = 1 AND return_date IS NULL
);
