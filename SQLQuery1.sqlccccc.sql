DROP TABLE IF EXISTS dbo.MYPC;
DROP TABLE IF EXISTS dbo.Books;

CREATE TABLE MYPC
(

    Id int,
    Name NVARCHAR(50),
    Description NVARCHAR(100),
    Price int,
    Processor NVARCHAR(30),
    Motherboard NVARCHAR(30),
    RAM int,
    Cooler NVARCHAR(20),
    Monitor NVARCHAR(20),
    SSD NVARCHAR(20)
)

CREATE TABLE Books
(
    Id int,
    Title NVARCHAR(100),
    Author NVARCHAR(50),
    Genre NVARCHAR(30),
    PublicationYear int,
    Publisher NVARCHAR(50),
    Pages int,
    Price int
)

INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (1, 'pc1', 'for gaming', 1200, 'Intel i9', 'ASUS ROG Strix', 32, 'Corsair H100i', 'LG UltraGear', '1TB SSD');
INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (2, 'pc2', 'for content creation', 1500, 'AMD Ryzen 4', 'MSI MPG X570', 64, 'NZXT Kraken X63', 'Dell Ultrasharp', '2TB SSD');
INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (3, 'pc3', 'for productivity', 1000, 'Intel i7', 'Gigabyte Aorus', 16, 'CoolerMaster', 'Samsung Odyssey', '500GB SSD');
INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (4, 'pc4', 'for streaming', 1300, 'AMD Ryzen 7', 'ASRock B550', 32, 'Noctua NH-D15', 'Acer Predator', '1TB SSD');
INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (5, 'pc5', 'for programming', 1100, 'Intel i5', 'ASUS TUF Gaming', 16, 'Be Quiet', 'BenQ EL2870U', '500GB SSD');
INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (6, 'pc6', 'for graphic design', 1400, 'AMD Ryzen 5', 'MSI B450 Tomahawk', 32, 'Corsair H60', 'HP Pavilion', '1TB SSD');
INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (7, 'pc7', 'for video editing', 1600, 'Intel i8', 'ASUS Prime Z490', 64, 'NZXT Kraken X73', 'LG 27UK850-W', '2TB SSD');
INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (8, 'pc8', 'for VR gaming', 1800, 'AMD Ryzen 9', 'Gigabyte X570 Aorus', 64, 'Corsair H150i', 'Samsung Odyssey G7', '2TB SSD');
INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (9, 'pc9', 'for music production', 1250, 'Intel i7', 'ASRock X570 Phantom Gaming', 32, 'Noctua NH-U12S', 'Dell S2719DGF', '1TB SSD');
INSERT INTO MYPC(Id, Name, Description, Price, Processor, Motherboard, RAM, Cooler, Monitor, SSD) VALUES (10, 'pc10', 'for casual use', 900, 'AMD Ryzen 2', 'MSI B450 Gaming Plus', 16, 'Cooler Master RGB', 'Acer R240HY', '500GB SSD');

INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (1, 'Book1', 'Author1', 'Fiction', 2020, 'Publisher1', 300, 25);
INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (2, 'Book2', 'Author2', 'Non-Fiction', 2018, 'Publisher2', 400, 30);
INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (3, 'Book3', 'Author3', 'Mystery', 2019, 'Publisher3', 350, 28);
INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (4, 'Book4', 'Author4', 'Science Fiction', 2021, 'Publisher4', 280, 22);
INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (5, 'Book5', 'Author5', 'Biography', 2017, 'Publisher5', 250, 20);
INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (6, 'Book6', 'Author6', 'Fantasy', 2022, 'Publisher6', 320, 27);
INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (7, 'Book7', 'Author7', 'Historical Fiction', 2016, 'Publisher7', 380, 32);
INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (8, 'Book8', 'Author8', 'Self-Help', 2020, 'Publisher8', 270, 24);
INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (9, 'Book9', 'Author9', 'Thriller', 2018, 'Publisher9', 310, 26);
INSERT INTO Books(Id, Title, Author, Genre, PublicationYear, Publisher, Pages, Price) VALUES (10, 'Book10', 'Author10', 'Romance', 2019, 'Publisher10', 290, 23);


