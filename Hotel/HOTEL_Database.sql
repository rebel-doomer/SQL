CREATE DATABASE IF NOT EXISTS HOTEL_Database; -- Checks your server to see if a database named HOTEL_Database already exists. If it does not exist, it creates a new one.
USE HOTEL_Database;
-- as your active database so that any tables or queries you run next are applied directly inside it.
-- Tells the database to create a new table named HOTEL and opens a parenthesis to hold the definitions for all of its columns.
CREATE TABLE HOTEL
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
    constraint FK_ROOM_HOTEL FOREIGN KEY (hotel_id) REFERENCES HOTEL(hotel_id)
    references HOTEL(hotel_id)
    on update cascade
    on delete restrict,
     CONSTRAINT chk_room_type CHECK (room_type IN ('D', 'F', 'S')),
    CONSTRAINT chk_price CHECK (price >= 0 AND price <= 9999.99)
);