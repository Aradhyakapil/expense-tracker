CREATE DATABASE EXPENSETRACKER;
USE  EXPENSETRACKER;
CREATE TABLE CUSTOMER (
    userID VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL
);

-- Table for Total Budget
CREATE TABLE budget (
    budgetID INTEGER PRIMARY KEY,
    amount INTEGER NOT NULL,
    userID VARCHAR(255),
    FOREIGN KEY(userID) REFERENCES CUSTOMER(userID)
);

-- Table for Expenses
CREATE TABLE expenses (
    expenseID INTEGER PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    expenseAmount INTEGER NOT NULL,
    userID VARCHAR(255),
    FOREIGN KEY(userID) REFERENCES CUSTOMER(userID)
);

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO budget (budgetID, amount,userID ) VALUES(30000, 10000,'Meena');
INSERT INTO budget (budgetID, amount, userID) VALUES(30001, 8000, 'Arya');
INSERT INTO budget (budgetID, amount, userID) VALUES(30002, 12000, 'Ratnakar');
INSERT INTO budget (budgetID, amount, userID) VALUES(30003, 15000, 'Jyoti');
INSERT INTO budget (budgetID, amount, userID) VALUES(30004, 9000, 'Subhash');

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO expenses (expenseID, category, expenseAmount, userID) VALUES(230000, 'Shopping', 800,'Jyoti');
INSERT INTO expenses (expenseID, category, expenseAmount, userID) VALUES(230001, 'Dining', 150, 'Meena');
INSERT INTO expenses (expenseID, category, expenseAmount, userID) VALUES(230002, 'Entertainment', 200, 'Arya');
INSERT INTO expenses (expenseID, category, expenseAmount, userID) VALUES(230003, 'Utilities', 100, 'Arya');
INSERT INTO expenses (expenseID, category, expenseAmount, userID) VALUES(230004, 'Travel', 300, 'Arya');
INSERT INTO expenses (expenseID, category, expenseAmount, userID) VALUES(230005, 'Shopping', 800,'Meena');

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO CUSTOMER (userID, password) VALUES ('Arya', 'hashed_password_6');
INSERT INTO CUSTOMER(userID, password) VALUES ('Meena', 'hashed_password_7');
INSERT INTO CUSTOMER (userID, password) VALUES ('Ratnakar', 'hashed_password_8');
INSERT INTO CUSTOMER (userID, password) VALUES ('Jyoti', 'hashed_password_9');
INSERT INTO CUSTOMER (userID, password) VALUES ('Subhash', 'hashed_password_10');


SELECT * FROM(CUSTOMER);
SELECT * FROM(budget);
SELECT * FROM(expenses);



SELECT *
FROM expenses
WHERE userID = 'Arya';


SELECT userID, SUM(expenseAmount) AS totalExpenses
FROM expenses
WHERE userID = 'Arya';

SELECT userID, count(expenseAmount) AS numberOfExpenses
FROM expenses
WHERE userID = 'Arya';
