DROP TABLE IF EXISTS dbo.MYPC;
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
SELECT * FROM MYPC ORDER BY Id
