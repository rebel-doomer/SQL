CREATE DATABASE IF NOT EXISTS DB_Boghandel;
USE DB_Boghandel;

CREATE OR REPLACE TABLE Books
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    title  VARCHAR(512),
    author VARCHAR(512),
    genre  VARCHAR(128),
    price  DECIMAL(10, 2)
);

CREATE OR REPLACE TABLE Customers
(
    id               INT AUTO_INCREMENT PRIMARY KEY,
    name             VARCHAR(512),
    address          VARCHAR(512),
    telephone_number VARCHAR(128),
    purchased_books  INT
);

INSERT INTO Books
    (title, author, genre, price)
VALUES ('1984', 'George Orwell', 'Science Fiction', 120.99),
       ('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 100.99),
       ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 140.99),
       ('Call of Cthulhu', 'Howard P. Lovecraft', 'Science Fiction', 70.99),
       ('The Raven', 'Edgar Allan Poe', 'Horror', 70.99),
       ('Dagon', 'Howard P. Lovecraft', 'Science Fiction', 70.99),
       ('Penpal', 'Dathan Auerbach', 'Horror', 99.99),
       ('House of Leaves', 'Mark Z. Danielewski', 'Horror', 130.99),
       ('The Long Hard Road Out of Hell', 'Marilyn Manson', 'Autobiography', 115.99),
       ('The Book of the SubGenius', 'Ivan Stang', 'Satire', 125.99),
       ('The Beginning of the End', 'Oscar Kiss Maerth', 'Philosophy', 95.99),
       ('Jocko-Homo Heaven Bound', 'B. H. Shadduck', 'Philosophy', 85.99),
       ('My Struggle', 'Booji Boy', 'Art', 105.99),
       ('The Doctrine of Fascism', 'Benito Mussolini', 'History', 90.00),
       ('Mein Kampf', 'Adolf Hitler', 'History', 110.00),
       ('Dracula', 'Bram Stoker', 'Horror', 85.99),
       ('Holy Bible: New International Version', NULL, 'Religion', 50.00),
       ('Frankenstein', 'Mary Shelley', 'Horror', 75.00),
       ('The Strange Case of Dr. Jekyll and Mr. Hyde', 'Robert Louis Stevenson', 'Horror', 65.00),
       ('Ubuntu 14.04 LTS Desktop: Applications and Administration', 'Richard Petersen', 'Technology', 110.00),
       ('Pocket Git Guide', 'Scott Chacon', 'Technology', 80.00),
       ('Linux For Dummies', 'Richard Blum', 'Technology', 120.00),
       ('Free Software, Free Society', 'Richard Stallman', 'Technology', 90.00),
       ('C# 10.0 All-in-One For Dummies', 'John Paul Mueller', 'Technology', 130.00),
       ('Python Programming for Beginners', 'Jason Cannon', 'Technology', 95.00),
       ('Pterosaurs: Natural History, Evolution, Anatomy', 'Mark P. Witton', 'Science', 150.00),
       ('The Palaeoartist''s Handbook', 'Mark P. Witton', 'Science', 135.00),
       ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 95.00),

       -- Warrior Cats: Series 1 (The Prophecies Begin)
       ('Warriors #1: Into the Wild', 'Erin Hunter', 'Fantasy', 65.00),
       ('Warriors #2: Fire and Ice', 'Erin Hunter', 'Fantasy', 65.00),
       ('Warriors #3: Forest of Secrets', 'Erin Hunter', 'Fantasy', 65.00),
       ('Warriors #4: Rising Storm', 'Erin Hunter', 'Fantasy', 65.00),
       ('Warriors #5: A Dangerous Path', 'Erin Hunter', 'Fantasy', 65.00),
       ('Warriors #6: The Darkest Hour', 'Erin Hunter', 'Fantasy', 65.00),

       -- Warrior Cats: Key Super Editions
       ('Warriors: Firestar''s Quest', 'Erin Hunter', 'Fantasy', 95.00),
       ('Warriors: Bluestar''s Prophecy', 'Erin Hunter', 'Fantasy', 95.00),
       ('Warriors: Crookedstar''s Promise', 'Erin Hunter', 'Fantasy', 95.00),
       ('Warriors: Yellowfang''s Secret', 'Erin Hunter', 'Fantasy', 95.00),
       ('Warriors: Tallstar''s Revenge', 'Erin Hunter', 'Fantasy', 95.00),

       -- Warrior Cats: Novellas & Short Collections
       ('Warriors: Hollyleaf''s Story', 'Erin Hunter', 'Fantasy', 45.00),
       ('Warriors: Mistystar''s Omen', 'Erin Hunter', 'Fantasy', 45.00),
       ('Warriors: Cloudstar''s Journey', 'Erin Hunter', 'Fantasy', 45.00),
       ('Warriors: Tigerclaw''s Fury', 'Erin Hunter', 'Fantasy', 45.00),
       ('Warriors: Leafpool''s Wish', 'Erin Hunter', 'Fantasy', 45.00),
       ('Warriors: Dovewing''s Silence', 'Erin Hunter', 'Fantasy', 45.00),
       ('Warriors: Mapleshade''s Vengeance', 'Erin Hunter', 'Fantasy', 45.00),
       ('Warriors: Goosefeather''s Curse', 'Erin Hunter', 'Fantasy', 45.00),
       ('Warriors: Ravenpaw''s Farewell', 'Erin Hunter', 'Fantasy', 45.00);

