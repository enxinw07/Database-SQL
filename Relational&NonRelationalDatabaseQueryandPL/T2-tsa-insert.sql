/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-tsa-insert.sql

--Student ID: 31110363
--Student Name: Wong En Xin
--Unit Code: FIT3171
--Applied Class No: T6

/* Comments for your marker:




*/

---**This command shows the outputs of triggers**---
---**Run the command before running the insert statements.**---
---**Do not remove**---
SET SERVEROUTPUT ON
---**end**---

--------------------------------------
--INSERT INTO cabin
--------------------------------------
INSERT INTO cabin VALUES (
    1,
    1,
    2,
    5,
    'I',
    50,
    'This cabin has 2 rooms and can sleeps 5 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    1,
    2,
    3,
    6,
    'I',
    100,
    'This cabin has 3 rooms and can sleeps 6 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    2,
    3,
    1,
    2,
    'I',
    20,
    'This cabin has 1 rooms and can sleeps 2 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    2,
    4,
    4,
    10,
    'I',
    200,
    'This cabin has 4 rooms and can sleeps 10 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    3,
    5,
    5,
    8,
    'I',
    300,
    'This cabin has 5 rooms and can sleeps 8 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    3,
    6,
    2,
    3,
    'I',
    250,
    'This cabin has 2 rooms and can sleeps 3 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    3,
    7,
    8,
    20,
    'I',
    300,
    'This cabin has 8 rooms and can sleeps 20 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    4,
    8,
    3,
    7,
    'I',
    200,
    'This cabin has 3 rooms and can sleeps 7 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    4,
    9,
    5,
    5,
    'I',
    150,
    'This cabin has 5 rooms and can sleeps 5 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    5,
    10,
    3,
    5,
    'I',
    500,
    'This cabin has 3 rooms and can sleeps 5 people with inside cabin bathroom'
);

INSERT INTO cabin VALUES (
    5,
    11,
    2,
    7,
    'C',
    10,
    'This cabin has 2 rooms and can sleeps 7 people with outside common bathroom'
);

INSERT INTO cabin VALUES (
    6,
    12,
    2,
    12,
    'C',
    30,
    'This cabin has 2 rooms and can sleeps 12 people with outside common bathroom'
);

INSERT INTO cabin VALUES (
    6,
    13,
    4,
    5,
    'C',
    100,
    'This cabin has 4 rooms and can sleeps 5 people with outside common bathroom'
);

INSERT INTO cabin VALUES (
    7,
    14,
    6,
    12,
    'C',
    50,
    'This cabin has 6 rooms and can sleeps 12 people with outside common bathroom'
);

INSERT INTO cabin VALUES (
    7,
    15,
    2,
    7,
    'C',
    40,
    'This cabin has 2 rooms and can sleeps 7 people with outside common bathroom'
);

INSERT INTO cabin VALUES (
    8,
    16,
    5,
    12,
    'C',
    100,
    'This cabin has 5 rooms and can sleeps 12 people with outside common bathroom'
);

INSERT INTO cabin VALUES (
    8,
    17,
    6,
    12,
    'C',
    100,
    'This cabin has 6 rooms and can sleeps 12 people with outside common bathroom'
);

INSERT INTO cabin VALUES (
    9,
    18,
    3,
    5,
    'C',
    30,
    'This cabin has 3 rooms and can sleeps 5 people with outside common bathroom'
);

INSERT INTO cabin VALUES (
    9,
    19,
    5,
    5,
    'C',
    40,
    'This cabin has 5 rooms and can sleeps 5 people with outside common bathroom'
);

INSERT INTO cabin VALUES (
    10,
    20,
    8,
    10,
    'C',
    80,
    'This cabin has 8 rooms and can sleeps 10 people with outside common bathroom'
);

