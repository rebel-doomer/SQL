CREATE DATABASE IF NOT EXISTS HOTEL_Database; -- Checks your server to see if a database named HOTEL_Database already exists. If it does not exist, it creates a new one.
USE HOTEL_Database;
-- as your active database so that any tables or queries you run next are applied directly inside it.
-- Tells the database to create a new table named HOTEL and opens a parenthesis to hold the definitions for all of its columns.
CREATE TABLE HOTEL
(
    no      INT PRIMARY KEY CHECK (no BETWEEN 1 AND 5),
    name    VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL
);