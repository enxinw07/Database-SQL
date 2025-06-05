--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T3-tsa-dm.sql

--Student ID:
--Student Name:
--Unit Code:
--Applied Class No:

/* Comments for your marker:




*/

---**This command shows the outputs of triggers**---
---**Run the command before running the insert statements.**---
---**Do not remove**---
SET SERVEROUTPUT ON
---**end**---

--3(a)
DROP SEQUENCE booking_seq;
CREATE SEQUENCE booking_seq START WITH 100 INCREMENT BY 10;

--3(b)
INSERT INTO cabin VALUES (
    (
        SELECT
            resort_no
        FROM
            resort
        WHERE
            upper(resort_name) = upper('Awesome Resort')
            AND 
            (SELECT 
            town_id 
            FROM
            town
            where
            town_name = upper(Broome)) = town_id
    ),
    4,
    4,
    10,
    'I',
    220,
    'This cabin has 4 rooms and can sleeps 10 people with inside cabin bathroom'
);

COMMIT;
--3(c)
INSERT INTO booking VALUES (
    booking_seq.CURRVAL,
   ( 
        SELECT
            resort_no
        FROM
            cabin
        WHERE
            cabin_no = 4
    ),
    4,
    TO_DATE('26/05/2023', 'dd/mm/yyyy'),
    TO_DATE('28/05/2023', 'dd/mm/yyyy'),
    2,
    3,
    (
        SELECT
            cabin_points_cost_day
        FROM
            cabin
        WHERE
            cabin_no = 4
    )*3,
    ( 
        SELECT
            member_id
        FROM
            member
        WHERE
            upper(member_gname) = upper('Garrard')
            AND upper(member_fname) = upper('Noah')
            AND member_no = 2
            AND resort_id = 9
    ),
       ( 
        SELECT
            staff_id
        FROM
            staff
        WHERE
            upper(staff_gname) = upper('Wildman')
            AND upper(staff_fname) = upper('Reeba')
            AND staff_phone = '0493427245'
    )
);

COMMIT;
--3(d)
UPDATE booking
SET
    booking_to = TO_DATE('29/05/2023', 'dd/mm/yyyy')
WHERE
    booking_no = 5;

COMMIT;

--3(e)

DELETE FROM cabin
WHERE
    cabin_no = 4;

COMMIT;

DELETE FROM booking
WHERE
    cabin_no = 4;
    
COMMIT;