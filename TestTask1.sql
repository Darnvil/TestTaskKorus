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
--VALUES	('EUR', '2020-01-01', 69.25),
--		('EUR', '2020-01-05', 69.23),
--		('EUR', '2020-01-06', 70.10),
--		('USD', '2020-01-01', 62.93),
--		('USD', '2020-01-02', 62.99),
--		('USD', '2020-01-06', 62.98);

SELECT DISTINCT t.CurrencyID, Name FROM Currency_Table AS t
RIGHT JOIN ExchRateTable AS exch ON t.CurrencyID = exch.CurrencyID; 

SELECT CurrencyID, ExchRateDate, ExchRate 
FROM ExchRateTable
WHERE id IN (SELECT q.Id FROM 
(SELECT MAX(Id) as Id, CurrencyID, MAX(ExchRateDate) AS ExchDate 
 FROM ExchRateTable 
 WHERE ExchRateDate <= '2020-01-02' 
 GROUP BY CurrencyID) AS q )
ORDER BY ExchRateDate DESC;


