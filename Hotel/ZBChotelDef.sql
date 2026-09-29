-- Task 4 backup/rebuild script (keeps your original naming)
DROP DATABASE IF EXISTS HOTEL_Database;
CREATE DATABASE HOTEL_Database;
USE HOTEL_Database;

CREATE TABLE HOTEL
(
    hotel_id INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    CONSTRAINT PK_HOTEL PRIMARY KEY (hotel_id),
    CONSTRAINT CHK_HOTEL_NO CHECK (hotel_id BETWEEN 1 AND 5)
);

CREATE TABLE ROOM
(
    room_num INT NOT NULL,
    hotel_id INT NOT NULL,
    room_type CHAR(1) NOT NULL,
    price DECIMAL(6, 2) NOT NULL,
    CONSTRAINT PK_ROOM PRIMARY KEY (room_num, hotel_id),
    CONSTRAINT FK_ROOM_HOTEL FOREIGN KEY (hotel_id)
        REFERENCES HOTEL(hotel_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT CHK_ROOM_TYPE CHECK (room_type IN ('D', 'F', 'S')),
    CONSTRAINT CHK_PRICE CHECK (price >= 0 AND price <= 9999.99)
);

INSERT INTO HOTEL (hotel_id, name, address) VALUES
(1, 'The Pope', 'Vatikangade 1, 1111 Bispeborg'),
(2, 'Lucky Star', 'Bredgade 12, 2222 Hometown'),
(3, 'Discount', 'Cheap Road 7, 3333 Lilleby'),
(4, 'deLuxe', 'Kapital Avenue 99, 4444 Borgerslev'),
(5, 'Discount', 'Billiggade 12, 6666 Roslev');

INSERT INTO ROOM (room_num, hotel_id, room_type, price) VALUES
(1, 1, 'D', 200),
(2, 1, 'D', 200),
(11, 1, 'S', 150),
(21, 1, 'F', 220),
(1, 2, 'D', 230),
(2, 2, 'D', 230),
(11, 2, 'S', 180),
(21, 2, 'F', 300),
(1, 3, 'D', 175),
(2, 5, 'D', 170);

-- Verification queries
SELECT * FROM HOTEL;
SELECT * FROM ROOM;
