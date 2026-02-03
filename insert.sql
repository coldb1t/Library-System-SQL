-- Clear existing data
DELETE FROM reservation;
DELETE FROM loan;
DELETE FROM book_copy;
DELETE FROM library_member;
DELETE FROM staff_member;
DELETE FROM library_branch;
DELETE FROM book;
DELETE FROM publisher;
DELETE FROM author;

-- Publishers
INSERT INTO publisher (publisher_id, name, year, address) VALUES
(1, 'Penguin Books', 1935, '123 Publishing Row, London'),
(2, 'Random House', 1927, '456 Book Avenue, New York'),
(3, 'HarperCollins', 1989, '789 Publisher Lane, Toronto'),
(4, 'Simon & Schuster', 1924, '321 Press Street, Chicago'),
(5, 'Hachette Book Group', 1837, '654 Editorial Road, Boston'),
(6, 'Macmillan Publishers', 1843, '777 Print Ave, London'),
(7, 'Scholastic', 1920, '888 Education Blvd, New York'),
(8, 'Pearson', 1844, '999 Learning Lane, London'),
(9, 'Oxford University Press', 1586, '111 Academic Way, Oxford'),
(10, 'Wiley', 1807, '222 Scientific Drive, New Jersey'),
(11, 'Cambridge University Press', 1534, '333 Scholar Road, Cambridge'),
(12, 'Bloomsbury', 1986, '444 Literary Path, London'),
(13, 'Dover Publications', 1941, '555 Classic Street, New York'),
(14, 'Vintage Books', 1954, '666 Retro Road, London'),
(15, 'Chronicle Books', 1967, '777 Art Avenue, San Francisco')
;

-- Authors
INSERT INTO author (author_id, name, surname, birth_date) VALUES
(1, 'John', 'Smith', '1970-03-15'),
(2, 'Maria', 'Garcia', '1985-07-22'),
(3, 'David', 'Johnson', '1965-11-30'),
(4, 'Sarah', 'Williams', '1978-09-08'),
(5, 'Michael', 'Brown', '1982-04-17'),
(6, 'Emily', 'Taylor', '1975-06-25'),
(7, 'James', 'Anderson', '1968-12-03'),
(8, 'Elizabeth', 'Martinez', '1990-02-14'),
(9, 'William', 'Thomas', '1972-08-19'),
(10, 'Jennifer', 'Wilson', '1988-05-27'),
(11, 'Robert', 'Jones', '1967-01-11'),
(12, 'Patricia', 'Moore', '1983-10-09'),
(13, 'Richard', 'Clark', '1971-04-23'),
(14, 'Linda', 'Rodriguez', '1986-07-16'),
(15, 'Joseph', 'Lee', '1979-11-05')
;

-- Library Branches
INSERT INTO library_branch (branch_id, name, address, date_founded) VALUES
(1, 'Central Library', '100 Main Street', '1950-01-01'),
(2, 'North Branch', '200 North Ave', '1975-03-15'),
(3, 'South Branch', '300 South Blvd', '1980-06-30'),
(4, 'East Branch', '400 East Road', '1995-09-22'),
(5, 'West Branch', '500 West Lane', '2000-12-10'),
(6, 'Downtown Branch', '600 Center St', '1960-05-20'),
(7, 'Riverside Branch', '700 River Road', '1985-08-15'),
(8, 'Highland Branch', '800 Hill Ave', '1990-03-25'),
(9, 'Valley Branch', '900 Valley Way', '1998-07-12'),
(10, 'Harbor Branch', '1000 Port Street', '2005-04-30'),
(11, 'University Branch', '1100 Campus Drive', '1970-09-01'),
(12, 'Children''s Library', '1200 Kids Way', '2010-06-15'),
(13, 'Technology Center', '1300 Tech Blvd', '2015-11-20'),
(14, 'Research Library', '1400 Science Park', '1965-02-28'),
(15, 'Arts Branch', '1500 Culture Ave', '1988-12-05')
;

