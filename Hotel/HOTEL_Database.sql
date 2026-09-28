CREATE DATABASE IF NOT EXISTS HOTEL_Database; -- Checks your server to see if a database named HOTEL_Database already exists. If it does not exist, it creates a new one.
USE HOTEL_Database;
-- as your active database so that any tables or queries you run next are applied directly inside it.
-- Tells the database to create a new table named HOTEL and opens a parenthesis to hold the definitions for all of its columns.
DROP TABLE IF EXISTS ROOM;
DROP TABLE IF EXISTS HOTEL;

CREATE TABLE HOTEL

-- Task 1
( -- Creates the no column as an integer (INT). It sets it as the PRIMARY KEY (making it the unique identifier for each row) and applies a CHECK constraint to restrict the allowed numbers strictly between 1 and 5.
    hotel_id INT NOT NULL,
    name    VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    constraint PK_HOTEL PRIMARY KEY (hotel_id),
    constraint CHK_HOTEL_NO CHECK (hotel_id BETWEEN 1 AND 5)
);

create table ROOM
(
    room_num INT NOT NULL,
    hotel_id INT NOT NULL,
    room_type char(1) NOT NULL,
    price decimal(6, 2) NOT NULL,
    constraint PK_ROOM PRIMARY KEY (room_num, hotel_id),
    constraint FK_ROOM_HOTEL FOREIGN KEY (hotel_id)
        REFERENCES HOTEL(hotel_id)
        on update cascade
        on delete restrict,
    CONSTRAINT chk_room_type CHECK (room_type IN ('D', 'F', 'S')),
    CONSTRAINT chk_price CHECK (price >= 0 AND price <= 9999.99)
);

--insert hotel data 
insert into HOTEL (hotel_id, name, address) values
(1, 'The Pope', 'Vatikangade 1, 1111 Bispeborg'),
(2, 'Lucky Star', 'Bredgade 12, 2222 Hometown'),
(3, 'Discount', 'Cheap Road 7, 3333 Lilleby'),
(4, 'deLuxe', 'Kapital Avenue 99, 4444 Borgerslev'),
(5, 'Discount', 'Billiggade 12, 6666 Roslev');

-- Verify hotel data
select * from HOTEL;

-- Insert room data
insert into ROOM (room_num, hotel_id, room_type, price) values
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

-- verify room data
select * from ROOM;