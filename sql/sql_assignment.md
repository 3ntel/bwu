[<img src="https://cdn.programiz.com/sites/tutorial2program/files/pc_logo.svg" alt="Programiz" width="200"></img>](https://www.programiz.com/sql/online-compiler/ "https://www.programiz.com/sql/online-compiler/")


### [RUN QUERY ON PROGRAMIZ COMPILER](https://www.programiz.com/sql/online-compiler/ "https://www.programiz.com/sql/online-compiler/")

```sql
DROP TABLE Customers; DROP TABLE Orders; DROP TABLE Shippings; CREATE TABLE MEMBER( MEMBER_ID NUMBER(5) PRIMARY KEY, MEMBER_NAME VARCHAR2(30) NOT NULL, MEMBER_ADDRESS VARCHAR2(50), ACC_OPEN_DATE DATE, MEMBERSHIP_TYPE VARCHAR2(20), FEES_PAID NUMBER(4), MAX_BOOKS_ALLOWED NUMBER(2), PENALTY_AMOUNT NUMBER(7, 2), CONSTRAINT MBR_ADDR_CHK CHECK( MEMBERSHIP_TYPE IN ( 'LIFETIME', 'ANNUAL', 'HALF YEARLY', 'QUARTERLY' ) ), CONSTRAINT MAX_BOOK_CHK CHECK(MAX_BOOKS_ALLOWED < 7), CONSTRAINT PNLTY_AMT_CHK CHECK(PENALTY_AMOUNT <= 1000) ); CREATE TABLE BOOKS( BOOK_NO NUMBER(6) PRIMARY KEY, BOOK_NAME VARCHAR2(30) NOT NULL, AUTHOR_NAME VARCHAR2(30), COST NUMBER(7, 2), CATEGORY CHAR(10), CONSTRAINT CHK_CATEGORY CHECK( CATEGORY IN ( 'SCIENCE', 'DATABASE', 'SYSTEM', 'OTHERS' ) ) ); CREATE TABLE ISSUE( LIB_ISSUE_ID NUMBER(10) PRIMARY KEY, BOOK_NO NUMBER(6) REFERENCES BOOKS(BOOK_NO), MEMBER_ID NUMBER(5) REFERENCES MEMBER(MEMBER_ID), ISSUE_DATE DATE, RETURN_DATE DATE ); INSERT INTO MEMBER VALUES ( 1, 'Sayantan Sinha', 'Pune', '2010-12-10', 'LIFETIME', 2000, 6, 50 ); INSERT INTO MEMBER VALUES ( 2, 'Abhirup Sarkar', 'Kolkata', '2011-01-19', 'ANNUAL', 1400, 3, 0 ); INSERT INTO MEMBER VALUES ( 3, 'Ritesh Bhuniya', 'Gujarat', '2011-02-20', 'QUARTERLY', 350, 2, 100 ); INSERT INTO MEMBER VALUES ( 4, 'Paresh sen', 'Tripura', '2011-03-21', 'HALF YEARLY', 700, 1, 200 ); INSERT INTO MEMBER VALUES ( 5, 'Sohini Haldar', 'Birbhum', '2011-04-11', 'LIFETIME', 2000, 6, 10 ); INSERT INTO MEMBER VALUES ( 6, 'Suparna Biswas', 'Kolkata', '2011-04-12', 'HALF YEARLY', 700, 1, 0 ); INSERT INTO MEMBER VALUES ( 7, 'Suranjana Basu', 'Purulia', '2011-06-30', 'ANNUAL', 1400, 3, 50 ); INSERT INTO MEMBER VALUES ( 8, 'Arpita Roy', 'Kolkata', '2011-07-31', 'HALF YEARLY', 700, 1, 0 ); INSERT INTO BOOKS VALUES ( 101, 'Let us C', 'Denis Ritchie', 450, 'OTHERS' ); INSERT INTO BOOKS VALUES ( 102, 'Oracle - Complete Ref', 'Loni', 550, 'DATABASE' ); INSERT INTO BOOKS VALUES ( 103, 'Visual Basic 10', 'BPB', 700, 'OTHERS' ); INSERT INTO BOOKS VALUES ( 104, 'Mastering SQL', 'Loni', 450, 'DATABASE' ); INSERT INTO BOOKS VALUES ( 105, 'PL SQL-Ref Scott', 'Urman', 750, 'DATABASE' ); INSERT INTO BOOKS VALUES ( 106, 'UNIX', 'Sumitava Das', 300, 'SYSTEM' ); INSERT INTO BOOKS VALUES ( 107, 'Optics', 'Ghatak', 600, 'SCIENCE' ); INSERT INTO BOOKS VALUES ( 108, 'Data Structure', 'G.S. Baluja', 350, 'OTHERS' ); INSERT INTO ISSUE ( LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE ) VALUES (7001, 101, 1, '2011-01-10'); INSERT INTO ISSUE ( LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE ) VALUES (7002, 102, 2, '2011-01-25'); INSERT INTO ISSUE ( LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE ) VALUES (7003, 104, 1, '2011-02-01'); INSERT INTO ISSUE ( LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE ) VALUES (7004, 104, 2, '2011-03-15'); INSERT INTO ISSUE ( LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE ) VALUES (005, 101, 4, '2011-04-04'); INSERT INTO ISSUE ( LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE ) VALUES (7006, 108, 5, '2011-04-12'); INSERT INTO ISSUE ( LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE ) VALUES (7007, 101, 8, '2011-08-1');
```
> Copy the above code by clicking on **copy button**.

---

### ABOVE QUERY IN STRUCTRE

<details>
    <summary>
    CLICK TO EXPAND CODE
    </summary>
    
```sql
DROP 
  TABLE Customers;
DROP 
  TABLE Orders;
DROP 
  TABLE Shippings;
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
      'LIFETIME', 'ANNUAL', 'HALF YEARLY', 
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
    CATEGORY IN (
      'SCIENCE', 'DATABASE', 'SYSTEM', 'OTHERS'
    )
  )
);
CREATE TABLE ISSUE(
  LIB_ISSUE_ID NUMBER(10) PRIMARY KEY, 
  BOOK_NO NUMBER(6) REFERENCES BOOKS(BOOK_NO), 
  MEMBER_ID NUMBER(5) REFERENCES MEMBER(MEMBER_ID), 
  ISSUE_DATE DATE, 
  RETURN_DATE DATE
);
INSERT INTO MEMBER 
VALUES 
  (
    1, 'Sayantan Sinha', 'Pune', '2010-12-10', 
    'LIFETIME', 2000, 6, 50
  );
INSERT INTO MEMBER 
VALUES 
  (
    2, 'Abhirup Sarkar', 'Kolkata', '2011-01-19', 
    'ANNUAL', 1400, 3, 0
  );
INSERT INTO MEMBER 
VALUES 
  (
    3, 'Ritesh Bhuniya', 'Gujarat', '2011-02-20', 
    'QUARTERLY', 350, 2, 100
  );
INSERT INTO MEMBER 
VALUES 
  (
    4, 'Paresh sen', 'Tripura', '2011-03-21', 
    'HALF YEARLY', 700, 1, 200
  );
INSERT INTO MEMBER 
VALUES 
  (
    5, 'Sohini Haldar', 'Birbhum', '2011-04-11', 
    'LIFETIME', 2000, 6, 10
  );
INSERT INTO MEMBER 
VALUES 
  (
    6, 'Suparna Biswas', 'Kolkata', '2011-04-12', 
    'HALF YEARLY', 700, 1, 0
  );
INSERT INTO MEMBER 
VALUES 
  (
    7, 'Suranjana Basu', 'Purulia', '2011-06-30', 
    'ANNUAL', 1400, 3, 50
  );
INSERT INTO MEMBER 
VALUES 
  (
    8, 'Arpita Roy', 'Kolkata', '2011-07-31', 
    'HALF YEARLY', 700, 1, 0
  );
INSERT INTO BOOKS 
VALUES 
  (
    101, 'Let us C', 'Denis Ritchie', 
    450, 'OTHERS'
  );
INSERT INTO BOOKS 
VALUES 
  (
    102, 'Oracle - Complete Ref', 'Loni', 
    550, 'DATABASE'
  );
INSERT INTO BOOKS 
VALUES 
  (
    103, 'Visual Basic 10', 'BPB', 700, 
    'OTHERS'
  );
INSERT INTO BOOKS 
VALUES 
  (
    104, 'Mastering SQL', 'Loni', 450, 
    'DATABASE'
  );
INSERT INTO BOOKS 
VALUES 
  (
    105, 'PL SQL-Ref Scott', 'Urman', 
    750, 'DATABASE'
  );
INSERT INTO BOOKS 
VALUES 
  (
    106, 'UNIX', 'Sumitava Das', 300, 'SYSTEM'
  );
INSERT INTO BOOKS 
VALUES 
  (
    107, 'Optics', 'Ghatak', 600, 'SCIENCE'
  );
INSERT INTO BOOKS 
VALUES 
  (
    108, 'Data Structure', 'G.S. Baluja', 
    350, 'OTHERS'
  );
INSERT INTO ISSUE (
  LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, 
  ISSUE_DATE
) 
VALUES 
  (7001, 101, 1, '2011-01-10');
INSERT INTO ISSUE (
  LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, 
  ISSUE_DATE
) 
VALUES 
  (7002, 102, 2, '2011-01-25');
INSERT INTO ISSUE (
  LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, 
  ISSUE_DATE
) 
VALUES 
  (7003, 104, 1, '2011-02-01');
INSERT INTO ISSUE (
  LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, 
  ISSUE_DATE
) 
VALUES 
  (7004, 104, 2, '2011-03-15');
INSERT INTO ISSUE (
  LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, 
  ISSUE_DATE
) 
VALUES 
  (005, 101, 4, '2011-04-04');
INSERT INTO ISSUE (
  LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, 
  ISSUE_DATE
) 
VALUES 
  (7006, 108, 5, '2011-04-12');
INSERT INTO ISSUE (
  LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, 
  ISSUE_DATE
) 
VALUES 
  (7007, 101, 8, '2011-08-1');

```
</details>

---

[<img src="https://livesql.oracle.com/livesql/static/images/livesql-logo.svg" alt="Oracle Live SQL" width="50"></img>](https://livesql.oracle.com/ "https://livesql.oracle.com/")

### [RUN QUERY ON ORACLE LIVE SQL COMPILER](https://livesql.oracle.com/ "https://livesql.oracle.com/")

<details>
    <summary>
    CLICK TO EXPAND CODE
    </summary>
    
```sql
CREATE TABLE MEMBER( 
    MEMBER_ID NUMBER(5), 
    MEMBER_NAME VARCHAR2(30), 
    MEMBER_ADDRESS VARCHAR2(50), 
    ACC_OPEN_DATE DATE, 
    MEMBERSHIP_TYPE VARCHAR2(20), 
    FEES_PAID NUMBER(4), 
    MAX_BOOKS_ALLOWED NUMBER(2), 
    PENALTY_AMOUNT NUMBER(7,2) 
)
;

ALTER TABLE MEMBER 
ADD CONSTRAINT M1 PRIMARY KEY (MEMBER_ID)
;

ALTER TABLE MEMBER 
ADD CONSTRAINT M2 CHECK (MEMBER_ID IS NOT NULL)
;

ALTER TABLE MEMBER 
ADD CONSTRAINT M3 CHECK (MEMBER_NAME IS NOT NULL)
;

ALTER TABLE MEMBER 
ADD CONSTRAINT M4 CHECK(MEMBERSHIP_TYPE IN ('LIFETIME',  
'ANNUAL','HALF YEARLY', 'QUARTERLY') )
;

ALTER TABLE MEMBER 
ADD CONSTRAINT M5 CHECK(MAX_BOOKS_ALLOWED < 7)
;

ALTER TABLE MEMBER 
ADD CONSTRAINT M6 CHECK(PENALTY_AMOUNT <= 1000)
;

CREATE TABLE BOOKS( 
    BOOK_NO NUMBER(6), 
    BOOK_NAME VARCHAR2(30), 
    AUTHOR_NAME VARCHAR2(30), 
    COST NUMBER(7,2), 
    CATEGORY CHAR(10) 
)
;

ALTER TABLE BOOKS 
ADD CONSTRAINT B1 PRIMARY KEY (BOOK_NO)
;

ALTER TABLE BOOKS 
ADD CONSTRAINT B2 CHECK (BOOK_NO IS NOT NULL)
;

ALTER TABLE BOOKS 
ADD CONSTRAINT B3 CHECK(BOOK_NAME IS NOT NULL)
;

ALTER TABLE BOOKS 
ADD CONSTRAINT B4 CHECK(CATEGORY IN ('SCIENCE', 'DATABASE', 'SYSTEM', 'OTHERS'))
;

CREATE TABLE ISSUE( 
    LIB_ISSUE_ID NUMBER(10), 
    BOOK_NO NUMBER(6), 
    MEMBER_ID NUMBER(5), 
    ISSUE_DATE DATE, 
    RETURN_DATE DATE 
)
;

ALTER TABLE ISSUE 
ADD CONSTRAINT I1 PRIMARY KEY (LIB_ISSUE_ID)
;

ALTER TABLE ISSUE 
ADD CONSTRAINT I2 CHECK (LIB_ISSUE_ID IS NOT NULL)
;

ALTER TABLE ISSUE 
ADD CONSTRAINT I3 FOREIGN KEY(BOOK_NO) REFERENCES BOOKS(BOOK_NO)
;

ALTER TABLE ISSUE 
ADD CONSTRAINT I4 FOREIGN KEY(MEMBER_ID) REFERENCES MEMBER(MEMBER_ID)
;

INSERT INTO MEMBER 
VALUES(1 ,'Sayantan Sinha' ,  'Pune', '10-Dec-10', 'LIFETIME', 2000, 6, 50)
;

INSERT INTO MEMBER 
VALUES(2 ,'Abhirup Sarkar' ,  'Kolkata', '19-jan-11', 'ANNUAL', 1400, 3, 0)
;

INSERT INTO MEMBER 
VALUES(3 ,'Ritesh Bhuniya' ,  'Gujarat', '20-feb-11', 'QUARTERLY', 350, 2, 100)
;

INSERT INTO MEMBER 
VALUES(4 ,'Paresh sen' ,  'Tripura', '21-mar-11', 'HALF YEARLY', 700, 1, 200)
;

INSERT INTO MEMBER 
VALUES(5 ,'Sohini Haldar' ,  'Birbhum', '11-apr-11', 'LIFETIME', 2000, 6, 10)
;

INSERT INTO MEMBER 
VALUES(6 ,'Suparna Biswas' ,  'Kolkata', '12-apr-11', 'HALF YEARLY', 700, 1, 0)
;

INSERT INTO MEMBER 
VALUES(7 ,'Suranjana Basu' ,  'Purulia', '30-june-11', 'ANNUAL', 1400, 3, 50)
;

INSERT INTO MEMBER 
VALUES(8 ,'Arpita Roy' ,  'Kolkata', '31-july-11', 'HALF YEARLY', 700, 1, 0)
;

INSERT INTO BOOKS 
VALUES(101,'Let us C','Denis Ritchie',450,'OTHERS')
;

INSERT INTO BOOKS 
VALUES(102,'Oracle - Complete Ref','Loni',550,'DATABASE')
;

INSERT INTO BOOKS 
VALUES(103,'Visual Basic 10','BPB',700,'OTHERS')
;

INSERT INTO BOOKS 
VALUES(104,'Mastering SQL','Loni',450,'DATABASE')
;

INSERT INTO BOOKS 
VALUES(105,'PL SQL-Ref Scott','Urman',750,'DATABASE')
;

INSERT INTO BOOKS 
VALUES(106,'UNIX','Sumitava Das',300,'SYSTEM')
;

INSERT INTO BOOKS 
VALUES(107,'Optics','Ghatak',600,'SCIENCE')
;

INSERT INTO BOOKS 
VALUES(108,'Data Structure','G.S. Baluja',350,'OTHERS')
;

INSERT INTO ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE) 
VALUES(7001, 101, 1, '10-jan-11')
;

INSERT INTO ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE) 
VALUES(7002, 102, 2, '25-jan-11')
;

INSERT INTO ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE) 
VALUES(7003, 104, 1, '1-Feb-11')
;

INSERT INTO ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE) 
VALUES(7004, 104, 2, '15-Mar-11')
;

INSERT INTO ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE) 
VALUES(005, 101, 4, '04-Apr-11')
;

INSERT INTO ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE) 
VALUES(7006, 108, 5, '12-apr-11')
;

INSERT INTO ISSUE (LIB_ISSUE_ID, BOOK_NO, MEMBER_ID, ISSUE_DATE) 
VALUES(7007, 101, 8, '1-Aug-11')
;
```
</details>

>  [Run Directly on Oracle Live](https://livesql.oracle.com/apex/livesql/s/obq6rxr5hy2r0vvbhuk5ub23z "https://livesql.oracle.com/apex/livesql/s/obq6rxr5hy2r0vvbhuk5ub23z")


---

## SQL Assignment – 1  

### **Question:** Create the following tables with appropriate constraints using SQL commands.
&nbsp;
1) **_Table Name : Member_**



    |COLUMN NAME |DATA TYPE |DESCRIPTION |
    | - | - | - |
    |Member\_Id |Number(5) |Unique Member ID |
    |Member\_Name |Varchar2(30) |Name of the Library member |
    |Member\_address |Varchar2(50) |Address of the member |
    |Acc\_Open\_Date |Date |Date of membership |
    |Membership\_type |Varchar2(20) |Type of the membership such as ‘LIFETIME’,’ ANNUAL’, ‘HALF YEARLY’,’ QUARTERLY’ |
    |Fees\_paid |Number(4) |Membership fees paid |
    |Max\_Books\_Allowed |Number(2) |Total Number of books that can be issued to the member. |
    |Penalty\_Amount |Number(7,2) |Penalty amount due |
    
    _CONSTRAINTS:_

    1. Member\_Id – Primary Key 
    1. Member\_Name – NOT NULL 
    1. Membership\_type - ‘LIFETIME’ , ’ ANNUAL’ , ‘HALF YEARLY’ , ’ QUARTERLY’ 
    1. Max\_books\_allowed <7 
    1. Penalty\_amt maximum 1000 

&nbsp;

2) **_Table Name :Books_**



    |COLUMN NAME|DATA TYPE|DESCRIPTION|
    | - | - | - |
    |Book\_No |Number(6) |Book identification number|
    |Book\_Name |VarChar2(30) |Name of the book |
    |Author\_name |Varchar2(30) |Author of the book |
    |Cost |Number(7,2) |Cost of the book |
    |Category |Char(10) |Category like Science , Fiction etc. |
    
    _CONSTRAINTS:_

    1. Book\_No – Primary Key 
    1. Book\_Name – Not Null 
    1. Category – Science, Database, System, Others. 

&nbsp;

3) **_Table Name :Issue_**



    |COLUMN NAME|DATA TYPE|DESCRIPTION|
    | - | - | - |
    |Lib\_Issue\_Id |Number(10) |Library Book Issue No |
    |Book\_No |Number(6) |The ID of book, which is issued|
    |Member\_Id |Number(5) |Member that issued the book|
    |Issue\_Date |Date |Date of Issue |
    |Return\_date |Date |Return date |

    _CONSTRAINTS:_

    1. Lib\_Issue\_Id -Primary key 
    1. Book\_No - foreign key 
    1. Member\_id - foreign key 