-- Staff Members
INSERT INTO staff_member (staff_id, position, hire_date, branch_id, name, surname, phone_number, address, email, birth_date) VALUES
(1, 'Head Librarian', '2010-01-15', 1, 'Emma', 'Davis', '555-0101', '101 Staff St', 'emma.davis@library.com', '1980-05-20'),
(2, 'Librarian', '2015-03-22', 2, 'James', 'Wilson', '555-0102', '102 Staff St', 'james.wilson@library.com', '1985-08-15'),
(3, 'Assistant', '2018-06-10', 3, 'Lisa', 'Anderson', '555-0103', '103 Staff St', 'lisa.anderson@library.com', '1990-02-28'),
(4, 'Librarian', '2019-09-05', 4, 'Robert', 'Taylor', '555-0104', '104 Staff St', 'robert.taylor@library.com', '1988-11-12'),
(5, 'Assistant', '2020-12-01', 5, 'Patricia', 'Moore', '555-0105', '105 Staff St', 'patricia.moore@library.com', '1992-07-07'),
(6, 'Senior Librarian', '2012-04-15', 6, 'Thomas', 'Brown', '555-0106', '106 Staff St', 'thomas.brown@library.com', '1983-09-30'),
(7, 'IT Specialist', '2017-08-20', 7, 'Susan', 'Miller', '555-0107', '107 Staff St', 'susan.miller@library.com', '1989-03-25'),
(8, 'Librarian', '2016-11-30', 8, 'Michael', 'Clark', '555-0108', '108 Staff St', 'michael.clark@library.com', '1987-06-18'),
(9, 'Assistant', '2021-02-15', 9, 'Karen', 'White', '555-0109', '109 Staff St', 'karen.white@library.com', '1993-12-05'),
(10, 'Cataloger', '2019-05-10', 10, 'David', 'Lee', '555-0110', '110 Staff St', 'david.lee@library.com', '1986-04-22'),
(11, 'Reference Librarian', '2018-09-25', 11, 'Jennifer', 'Garcia', '555-0111', '111 Staff St', 'jennifer.garcia@library.com', '1984-08-14'),
(12, 'Children''s Librarian', '2020-03-12', 12, 'William', 'Martinez', '555-0112', '112 Staff St', 'william.martinez@library.com', '1991-01-30'),
(13, 'Digital Services', '2021-06-08', 13, 'Mary', 'Robinson', '555-0113', '113 Staff St', 'mary.robinson@library.com', '1988-10-17'),
(14, 'Research Librarian', '2017-12-20', 14, 'John', 'Walker', '555-0114', '114 Staff St', 'john.walker@library.com', '1982-05-09'),
(15, 'Art Librarian', '2019-11-15', 15, 'Elizabeth', 'King', '555-0115', '115 Staff St', 'elizabeth.king@library.com', '1990-07-28')
;

-- Books
INSERT INTO book (book_id, author_id, title, genre, publisher_id, year) VALUES
(1, 1, 'The Lost City', 'Fiction', 1, 2020),
(2, 2, 'Data Science Basics', 'Non-Fiction', 2, 2019),
(3, 3, 'History of Time', 'History', 3, 2018),
(4, 4, 'Modern Poetry', 'Poetry', 4, 2021),
(5, 5, 'Cooking Essentials', 'Cooking', 5, 2022),
(6, 6, 'Digital Age', 'Technology', 6, 2021),
(7, 7, 'Ancient Civilizations', 'History', 7, 2019),
(8, 8, 'History Of Art', 'History', 8, 2020),
(9, 9, 'Art History', 'Art', 9, 2018),
(10, 10, 'Medical Innovations', 'Medicine', 10, 2022),
(11, 11, 'World Economics', 'Economics', 11, 2021),
(12, 12, 'Children''s Stories', 'Children', 12, 2020),
(13, 13, 'Philosophy Today', 'Philosophy', 13, 2019),
(14, 14, 'Modern Architecture', 'Architecture', 14, 2021),
(15, 15, 'Environmental Science', 'Science', 15, 2022),
(16, 1, 'The Found Village', 'Fiction', 1, 2021)
;


-- Book Copies
INSERT INTO book_copy (copy_id, book_id, branch_id, status) VALUES
(1, 1, 1, 'Available'),
(2, 2, 2, 'On Loan'), --D17 -> On Loan
(3, 3, 3, 'On Loan'),
(4, 4, 4, 'Available'),
(5, 5, 5, 'On Loan'),
(6, 6, 6, 'Available'),
(7, 7, 7, 'On Loan'),
(8, 8, 8, 'Available'),
(9, 9, 9, 'On Loan'),
(10, 10, 10, 'Available'),
(11, 11, 11, 'On Loan'),
(12, 12, 12, 'Available'),
(13, 13, 13, 'Under Repair'),
(14, 14, 14, 'Available'),
(15, 15, 15, 'On Loan'),
(16, 16, 1, 'Available')
;

