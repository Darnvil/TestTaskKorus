--CREATE DATABASE TestTask1;

USE TestTask1;

--CREATE TABLE Currency_Table (
--	CurrencyID NCHAR(10) PRIMARY KEY NOT NULL,
--	Name NCHAR(20) NOT NULL,
--	Round FLOAT NOT NULL,
--);

--INSERT INTO Currency_Table
--VALUES	('EUR', '����', 0.01 ),
--		('RUB', '���������� �����', 0.01),
--		('USD', '������ ���', 0.01),
--		('GBP', '���� ����������', 0.01);

--CREATE TABLE ExchRateTable (
--	Id INT IDENTITY NOT NULL, 
--	CurrencyID NCHAR(10) NOT NULL 
--	    REFERENCES Currency_Table(CurrencyID),
--	ExchRateDate datetime NOT NULL,
--	ExchRate FLOAT NOT NULL,
--);

--INSERT INTO ExchRateTable
--VALUES	('EUR', '01-01-2020', 69.25),
--		('EUR', '05-01-2020', 69.23),
--		('EUR', '06-01-2020', 70.10),
--		('USD', '01-01-2020', 62.93),
--		('USD', '02-01-2020', 62.99),
--		('USD', '06-01-2020', 62.98);

SELECT DISTINCT t.CurrencyID, Name FROM Currency_Table AS t
RIGHT JOIN ExchRateTable AS exch ON t.CurrencyID = exch.CurrencyID; 

SELECT CurrencyID, ExchRateDate, ExchRate 
FROM ExchRateTable
WHERE ExchRateDate = '02-01-2020';