> ### [SQL Assignment - 1 Solutions](#run-query-on-oracle-live-sql-compiler)

---

## SQL Assignment – 2  

### 1. Retrieve the Name of Book and Cost who has Maximum cost.

- **Programiz Compiler Query**
    ```sql
    SELECT
        BOOK_NAME,
        COST
    FROM
        BOOKS
    WHERE
        COST = (
            SELECT
        MAX(COST)
    FROM
        BOOKS
        );            
    ```

### 2. Calculate the Minimum Cost, Average Cost and Total Cost value in BOOKS table and Rename the resulting attributes.

- **Programiz Compiler Query**
    ```sql
    SELECT
        MIN(COST) AS "MINIMUM COST",
        AVG(COST) AS "AVERAGE COST",
        MAX(COST) AS "MAXIMUM COST"
    FROM
        BOOKS;        
    ```
    
 ### 3. Retrieve the Name and ID of Members who's issued book between 26th January 2011 and 14th April 2011.

- **Programiz Compiler Query**
    ```sql
    SELECT
        MEMBER_ID,
        MEMBER_NAME
    FROM
        MEMBER
    WHERE
        MEMBER_ID IN (
            SELECT
        MEMBER_ID
    FROM
        ISSUE
    WHERE
        ISSUE_DATE BETWEEN '2011-01-26'
        AND '2011-04-14'
        );       
    ```
### 4. Retrieve Book Name, Author Name and Category whose category is not 'OTHERS'

- **Programiz Compiler Query**
    ```sql
    SELECT
        BOOK_NAME,
        AUTHOR_NAME,
        CATEGORY
    FROM
        BOOKS
    WHERE
        NOT CATEGORY = 'OTHERS';         
    ```
    
### 5. Retrieve Book Name and Author Name where 5th letter of the Author name is 't'.

- **Programiz Compiler Query**
    ```sql
    SELECT
        BOOK_NAME,
        AUTHOR_NAME
    FROM
        BOOKS
    WHERE
        AUTHOR_NAME LIKE '____t%';           
    ```

---

## SQL Assignment – 3  

> #### Coming SOON :)
