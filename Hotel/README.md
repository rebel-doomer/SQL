# CBZ Hotels Database Assignment

> Remember to gather all the solutions on the tasks, as they will later be handed over.

In the following tasks, construct a small database for simple administration of a hotel chain hotels, customers and
reservations. We start small and expand gradually. Since the result should be better and better you will come out to
delete it previous work and replace it with more advanced work!

The hotel chain **CBZ Hotels** owns 5 hotels and will initially have a database to keep track of data for the individual
hotels. Two tables are therefore requested:

* **HOTEL-Databasen**: Must contain information about the individual hotels in the chain. A hotel is identified by a
  unique number (an integer: 1-5), a name (maximum 30 characters) and an address (maximum 50 characters).
* **Room**: Must contain information about the total amount of rooms the chain's hotels have at its disposal. A room is
  identified by a number (an integer) that is unique within each hotel, a room type ('D' for double room, 'F' for family
  room and 'S' for single room), and price for an overnight stay (decimal count between 0 and 9999).

---

## Task 1: Analysis and Design

- [x] **List Attributes and Domains**: Create a list of the attributes for each table as you should define domains for
  each attribute (why?). Carefully consider each attribute's domain.
- [x] **Database Design & Keys**: Determine candidate keys and primary key for each table and make a Database design
  (Visio or MySQL Workbench).
- [x] **Nullability and Defaults**: Consider carefully for each attribute whether it may assume the value of `NULL` and
  whether there is an obvious default value.
- [x] **Relationships**: Consider how the connection is created between the two tables — i.e., where should there be a
  foreign key and what primary key (or candidate key) should it refer to.

---

## Task 2: Creation in MySQL Workbench

- [x] **Create Database**: Use MySQL Workbench to form the database named `CBZhotels`.
  (See [Guru99 Introduction to MySQL Workbench](https://www.guru99.com/introduction-to-mysql-workbench.html)).
- [x] **Define Schema**: Define the Data domains, tables, and keys you compiled in Task 1.

---

## Task 3: Data Insertion and Verification

- [ ] **Insert Hotel Data**: Insert the following data in the `HOTEL` table:
    - `1` | `The Pope` | `Vatikangade 1, 1111 Bispeborg`
    - `2` | `Lucky Star` | `Bredgade 12, 2222 Hometown`
    - `3` | `Discount` | `Cheap Road 7, 3333 Lilleby`
    - `4` | `deLuxe` | `Kapital Avenue 99, 4444 Borgerslev`
    - `5` | `Discount` | `Billiggade 12, 6666 Roslev`
- [ ] **Verify Hotels**: Use `SELECT * FROM HOTEL` to view all data from the table.
- [ ] **Insert Room Data**: Insert the following data in the `RUM` table:
    - `1` | `"The Pope" in Bispeborg` | `D` | `200`
    - `2` | `"The Pope" in Bispeborg` | `D` | `200`
    - `11` | `"The Pope" in Bispeborg` | `S` | `150`
    - `21` | `"The Pope" in Bispeborg` | `F` | `220`
    - `1` | `"Lucky Star" in Homeby` | `D` | `230`
    - `2` | `"Lucky Star" in Hometown` | `D` | `230`
    - `11` | `"Lucky Star" in Hometown` | `S` | `180`
    - `21` | `"Lucky Star" in Hometown` | `F` | `300`
    - `1` | `"Discount" in Lilleby` | `D` | `175`
    - `2` | `"Discount" in Roslev` | `D` | `170`
- [ ] **Verify Rooms**: Use `SELECT * FROM RUM` to view all data from the table.

---

## Task 4: Scripting and Backup

As it turns out that some changes are needed, it is decided that the definition of the database should be executed via a
script. It will thus be easier to make changes and then carry out the whole definition of anew.

- [ ] **Backup Database**: Back up the database you have defined to the script `ZBChotelDef.sql`.
- [ ] **Test Backup**: Test that your backup works — by dropping your database and using your backup to put data back
  in.

### Credits

Jesse, Oliver Benjamin