UPDATE Books
SET price = 30.00
WHERE title = 'The Great Gatsby';

INSERT INTO Customers
    (name, address, telephone_number, purchased_books)
VALUES ('Simonas Petrauskas', 'Gedimino pr. 12, Vilnius, Lithuania', '37052123456', 3),
       ('Freja Jensen', 'Nørrebrogade 45, 2200 København N, Denmark', '4535301234', 1),
       ('Harry Mason', 'Elm Street 13, USA', '5550192834', 17),
       ('Silent Bob', 'Hell Street 12, USA', '5550192774', 1),
       ('James Sunderland', 'Silent Hill Street, USA', '5550192666', 10),
       ('Fox Mulder', '2630 Hadden Hall Dr, Apt 42, Arlington, VA, USA', '5550199311', 2),
       ('Dana Scully', '3170 W. 53rd St, Apt 35, Annapolis, MD, USA', '5550199312', 4),
       ('Agent Cooper', 'Great Northern Hotel, Rm 315, Twin Peaks, WA, USA', '5550199010', 5),
       ('Clarice Starling', 'FBI Academy, Quantico, VA, USA', '5550199100', 6),
       ('Thomas Anderson', '101 Adams St, Apt 139, Capital City, USA', '5550199911', 7),
       ('Buffy Summers', '1630 Revello Dr, Sunnydale, CA, USA', '5550199701', 8),
       ('Marty McFly', '9303 Lyon Dr, Hill Valley, CA, USA', '5550198510', 9),
       ('Ellen Ripley', 'Weyland-Yutani Corp HQ, Gateway Station, USA', '5550197908', 11),
       ('Sarah Connor', '120 North Los Angeles St, Los Angeles, CA, USA', '5550198400', 12),
       ('Gordon Freeman', 'Black Mesa Research Facility, Sector C, NM, USA', '5550199800', 13),
       ('Laura Palmer', '708 33rd St, Twin Peaks, WA, USA', '5550199011', 14),
       ('Giles Rupert', '1630 Revello Dr, Sunnydale, CA, USA', '5550199702', 15),
       ('Patrick Bateman', '55 W 81st St, Apt 11D, New York, NY, USA', '5550199111', 16);

SELECT title, author
FROM Books;

-- ============================================================================
-- PREVIOUS EXERCISES (STORED AS NOTES)
-- ============================================================================

-- Exercise 9: LEFT JOIN
-- SELECT Books.title AS title,
--        Books.price AS price,
--        Books.author AS author,
--        Customers.name AS customer_name
-- FROM Books
--          LEFT JOIN Customers ON Books.id = Customers.purchased_books;

-- Exercise 10: RIGHT JOIN
-- SELECT Books.title AS title,
--        Books.price AS price,
--        Books.author AS author,
--        Customers.name AS customer_name
-- FROM Books
--          RIGHT JOIN Customers ON Books.id = Customers.purchased_books;

-- ============================================================================
-- CURRENT EXERCISES
-- ============================================================================

-- Exercise 11: FULL JOIN (Standard ANSI syntax - commented out due to MySQL limitation)
-- SELECT Books.title AS title,
--        Books.price AS price,
--        Books.author AS author,
--        Customers.name AS customer_name
-- FROM Books
--          FULL JOIN Customers ON Books.id = Customers.purchased_books;

-- Exercise 12: FULL OUTER JOIN (Standard ANSI syntax - commented out due to MySQL limitation)
-- SELECT Books.title AS title,
--        Books.price AS price,
--        Books.author AS author,
--        Customers.name AS customer_name
-- FROM Books
--          FULL OUTER JOIN Customers ON Books.id = Customers.purchased_books;

-- Exercise 11 & 12 (MySQL / MariaDB Working FULL OUTER JOIN Simulation)
-- Combines LEFT JOIN and RIGHT JOIN with UNION to achieve a FULL OUTER JOIN
SELECT Books.title    AS title,
       Books.price    AS price,
       Books.author   AS author,
       Customers.name AS customer_name
FROM Books
         LEFT JOIN Customers ON Books.id = Customers.purchased_books

UNION

SELECT Books.title    AS title,
       Books.price    AS price,
       Books.author   AS author,
       Customers.name AS customer_name
FROM Books
         RIGHT JOIN Customers ON Books.id = Customers.purchased_books;

-- Exercise 13: INNER JOIN
-- Returns only rows where there is a match between Books and Customers
SELECT Books.title    AS title,
       Books.price    AS price,
       Books.author   AS author,
       Customers.name AS customer_name
FROM Books
         INNER JOIN Customers ON Books.id = Customers.purchased_books;