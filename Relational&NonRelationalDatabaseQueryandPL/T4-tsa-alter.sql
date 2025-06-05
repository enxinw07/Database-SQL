--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T4-tsa-alter.sql

--Student ID:
--Student Name:
--Unit Code:
--Applied Class No:

/* Comments for your marker:




*/

--4(a)
SELECT
    cabin_no,
    COUNT(cabin_no) AS total_no_bookings
FROM
    booking
GROUP BY
    cabin_no
ORDER BY
    total_no_bookings DESC,
    cabin_no;

--4(b)
-- add attribute to staff table
ALTER TABLE staff ADD (
    role_id CHAR(1) NOT NULL
);

COMMENT ON COLUMN staff.role_id IS
    'Staff role id';
    
--make new table role
CREATE TABLE role (
    role_id        CHAR(1) NOT NULL,
    role_name      CHAR(10) NOT NULL,
    role_desc      VARCHAR2(150) NOT NULL
);

COMMENT ON COLUMN role.role_id IS
    'role id';
    
COMMENT ON COLUMN role.role_name IS
    'role name';
    
COMMENT ON COLUMN role.role_desc IS
    'role description';
    
ALTER TABLE role ADD CONSTRAINT role_pk PRIMARY KEY ( role_id );

ALTER TABLE staff
    ADD CONSTRAINT staff_role_fk FOREIGN KEY ( role_id )
        REFERENCES role ( role_id );

INSERT INTO role VALUES(
    'A',
    'Admin',
    'Take bookings, and reply to customer inquiries'
);

INSERT INTO role VALUES(
    'C',
    'Cleaning',
    'Clean cabins and maintain resorts public area'
);

INSERT INTO role VALUES(
    'M',
    'Marketing',
    'Prepare and present marketing ideas and deliverables'
);

UPDATE staff
SET
    role_id = 'A';

--4(c)
--create table cleaning
CREATE TABLE cleaning(
    cabin_no        NUMBER(3) NOT NULL,
    cleaning_no     NUMBER(4) NOT NULL,    
    cleaning_date   DATE NOT NULL
);

COMMENT ON COLUMN cleaning.cabin_no IS 'Cabin cleaned';

COMMENT ON COLUMN cleaning.cleaning_no IS 'Cleaning Number';

COMMENT ON COLUMN cleaning.cleaning_date IS 'Cabin Date';

ALTER TABLE cleaning ADD CONSTRAINT cleaning_pk PRIMARY KEY ( cleaning_no );

-- Create table cleaning staff
CREATE TABLE cleaning_staff(
    staff_id        NUMBER(5) NOT NULL,
    cleaning_id     NUMBER(4) NOT NULL,
    cleaning_starttime TIME NOT NULL,
    cleaning_endtime TIME NOT NULL
);

COMMENT ON COLUMN cleaning_staff.staff_id IS 'Staff identifier';

COMMENT ON COLUMN cleaning_staff.cleaning_no IS 'cleaning number';

COMMENT ON COLUMN cleaning_staff.cleaning_starttime IS 'Cleaning satrt time';

COMMENT ON COLUMN cleaning_staff.cleaning_endtime IS 'Cleaning end time';

ALTER TABLE cleaning_staff
    ADD CONSTRAINT cleaning_staff_fk FOREIGN KEY ( cleaning_no )
        REFERENCES cleaning ( cleaning_no );
        
ALTER TABLE cleaning_staff
    ADD CONSTRAINT cleaning_staff_fk FOREIGN KEY ( role_id )
        REFERENCES staff ( staff_id );

