-- https://www.programiz.com/sql/online-compiler/
DROP TABLE Customers;

DROP TABLE Orders;

DROP TABLE Shippings;

CREATE TABLE MEMBER(
    MEMBER_ID NUMBER(5) PRIMARY KEY,
    MEMBER_NAME VARCHAR2(30) NOT NULL,
    MEMBER_ADDRESS VARCHAR2(50),
    ACC_OPEN_DATE DATE,
    MEMBERSHIP_TYPE VARCHAR2(20),
    FEES_PAID NUMBER(4),
    MAX_BOOKS_ALLOWED NUMBER(2),
    PENALTY_AMOUNT NUMBER(7, 2),
    CONSTRAINT MBR_ADDR_CHK CHECK(
        MEMBERSHIP_TYPE IN (
            'LIFETIME',
            'ANNUAL',
            'HALF YEARLY',
            'QUARTERLY'
        )
    ),
    CONSTRAINT MAX_BOOK_CHK CHECK(MAX_BOOKS_ALLOWED < 7),
    CONSTRAINT PNLTY_AMT_CHK CHECK(PENALTY_AMOUNT <= 1000)
);

CREATE TABLE BOOKS(
    BOOK_NO NUMBER(6) PRIMARY KEY,
    BOOK_NAME VARCHAR2(30) NOT NULL,
    AUTHOR_NAME VARCHAR2(30),
    COST NUMBER(7, 2),
    CATEGORY CHAR(10),
    CONSTRAINT CHK_CATEGORY CHECK(
        CATEGORY IN ('SCIENCE', 'DATABASE', 'SYSTEM', 'OTHERS')
    )
);

CREATE TABLE ISSUE(
    LIB_ISSUE_ID NUMBER(10) PRIMARY KEY,
    BOOK_NO NUMBER(6) REFERENCES BOOKS(BOOK_NO),
    MEMBER_ID NUMBER(5) REFERENCES MEMBER(MEMBER_ID),
    ISSUE_DATE DATE,
    RETURN_DATE DATE
);

INSERT INTO
    MEMBER
VALUES
    (
        1,
        'Sayantan Sinha',
        'Pune',
        '10-Dec-10',
        'LIFETIME',
        2000,
        6,
        50
    );

INSERT INTO
    MEMBER
VALUES
    (
        2,
        'Abhirup Sarkar',
        'Kolkata',
        '19-jan-11',
        'ANNUAL',
        1400,
        3,
        0
    );

INSERT INTO
    MEMBER
VALUES
    (
        3,
        'Ritesh Bhuniya',
        'Gujarat',
        '20-feb-11',
        'QUARTERLY',
        350,
        2,
        100
    );

INSERT INTO
    MEMBER
VALUES
    (
        4,
        'Paresh sen',
        'Tripura',
        '21-mar-11',
        'HALF YEARLY',
        700,
        1,
        200
    );

INSERT INTO
    MEMBER
VALUES
    (
        5,
        'Sohini Haldar',
        'Birbhum',
        '11-apr-11',
        'LIFETIME',
        2000,
        6,
        10
    );

INSERT INTO
    MEMBER
VALUES
    (
        6,
        'Suparna Biswas',
        'Kolkata',
        '12-apr-11',
        'HALF YEARLY',
        700,
        1,
        0
    );

INSERT INTO
    MEMBER
VALUES
    (
        7,
        'Suranjana Basu',
        'Purulia',
        '30-june-11',
        'ANNUAL',
        1400,
        3,
        50
    );

INSERT INTO
    MEMBER
VALUES
    (
        8,
        'Arpita Roy',
        'Kolkata',
        '31-july-11',
        'HALF YEARLY',
        700,
        1,
        0
    );

INSERT INTO
    BOOKS
VALUES
    (101, 'Let us C', 'Denis Ritchie', 450, 'OTHERS');

INSERT INTO
    BOOKS
VALUES
    (
        102,
        'Oracle - Complete Ref',
        'Loni',
        550,
        'DATABASE'
    );

INSERT INTO
    BOOKS
VALUES
    (103, 'Visual Basic 10', 'BPB', 700, 'OTHERS');

INSERT INTO
    BOOKS
VALUES
    (104, 'Mastering SQL', 'Loni', 450, 'DATABASE');

INSERT INTO
    BOOKS
VALUES
    (
        105,
        'PL SQL-Ref Scott',
        'Urman',
        750,
        'DATABASE'
    );

INSERT INTO
    BOOKS
VALUES
    (106, 'UNIX', 'Sumitava Das', 300, 'SYSTEM');

INSERT INTO
    BOOKS
VALUES
    (107, 'Optics', 'Ghatak', 600, 'SCIENCE');

INSERT INTO
    BOOKS
VALUES
    (
        108,
        'Data Structure',
        'G.S. Baluja',
        350,
        'OTHERS'
    );

INSERT INTO
    ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE)
VALUES
    (7001, 101, 1, '10-jan-11');

INSERT INTO
    ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE)
VALUES
    (7002, 102, 2, '25-jan-11');

INSERT INTO
    ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE)
VALUES
    (7003, 104, 1, '1-Feb-11');

INSERT INTO
    ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE)
VALUES
    (7004, 104, 2, '15-Mar-11');

INSERT INTO
    ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE)
VALUES
    (005, 101, 4, '04-Apr-11');

INSERT INTO
    ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE)
VALUES
    (7006, 108, 5, '12-apr-11');

INSERT INTO
    ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE)
VALUES
    (7007, 101, 8, '1-Aug-11');