-- Library Members
INSERT INTO library_member (member_id, name, surname, phone_number, email, address, birth_date, date_start, loan_count_ok, loan_count_delayed) VALUES
(1, 'Alice', 'Johnson', '555-1001', 'alice.j@email.com', '201 Member Ave', '1990-04-25', '2019-01-10', 5, 0),
(2, 'Bob', 'Smith', '555-1002', 'bob.s@email.com', '202 Member Ave', '1985-08-15', '2019-02-15', 3, 1),
(3, 'Carol', 'Williams', '555-1003', 'carol.w@email.com', '203 Member Ave', '1995-12-30', '2019-03-20', 8, 0),
(4, 'Daniel', 'Brown', '555-1004', 'daniel.b@email.com', '204 Member Ave', '1988-06-18', '2019-04-25', 2, 2),
(5, 'Eve', 'Davis', '555-1005', 'eve.d@email.com', '205 Member Ave', '1992-09-22', '2019-05-30', 6, 1),
(6, 'Frank', 'Wilson', '555-1006', 'frank.w@email.com', '206 Member Ave', '1987-03-14', '2020-01-15', 4, 0),
(7, 'Grace', 'Martinez', '555-1007', 'grace.m@email.com', '207 Member Ave', '1993-07-08', '2020-02-20', 7, 1),
(8, 'Henry', 'Anderson', '555-1008', 'henry.a@email.com', '208 Member Ave', '1983-11-25', '2020-03-25', 5, 0),
(9, 'Isabel', 'Thomas', '555-1009', 'isabel.t@email.com', '209 Member Ave', '1991-05-12', '2020-04-30', 3, 2),
(10, 'Jack', 'Taylor', '555-1010', 'jack.t@email.com', '210 Member Ave', '1986-09-28', '2020-06-05', 9, 0),
(11, 'Kelly', 'Moore', '555-1011', 'kelly.m@email.com', '211 Member Ave', '1994-02-17', '2020-07-10', 4, 1),
(12, 'Liam', 'Clark', '555-1012', 'liam.c@email.com', '212 Member Ave', '1989-06-23', '2020-08-15', 6, 0),
(13, 'Mia', 'Rodriguez', '555-1013', 'mia.r@email.com', '213 Member Ave', '1996-10-09', '2020-09-20', 2, 3),
(14, 'Noah', 'Lee', '555-1014', 'noah.l@email.com', '214 Member Ave', '1984-12-31', '2020-10-25', 7, 1),
(15, 'Olivia', 'Garcia', '555-1015', 'olivia.g@email.com', '215 Member Ave', '1992-04-15', '2020-11-30', 5, 0)
;

-- Loans
INSERT INTO loan (loan_id, copy_id, branch_id, load_date, return_date, return_due, staff_id, member_id) VALUES
(1, 1, 1, '2023-01-15', NULL, '2023-02-15', 1, 1), -- Active loan 1
(2, 2, 2, '2023-02-01', NULL, '2023-03-01', 2, 2),
(3, 3, 3, '2023-03-15', '2023-03-30', '2023-04-15', 1, 3), --D8
(4, 4, 4, '2023-04-01', NULL, '2023-05-01', 4, 4),
(5, 5, 5, '2023-05-15', '2023-05-30', '2023-06-15', 3, 5),
(6, 6, 6, '2023-06-01', '2023-06-15', '2023-07-01', 6, 6),
(7, 7, 7, '2023-06-15', NULL, '2023-07-15', 7, 7),
(8, 8, 8, '2023-07-01', '2023-07-15', '2023-08-01', 8, 8),
(9, 9, 9, '2023-07-15', NULL, '2023-08-15', 9, 9),
(10, 10, 10, '2023-08-01', '2023-08-15', '2023-09-01', 10, 10),
(11, 11, 11, '2023-08-15', NULL, '2023-09-15', 11, 11),
(12, 12, 12, '2023-09-01', '2023-09-15', '2023-10-01', 12, 12),
(13, 13, 13, '2023-09-15', NULL, '2023-10-15', 13, 13),
(14, 14, 14, '2023-10-01', '2023-10-15', '2023-11-01', 14, 14),
(15, 15, 15, '2023-10-15', NULL, '2023-11-15', 1, 1) -- Active loan 2
; 

-- Reservations
INSERT INTO reservation (reservation_id, member_id, copy_id, date, staff_id) VALUES
(1, 1, 3, '2023-02-01', '1'),
(2, 2, 3, '2023-03-15', '2'),
(3, 2, 1, '2023-03-15', '2')
;