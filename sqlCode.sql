
---------------------TABLE PEOPLE------------------------
------------------1----------------
CREATE TABLE Person ( ID INTEGER PRIMARY KEY AUTOINCREMENT, Name 'James', Age '47', Height '120', City 'Monaco', FavoriteColor 'black' );
------------------2--------
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor ) VALUES ( "Calvin Klein", 24, 185, "New York", "Red" );
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor ) VALUES ( "James Bond", 34, 148, "Philadelphia", "Yellow" );
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor ) VALUES ( "Calvin Klein", 24, 185, "Miami", "Purple" );
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor ) VALUES ( "Calvin Klein", 24, 185, "Phoenix", "Brown" );
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor ) VALUES ( "Calvin Klein", 24, 185, "Seatle", "Blue" );
--------------------3------------------
SELECT * FROM Person ORDER BY Height DESC; 
-------------------4-------------------
SELECT * FROM Person ORDER BY Height ASC;
-----------------5--------------
SELECT * FROM Person ORDER BY Age DESC;
----------------6--------------
SELECT * FROM Person WHERE Age >20;
--------------7-----------
SELECT * FROM Person WHERE Age = 18;
-------------8----------
SELECT * FROM Person WHERE Age < 20 OR Age > 30;
-----------9------------
SELECT * FROM Person WHERE Age !=27;
-----------10--------------
SELECT * FROM Person WHERE FavoriteColor != 'Red';
-----------11-------------
SELECT * FROM Person WHERE FavoriteColor !='Red' AND FavoriteColor !='Blue';
--------------12---------
SELECT * FROM Person WHERE FavoriteColor = "orange" OR FavoriteColor = "green";
--------------13-------------------
SELECT * FROM Person WHERE FavoriteColor IN ( "orange", "green", "blue" );
---------------------14--------------
SELECT * FROM Person WHERE FavoriteColor IN ('yellow','purple');

-------------TABLE ORDERS------------------------------------
---------1-------
SELECT * FROM Person WHERE FavoriteColor IN ('yellow','purple');
---------2-------
INSERT INTO Orders(PersonId,ProductName,ProductPrice,Quantity)
VALUES(3,'Iphones5',566,1);
INSERT INTO Orders(PersonId,ProductName,ProductPrice,Quantity)
VALUES(5,'Iphones',1000,5);
INSERT INTO Orders(PersonId,ProductName,ProductPrice,Quantity)
VALUES(6,'Iwatch',300,1);
INSERT INTO Orders(PersonId,ProductName,ProductPrice,Quantity)
VALUES(8,'Macbook',800,1);
INSERT INTO Orders(PersonId,ProductName,ProductPrice,Quantity)
VALUES(1,'Ipad',500,2);
-----------3-------------
SELECT * FROM Orders;
----------4---------
SELECT SUM(Quantity) FROM Orders;
--------5---------
SELECT SUM(ProductPrice * Quantity) FROM Orders;
----------6-----------
SELECT SUM(ProductPrice * Quantity) FROM Orders WHERE PersonID = 0;
---------------------ARTIST--------------
INSERT INTO Artist(Name)
VALUES('BORING');
----------2-------------

SELECT * FROM Artist ORDER BY Name Desc LIMIT 10
---------3------------
SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;
--------4---------
SELECT * FROM Artist WHERE Name LIKE 'Black%';
---------5--------
SELECT * FROM Artist WHERE Name LIKE '%Black%';

----------TABLE EMPLOYEE--------
SELECT FirstName, LastName FROM Employee WHERE City = "Calgary";
-----------2---------
SELECT FirstName, LastName, Max(BirthDate) FROM Employee;
---------3---------
SELECT FirstName, LastName, Min(BirthDate) FROM Employee;
---------4----------
SELECT * FROM Employee WHERE ReportsTo = 2;
----------5------------
SELECT COUNT(*) FROM Employee WHERE City = "Lethbridge";
--------TABLE INVOICE--------
SELECT Count(*) FROM Invoice WHERE BillingCountry = 'USA';
 ------2----------
 SELECT Max(total) FROM Invoice;
 --------------3----------
SELECT Min(total) FROM Invoice;
 -----------4-----------
SELECT * FROM Invoice WHERE Total > 5;
 =----------5------------
SELECT COUNT(*) FROM Invoice WHERE Total < 5;
 ----------6-------
SELECT Count(*) FROM Invoice WHERE BillingState in ('CA', 'TX', 'AZ');
 --------7------------
SELECT AVG(Total) FROM Invoice;
 ----------8-------------
SELECT SUM(Total) FROM Invoice;








