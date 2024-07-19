-- One to One

-- membuat db
CREATE DATABASE onetoone;
-- membuat table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50)
);

CREATE TABLE UserProfiles (
    profile_id INT PRIMARY KEY,
    user_id INT,
    bio TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
-- input data
INSERT INTO Users (user_id, username) VALUES (1, 'john_doe'), (2, 'jane_smith');

INSERT INTO UserProfiles (profile_id, user_id, bio) VALUES (2, 2, 'Bio of Alice Wonderland');

-- memunculkan data
SELECT * FROM users;

SELECT * FROM userprofiles;
-- memunculkan data spesifik
SELECT * FROM users WHERE user_id =1;

SELECT * FROM userprofiles WHERE profile_id =2;
-- update data
UPDATE Users SET username = 'johnny' WHERE user_id = 1;

UPDATE userprofiles SET bio = 'Bio of Wonderland' WHERE profile_id = 2;
-- delete data
DELETE FROM UserProfiles WHERE user_id = 2;

DELETE FROM Users WHERE user_id = 2;


-- One To Many

-- membuat database
CREATE DATABASE onetomany;
-- membuat table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
-- input data
INSERT INTO Authors (author_id, name) VALUES (1, 'George Orwell'), (2, 'J.K. Rowling');

INSERT INTO Books (book_id, title, author_id) VALUES 
(1, '1984', 1),
(2, 'Animal Farm', 1),
(3, 'Harry Potter', 2),
(4, 'Fantastic Beasts', 2);
-- memunculkan data
SELECT * FROM authors;

SELECT * FROM books;
-- memunculkan data spesifik
SELECT * FROM authors WHERE author_id=1;

SELECT * FROM books WHERE author_id=2;
-- update data
UPDATE Authors SET name = 'Joanne Rowling' WHERE author_id = 2;

UPDATE Books SET title = 'Harry Potter the Philosopher\'s Stone' WHERE book_id = 3;
-- delete data
DELETE FROM Books WHERE book_id = 4;

DELETE FROM authors WHERE author_id = 2;