DROP TABLE IF EXISTS author CASCADE;
DROP TABLE IF EXISTS book CASCADE;
DROP TABLE IF EXISTS book_copy CASCADE;
DROP TABLE IF EXISTS library_branch CASCADE;
DROP TABLE IF EXISTS library_member CASCADE;
DROP TABLE IF EXISTS loan CASCADE;
DROP TABLE IF EXISTS publisher CASCADE;
DROP TABLE IF EXISTS reservation CASCADE;
DROP TABLE IF EXISTS staff_member CASCADE;

CREATE TABLE author (
    author_id INTEGER NOT NULL,
    name VARCHAR(256) NOT NULL,
    surname VARCHAR(256) NOT NULL,
    birth_date DATE
);
ALTER TABLE author ADD CONSTRAINT pk_author PRIMARY KEY (author_id);

CREATE TABLE publisher (
    publisher_id INTEGER NOT NULL,
    name VARCHAR(256) NOT NULL,
    year INTEGER NOT NULL,
    address VARCHAR(256)
);
ALTER TABLE publisher ADD CONSTRAINT pk_publisher PRIMARY KEY (publisher_id);

CREATE TABLE library_branch (
    branch_id INTEGER NOT NULL,
    name VARCHAR(256) NOT NULL,
    address VARCHAR(256) NOT NULL,
    date_founded DATE NOT NULL
);
ALTER TABLE library_branch ADD CONSTRAINT pk_library_branch PRIMARY KEY (branch_id);

CREATE TABLE book (
    book_id INTEGER NOT NULL,
    author_id INTEGER NOT NULL,
    publisher_id INTEGER NOT NULL,
    title VARCHAR(256) NOT NULL,
    genre VARCHAR(128) NOT NULL,
    year INTEGER
);
ALTER TABLE book ADD CONSTRAINT pk_book PRIMARY KEY (book_id);
ALTER TABLE book ADD CONSTRAINT fk_book_author FOREIGN KEY (author_id) REFERENCES author (author_id) ON DELETE CASCADE;
ALTER TABLE book ADD CONSTRAINT fk_book_publisher FOREIGN KEY (publisher_id) REFERENCES publisher (publisher_id) ON DELETE CASCADE;

CREATE TABLE book_copy (
    copy_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    branch_id INTEGER NOT NULL,
    status VARCHAR(64) NOT NULL
);
ALTER TABLE book_copy ADD CONSTRAINT pk_book_copy PRIMARY KEY (copy_id);
ALTER TABLE book_copy ADD CONSTRAINT fk_book_copy_book FOREIGN KEY (book_id) REFERENCES book (book_id) ON DELETE CASCADE;
ALTER TABLE book_copy ADD CONSTRAINT fk_book_copy_branch FOREIGN KEY (branch_id) REFERENCES library_branch (branch_id) ON DELETE CASCADE;

CREATE TABLE library_member (
    member_id INTEGER NOT NULL,
    name VARCHAR(256) NOT NULL,
    surname VARCHAR(256) NOT NULL,
    phone_number VARCHAR(256),
    email VARCHAR(256) NOT NULL,
    address VARCHAR(256) NOT NULL,
    birth_date DATE NOT NULL,
    date_start DATE NOT NULL,
    loan_count_ok INTEGER NOT NULL,
    loan_count_delayed INTEGER NOT NULL
);
ALTER TABLE library_member ADD CONSTRAINT pk_library_member PRIMARY KEY (member_id);

CREATE TABLE staff_member (
    staff_id INTEGER NOT NULL,
    branch_id INTEGER NOT NULL,
    position VARCHAR(256) NOT NULL,
    hire_date DATE NOT NULL,
    name VARCHAR(256) NOT NULL,
    surname VARCHAR(256) NOT NULL,
    phone_number VARCHAR(256),
    address VARCHAR(256) NOT NULL,
    email VARCHAR(256) NOT NULL,
    birth_date DATE NOT NULL
);
ALTER TABLE staff_member ADD CONSTRAINT pk_staff_member PRIMARY KEY (staff_id);
ALTER TABLE staff_member ADD CONSTRAINT fk_staff_member_branch FOREIGN KEY (branch_id) REFERENCES library_branch (branch_id) ON DELETE CASCADE;

CREATE TABLE loan (
    loan_id INTEGER NOT NULL,
    member_id INTEGER NOT NULL,
    copy_id INTEGER NOT NULL,
    branch_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    load_date DATE NOT NULL,
    return_date DATE,
    return_due DATE NOT NULL
);
ALTER TABLE loan ADD CONSTRAINT pk_loan PRIMARY KEY (loan_id);
ALTER TABLE loan ADD CONSTRAINT fk_loan_member FOREIGN KEY (member_id) REFERENCES library_member (member_id) ON DELETE CASCADE;
ALTER TABLE loan ADD CONSTRAINT fk_loan_copy FOREIGN KEY (copy_id) REFERENCES book_copy (copy_id) ON DELETE CASCADE;
ALTER TABLE loan ADD CONSTRAINT fk_loan_branch FOREIGN KEY (branch_id) REFERENCES library_branch (branch_id) ON DELETE CASCADE;
ALTER TABLE loan ADD CONSTRAINT fk_loan_staff FOREIGN KEY (staff_id) REFERENCES staff_member (staff_id) ON DELETE CASCADE;

CREATE TABLE reservation (
    reservation_id INTEGER NOT NULL,
    copy_id INTEGER NOT NULL,
    member_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    date DATE NOT NULL
);
ALTER TABLE reservation ADD CONSTRAINT pk_reservation PRIMARY KEY (reservation_id);
ALTER TABLE reservation ADD CONSTRAINT fk_reservation_copy FOREIGN KEY (copy_id) REFERENCES book_copy (copy_id) ON DELETE CASCADE;
ALTER TABLE reservation ADD CONSTRAINT fk_reservation_member FOREIGN KEY (member_id) REFERENCES library_member (member_id) ON DELETE CASCADE;
ALTER TABLE reservation ADD CONSTRAINT fk_reservation_staff FOREIGN KEY (staff_id) REFERENCES staff_member (staff_id) ON DELETE CASCADE;