--Task 0: Drop the table INSTRUCTOR from the database in case it already exists, so that we start from a clean state.--
drop table INSTRUCTOR;

-- Task 1: Create the INSTRUCTOR table as defined above. Have the ins_id be the primary --
--key, and ensure the lastname and firstname are not null.--

create table INSTRUCTOR (
	      ins_id integer PRIMARY KEY NOT NULL,
	      lastname varchar(15) NOT NULL,
	      firstname varchar(15) NOT NULL,
	      city varchar(15),
	      country char(2)
	      );

-- Task 2A: Insert one row into the INSTRUCTOR table for the the instructor Rav Ahuja.--

INSERT INTO INSTRUCTOR
	(ins_id, lastname, firstname, city, country)
VALUES
	(1, 'Ahuja', 'Rav','Toronto', 'CA');

-- Task 2B: Insert two rows at once in the INSTRUCTOR table for instructors Raul Chong --
-- and Hima Vasudevan.--

INSERT INTO INSTRUCTOR
	(ins_id, lastname, firstname, city, country)
VALUES
	(2, 'Chong', 'Raul','Toronto', 'CA'),
	(3, 'Vasudevan', 'Hima','Chicago', 'US');
	
-- Task 3: Select all rows from the INSTRUCTOR table.--
select * from INSTRUCTOR;

-- Task 3B: Select the firstname, lastname and country where the city is Toronto

select firstname, lastname, country from INSTRUCTOR where city='Toronto';

--Task 4: Update the row for Rav Ahuja and change his city to Markham.--

UPDATE INSTRUCTOR SET city='Markham' where	ins_id=1;

--Task 5: Delete the row for Raul Chong from the table.--

DELETE from INSTRUCTOR where ins_id=2;

--Task 5B: Retrieve all rows in the INSTRUCTOR table.--

select * from INSTRUCTOR