SELECT * FROM MYPC ORDER BY Id
SELECT * FROM MYPC ORDER BY Id DESC
SELECT DISTINCT Processor FROM MYPC
SELECT TOP 5 Motherboard FROM MYPC
SELECT TOP 30 PERCENT Motherboard FROM MYPC
SELECT * FROM MYPC ORDER BY Id OFFSET 2 ROWS
SELECT * FROM MYPC ORDER BY Id OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY
SELECT * FROM MYPC WHERE RAM = 16
SELECT * FROM MYPC WHERE NOT RAM = 16
SELECT * FROM MYPC WHERE RAM > 16 AND Price > 1300
SELECT * FROM MYPC WHERE RAM = 16 OR Price = 1800
SELECT * FROM MYPC WHERE NOT SSD = '1TB SSD'
SELECT * FROM MYPC WHERE Price IS NULL
SELECT * FROM MYPC WHERE Price IS NOT NULL
UPDATE MYPC SET Price = 999 WHERE Description = 'for video editing'
DELETE FROM MYPC WHERE Price = 999
DELETE FROM MYPC WHERE SSD = '1TB SSD'

SELECT MIN(Price) FROM Books
SELECT MAX(Price) FROM Books
SELECT COUNT(*) FROM Books WHERE Price = 32
SELECT AVG(Price) FROM Books
SELECT SUM(Price) FROM Books
SELECT * FROM Books WHERE Genre LIKE 'S%'
SELECT * FROM Books WHERE Genre LIKE '%n'
SELECT * FROM Books WHERE Genre LIKE '%n%'
SELECT * FROM Books WHERE Genre	NOT LIKE 'S%'
SELECT * FROM Books WHERE Genre NOT LIKE '%n'
SELECT * FROM Books WHERE Genre NOT LIKE '%n%'
SELECT * FROM Books WHERE Genre LIKE 'F%y'
SELECT * FROM Books WHERE Genre NOT LIKE 'F%'
SELECT * FROM Books WHERE Genre LIKE '_i%'
SELECT * FROM Books WHERE Genre LIKE '[FMT]%'
SELECT * FROM Books WHERE Genre LIKE '[a-f]%'
SELECT * FROM Books WHERE Genre LIKE '[!FMT]%'
SELECT * FROM Books WHERE Genre NOT LIKE '_i%'
SELECT * FROM Books WHERE Genre NOT LIKE '[FMT]%'
SELECT * FROM Books WHERE Genre NOT LIKE '[a-f]%'
SELECT * FROM Books WHERE Genre NOT LIKE '[!FMT]%'
SELECT * FROM Books WHERE Genre IN ('Fantasy', 'Romance')
SELECT * FROM Books WHERE Genre NOT IN ('Fantasy', 'Romance')
SELECT * FROM Books WHERE price BETWEEN 20 AND 25
SELECT * FROM Books WHERE price NOT BETWEEN 20 AND 25
SELECT * FROM Books WHERE genre BETWEEN 'Biography' AND 'Romance'
SELECT * FROM Books WHERE genre NOT BETWEEN 'Biography' AND 'Romance'
SELECT price AS abc FROM books
SELECT * FROM Books AS Boooks 
SELECT * FROM MYPC LEFT JOIN Books ON MYPC.Id = Books.Id
SELECT * FROM MYPC INNER JOIN Books ON MYPC.price = Books.price
SELECT * FROM MYPC LEFT JOIN Books ON MYPC.price = Books.pages
SELECT * FROM MYPC INNER JOIN Books ON MYPC.Id = Books.Id
SELECT * FROM MYPC RIGHT JOIN Books ON MYPC.Id = Books.Id
SELECT COUNT (Id) Id FROM Books GROUP BY Id
SELECT Genre, COUNT(*) AS Count FROM Books GROUP BY Genre
SELECT MYPC.Name, MYPC.Processor, Books.Title, Books.Author FROM MYPC FULL OUTER JOIN Books ON MYPC.price = Books.price
SELECT MYPC.Name, MYPC.Processor, Books.Title, Books.Author FROM MYPC FULL OUTER JOIN Books ON MYPC.Id = Books.Id
SELECT MYPC.Name, MYPC.Processor, Books.Title, Books.Author FROM MYPC CROSS JOIN Books
SELECT MYPC.Name, MYPC.Processor, COUNT(Books.Id) AS BookCount FROM MYPC LEFT JOIN Books ON MYPC.Id = Books.Id GROUP BY MYPC.Name, MYPC.Processor
SELECT MYPC.Name, MYPC.Processor, (SELECT COUNT(*) FROM Books WHERE Books.Id = MYPC.Id ) AS BookCount FROM MYPC

SELECT MYPC.Name, MYPC.Processor,
    CASE
        WHEN Books.Genre = 'Fiction' THEN 'Художественная литература'
        WHEN Books.Genre = 'Non-Fiction' THEN 'Научно-популярная литература'
        ELSE 'Другое'
    END AS BookGenre
FROM MYPC
LEFT JOIN Books ON MYPC.Id = Books.Id