--------------------------------------
--INSERT INTO booking
/*
    booking_id              NUMBER(8) NOT NULL,
    resort_id               NUMBER(4) NOT NULL,
    cabin_no                NUMBER(3) NOT NULL,
    booking_from            DATE NOT NULL,
    booking_to              DATE NOT NULL,
    booking_noadults        NUMBER(2) NOT NULL,
    booking_nochildren      NUMBER(2) NOT NULL,
    booking_total_points_cost NUMBER(4) NOT NULL,
    member_id               NUMBER(6) NOT NULL,
    staff_id                NUMBER(5) NOT NULL
*/
--------------------------------------
INSERT INTO booking VALUES (
    1,
    1,
    1,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    150,
    1,
    1
);

INSERT INTO booking VALUES (
    2,
    1,
    2,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    2, 
    3,
    300,
    2,
    2
);

INSERT INTO booking VALUES (
    3,
    2,
    3,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    300,
    3,
    9
);

INSERT INTO booking VALUES (
    4,
    2,
    4,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    4,
    4,
    600,
    4,
    2
);

INSERT INTO booking VALUES (
    5,
    3,
    5,
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    TO_DATE('20/03/2023', 'dd/mm/yyyy'),
    2,
    4,
    900,
    5,
    7
);

INSERT INTO booking VALUES (
    6,
    3,
    6,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('17/03/2023', 'dd/mm/yyyy'),
    2,
    1, 
    500,
    6,
    2
);

INSERT INTO booking VALUES (
    7,
    3,  
    7,
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    TO_DATE('19/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    600,
    7,
    2
);

INSERT INTO booking VALUES (
    8,
    4, 
    8,
    TO_DATE('24/03/2023', 'dd/mm/yyyy'),
    TO_DATE('17/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    800,
    8,
    3
);

INSERT INTO booking VALUES (
    9,
    4, 
    9,
    TO_DATE('16/04/2023', 'dd/mm/yyyy'),
    TO_DATE('17/04/2023', 'dd/mm/yyyy'),
    2,
    3,
    300,
    9,
    7
);

INSERT INTO booking VALUES (
    10,
    5,
    10,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('17/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    1000,
    10,
    7
);

INSERT INTO booking VALUES (
    11,
    5,
    11,
    TO_DATE('15/03/2023', 'dd/mm/yyyy'),
    TO_DATE('29/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    150,
    11,
    8
);

INSERT INTO booking VALUES (
    12,
    6,
    12,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    6,
    5,
    90,
    13,
    4
);

INSERT INTO booking VALUES (
    13,
    6,
    13,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    300,
    14,
    5
);

INSERT INTO booking VALUES (
    14,
    7,
    14,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    2,
    4,
    150,
    15,
    3
);

INSERT INTO booking VALUES (
    15,
    7,
    15,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('18/03/2023', 'dd/mm/yyyy'),
    2,
    4,
    120,
    16,
    15
);

INSERT INTO booking VALUES (
    16,
    8,
    16,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('20/03/2023', 'dd/mm/yyyy'),
    8, 
    3,
    500,
    17,
    12
);

INSERT INTO booking VALUES (
    17,
    8,
    17,
    TO_DATE('02/03/2023', 'dd/mm/yyyy'),
    TO_DATE('04/03/2023', 'dd/mm/yyyy'),
    6,
    6,
    300,
    18,
    14
);

INSERT INTO booking VALUES (
    18,
    9,
    18,
    TO_DATE('16/03/2023', 'dd/mm/yyyy'),
    TO_DATE('25/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    300,
    19,
    14
);

INSERT INTO booking VALUES (
    19,
    1,
    1,
    TO_DATE('24/03/2023', 'dd/mm/yyyy'),
    TO_DATE('26/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    150,
    20,
    13
);

INSERT INTO booking VALUES (
    20,
    1,
    1,
    TO_DATE('19/03/2023', 'dd/mm/yyyy'),
    TO_DATE('21/03/2023', 'dd/mm/yyyy'),
    2,
    3,
    150,
    21,
    12
);