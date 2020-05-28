DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS order_detail;
DROP TABLE IF EXISTS product;
CREATE TABLE customer(
	CustomerID SERIAL PRIMARY KEY,
	CompanyName TEXT NOT NULL,
	ContactName TEXT NOT NULL,
	ContactTitle TEXT NOT NULL,
	Address TEXT NOT NULL,
	City TEXT NOT NULL,
	Region TEXT NOT NULL,
	PostalCode INT NOT NULL,
	Country TEXT NOT NULL,
	Phone TEXT NOT NULL,
	Fax TEXT NOT NULL
);
CREATE TABLE orders(
	OrderID SERIAL PRIMARY KEY,
	CustomerID INT REFERENCES customer(CustomerID),
	EmployeeID INT CHECK (EmployeeID > 0),
	OrderDate DATE NOT NULL,
	RequireDate DATE NOT NULL,
	ShippedDate DATE NOT NULL,
	ShipVia TEXT NOT NULL,
	Freight TEXT NOT NULL,
	ShipName TEXT NOT NULL,
	ShipAddress TEXT NOT NULL,
	ShipCity TEXT NOT NULL,
	ShipRegion TEXT NOT NULL,
	ShipPostalCode INT NOT NULL,
	ShipCountry TEXT NOT NULL
);

create table order_detail (
	OrderID INT CHECK (OrderID > 0),
	ProductID INT CHECK (ProductID > 0),
	UnitPrice INT CHECK (UnitPrice > 0),
	Quantity INT CHECK (Quantity > 0),
	Discount INT CHECK (Discount >= 0)
);
create table product (
	ProductID SERIAL,
	ProductName TEXT PRIMARY KEY,
	SupplierID INT CHECK (SupplierID > 0),
	CategoryID INT CHECK (CategoryID > 0),
	QuantityPerUnit INT CHECK (QuantityPerUnit > 0),
	UnitPrice INT CHECK (UnitPrice > 0),
	UnitsInStock INT CHECK (UnitsInStock >= 0),
	UnitsOnOrder INT CHECK (UnitsOnOrder > 0),
	ReorderLevel INT CHECK (ReorderLevel >= 0),
	Discontinued BOOL
);
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Thoughtbridge', 'Georas Jiruca', 'Dr', '67775 Anzinger Pass', 'New York City', 'New York', '10019', 'United States', '7184830709', '7027098804');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Vinder', 'Catharine Huban', 'Ms', '65231 Mallard Lane', 'Gulfport', 'Mississippi', '39505', 'United States', '2288210727', '6064684832');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Aivee', 'Vivienne Spiers', 'Mrs', '9565 International Circle', 'Erie', 'Pennsylvania', '16565', 'United States', '8143791460', '7063615004');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Realcube', 'Inna Bushill', 'Rev', '92 Darwin Center', 'Pasadena', 'California', '91117', 'United States', '6266840115', '2677781847');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Rhynoodle', 'Val Skeats', 'Rev', '46278 Bluestem Junction', 'San Jose', 'California', '95108', 'United States', '4086634664', '2024103881');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Wikido', 'Aylmar Borsnall', 'Ms', '29 Rockefeller Street', 'Fort Worth', 'Texas', '76105', 'United States', '6822102220', '2027184979');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Teklist', 'Xever Maffi', 'Rev', '8365 Ridge Oak Pass', 'Newport News', 'Virginia', '23612', 'United States', '7576697715', '5134687072');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Gigabox', 'Georgena Firbanks', 'Honorable', '799 Twin Pines Terrace', 'Toledo', 'Ohio', '43666', 'United States', '4195354741', '7572675793');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Ntag', 'Dee Pickle', 'Rev', '336 Portage Court', 'Tucson', 'Arizona', '85748', 'United States', '5207258819', '2146183149');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Skidoo', 'Kirsti Methingam', 'Honorable', '11 Swallow Parkway', 'San Francisco', 'California', '94126', 'United States', '4156351551', '4125112984');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Jatri', 'Rorke Seywood', 'Mrs', '66685 Sunfield Hill', 'Fort Smith', 'Arkansas', '72916', 'United States', '4792680561', '3152235536');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Yozio', 'Ginger Garside', 'Ms', '29038 Jay Road', 'Gaithersburg', 'Maryland', '20883', 'United States', '2406193333', '7049975102');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Edgetag', 'Lane Breeton', 'Dr', '0684 Eagan Trail', 'Springfield', 'Missouri', '65805', 'United States', '4174692651', '6155703606');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Avamba', 'Johnath Othen', 'Honorable', '77 Dovetail Point', 'Detroit', 'Michigan', '48267', 'United States', '3132421578', '2511992066');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Leenti', 'Virginie Espinet', 'Mr', '37148 La Follette Court', 'Nashville', 'Tennessee', '37210', 'United States', '6157560708', '9199954625');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Blogpad', 'Ardys Radwell', 'Mrs', '07 Saint Paul Street', 'Indianapolis', 'Indiana', '46266', 'United States', '3172452247', '3204410204');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Skiba', 'Toby Keune', 'Mrs', '48 Hoepker Alley', 'Hartford', 'Connecticut', '06152', 'United States', '8605108706', '2409805465');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Skidoo', 'Hedwig Lynde', 'Dr', '93 Bellgrove Place', 'Raleigh', 'North Carolina', '27615', 'United States', '9191538349', '3052302699');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Thoughtblab', 'Alikee Janew', 'Honorable', '510 Fisk Alley', 'Sacramento', 'California', '94230', 'United States', '9164026279', '5174447439');
insert into customer (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) values ('Shufflester', 'Marijn Hartell', 'Rev', '17006 Fair Oaks Terrace', 'Chicago', 'Illinois', '60691', 'United States', '3127455078', '7344747762');

insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (10, 9398, '2019-12-24 22:51:38', '2020-04-07 00:35:09', '2020-07-02 06:46:51', 'Koper', 'Air', 'Ketty Pinckard', '19916 Marquette Crossing', 'Montgomery', 'Alabama', '36125', 'United States');
insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (3, 9896, '2019-04-24 14:46:02', '2020-03-26 23:53:58', '2020-07-17 14:18:03', 'Koper', 'Air', 'Marcie Le Grand', '702 Pine View Road', 'Chicago', 'Illinois', '60652', 'United States');
insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (8, 6478, '2020-03-05 02:05:42', '2020-03-25 04:14:27', '2020-07-13 06:12:29', 'Koper', 'Sea', 'Sonia Beeres', '59400 Prairie Rose Avenue', 'Orlando', 'Florida', '32813', 'United States');
insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (20, 1785, '2019-10-11 18:42:46', '2020-04-24 21:05:20', '2020-06-20 20:58:11', 'Koper', 'Sea', 'Marsiella Barratt', '49 Clarendon Street', 'Winston Salem', 'North Carolina', '27105', 'United States');
insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (20, 7855, '2019-10-16 11:10:26', '2020-03-26 14:36:27', '2020-06-10 06:49:50', 'Koper', 'Sea', 'Caril Bartaletti', '200 Springview Drive', 'Birmingham', 'Alabama', '35242', 'United States');
insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (7, 251, '2019-12-07 19:17:20', '2020-04-07 01:43:23', '2020-06-10 12:16:30', 'Koper', 'Air', 'Brandy Flippelli', '72464 Jenifer Street', 'Pittsburgh', 'Pennsylvania', '15261', 'United States');
insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (8, 8357, '2019-07-07 03:07:45', '2020-04-15 16:13:39', '2020-05-05 11:41:01', 'Koper', 'Air', 'Nelson Walls', '12 Scott Terrace', 'Glendale', 'Arizona', '85305', 'United States');
insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (8, 4147, '2019-09-28 06:02:22', '2020-04-08 12:57:28', '2020-07-11 15:35:15', 'Koper', 'Sea', 'Tamma Polet', '412 Merchant Court', 'Portland', 'Oregon', '97255', 'United States');
insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (3, 7589, '2020-02-16 06:08:05', '2020-03-28 07:44:38', '2020-05-14 17:55:50', 'Koper', 'Sea', 'Murray Archbald', '92433 New Castle Parkway', 'Ashburn', 'Virginia', '22093', 'United States');
insert into orders (CustomerID, EmployeeID, OrderDate, RequireDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) values (15, 7357, '2020-02-04 16:01:51', '2020-04-05 07:13:16', '2020-06-25 08:19:18', 'Koper', 'Air', 'Leshia Fay', '64494 Calypso Street', 'Phoenix', 'Arizona', '85067', 'United States');

insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (13, 14, 605, 726, 13);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (20, 3, 274, 133, 78);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (3, 18, 20, 275, 51);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (2, 8, 503, 76, 30);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (3, 20, 370, 389, 43);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (9, 20, 119, 779, 67);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (16, 4, 367, 761, 63);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (12, 2, 326, 841, 66);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (15, 4, 206, 534, 22);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (9, 2, 541, 511, 1);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (11, 16, 144, 215, 11);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (1, 14, 688, 48, 48);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (14, 6, 410, 715, 54);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (6, 3, 38, 42, 96);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (17, 20, 668, 215, 55);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (16, 4, 112, 260, 36);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (15, 4, 711, 911, 51);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (17, 5, 739, 415, 81);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (14, 3, 874, 147, 29);
insert into order_detail (OrderID, ProductID, UnitPrice, Quantity, Discount) values (19, 9, 337, 253, 41);

insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Food Colouring - Pink', 875, 823, 86, 751, 578, 889, 331, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Yoplait - Strawbrasp Peac', 549, 728, 67, 381, 821, 975, 598, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Mushroom - Chanterelle, Dry', 178, 787, 38, 556, 332, 91, 429, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Wine - Chateau Aqueria Tavel', 65, 753, 49, 203, 831, 276, 215, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Wine - Riesling Alsace Ac 2001', 495, 373, 89, 675, 651, 414, 606, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Shrimp, Dried, Small / Lb', 984, 62, 51, 90, 786, 387, 325, false);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Kellogs All Bran Bars', 791, 710, 14, 585, 359, 758, 347, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Soup Campbells - Italian Wedding', 451, 363, 87, 328, 693, 275, 826, false);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Sambuca - Opal Nera', 65, 581, 56, 334, 874, 533, 453, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Crab Meat Claw Pasteurise', 70, 669, 39, 563, 161, 516, 477, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Lettuce - Mini Greens, Whole', 503, 756, 91, 184, 530, 251, 417, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Tomato - Green', 855, 775, 7, 938, 545, 409, 247, false);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Sugar Thermometer', 673, 598, 63, 64, 576, 655, 952, true);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Plasticknivesblack', 263, 492, 97, 508, 785, 974, 26, false);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Bonito Flakes - Toku Katsuo', 7, 640, 52, 363, 551, 877, 210, false);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Cinnamon Buns Sticky', 755, 488, 48, 112, 543, 838, 96, false);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Ginger - Ground', 606, 428, 55, 619, 421, 911, 203, false);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Beer - Blue Light', 261, 529, 18, 902, 291, 423, 449, false);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Bread - Flat Bread', 52, 859, 36, 20, 415, 330, 291, false);
insert into product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) values ('Bread - Assorted Rolls', 143, 976, 48, 152, 431, 269, 354, true);

SELECT * from order_detail Where productID = 2;