--CREATE DATABASE ABC_CAR_RENT--
CREATE DATABASE ABC_CAR_RENT;

SELECT * FROM information_schema.tables
WHERE table_schema = 'public' ;

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
	Age INT,
    Address VARCHAR(100),
    PhoneNumber VARCHAR(15),
    License_Number VARCHAR(20) UNIQUE
);
SELECT * FROM Customer
DROP TABLE  Customer

-- INSERT RECORDS
INSERT iNTO Customer(CustomerID,First_Name,Last_Name,Age,Address,PhoneNumber,License_Number)
VALUES
(1001,'Saman','Nishantha',34,'No:34/2,Temple road,Kady','0781210939','GD349'),
(1002,'Dushan','Wikramasingha',45,'No:3/5,Board road,Colombo','0754208327','GD347'),
(1003, 'John', 'Doe', 30, '123 Main Street', '555-555-5555', 'ABC12340'),
(1004, 'Jane', 'Smith', 25, '456 Elm Street', '555-555-5556', 'DEF67890'),
(1005, 'Alice', 'Johnson', 35, '789 Oak Avenue', '555-555-5557', 'GHI54321'),
(1006, 'Mark', 'Davis', 28, '101 Maple Lane', '555-555-5558', 'JKL98765'),
(1007, 'Sarah', 'Wilson', 40, '202 Pine Street', '555-555-5559', 'MNO12345'),
(1008, 'Michael', 'Brown', 22, '303 Oak Road', '555-555-5560', 'PQR54321'),
(1009, 'Emily', 'Anderson', 33, '404 Cedar Avenue', '555-555-5561', 'STU65432'),
(1010, 'Daniel', 'Miller', 29, '505 Birch Street', '555-555-5562', 'VWX78901'),
(1011, 'Olivia', 'Garcia', 26, '606 Pine Lane', '555-555-5563', 'YZA23456'),
(1012, 'Emily', 'Johnson', 29, '404 Cedar Avenue', '555-555-5561', 'STU98765'),
(1013, 'David', 'Smith', 33, '505 Birch Road', '555-555-5562', 'VWX12345'),
(1014, 'Linda', 'Miller', 27, '606 Willow Street', '555-555-5563', 'YZA54321'),
(1015, 'Umesh', 'Sathsarana', 29, '123 Street jode', '555-777-5563', 'YOA54334');



SELECT * FROM Car
DROP TABLE  Car

CREATE TABLE Car (
    Car_ID INT PRIMARY KEY,
    Car_Make VARCHAR(50),
    Car_Model VARCHAR(50),
    Car_YearMade INT,
    Color VARCHAR(20),
	OdometerReading VARCHAR(15),
    CarLicense_Plate VARCHAR(15),
	Deposit_Amount_Price VARCHAR(15),
	Price_Per_Day VARCHAR(15),
	Price_Per_Week VARCHAR(15),
	Price_Per_Two_Weeks VARCHAR(15),
	Price_Per_Month VARCHAR(15),
	Price_Per_Additional_KM VARCHAR(15),
	Free_KM_Per_Day VARCHAR(15),
    ClassID  INT,
	FOREIGN KEY (ClassID) REFERENCES Car_Class(ClassID),
	CustomerID  INT,
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
           -- INSERT RECORDS--
INSERT INTO Car (Car_ID, Car_Make, Car_Model, Car_YearMade, Color, OdometerReading, CarLicense_Plate, Deposit_Amount_Price, Price_Per_Day, Price_Per_Week, Price_Per_Two_Weeks, Price_Per_Month, Price_Per_Additional_KM, Free_KM_Per_Day,ClassID,CustomerID)
VALUES 
(2001, 'Toyota', 'Camry', 2019, 'Blue', 45000, 'XV123', 'RS_900', 'RS_200', 'RS_1400', 'RS_2800', 'RS_6000', 'RS_500', '100KM',001,1001),
(2002, 'Honda', 'Civic', 2020, 'Red', 40000, 'VC789', 'RS_600', 'RS_300', 'RS_2100', 'RS_4200', 'RS_9000', 'RS_750', '100KM',002,1002),
(2003, 'Ford', 'Focus', 2018, 'Silver', 55000, 'DE456', 'RS_450', 'RS_500', 'RS_3500', 'RS_7000', 'RS_15000', 'RS_600', '100KM',003,1003),
(2004, 'Chevrolet', 'Malibu', 2021, 'Black', 30000, 'GI789', 'RS_450', 'RS_500', 'RS_4900', 'RS_5800', 'RS_21000', 'RS_600', '100KM',004,1004),
(2005, 'Nissan', 'Altima', 2020, 'White', 42000, 'JK012', 'RS_600', 'RS_300', 'RS_2100', 'RS_4200', 'RS_9000', 'RS_750', '100KM',005,1005),
(2006, 'Hyundai', 'Elantra', 2019, 'Gray', 48000, 'MO345', 'RS_900', 'RS_200', 'RS_3150', 'RS_6300', 'RS_13500', 'RS_500', '100KM',006,1006),
(2007, 'Kia', 'Forte', 2021, 'Blue', 32000, 'PR678', 'RS_900', 'RS_200','RS_2450', 'RS_4900', 'RS_10500', 'RS_500', '100KM',007,1007),
(2008, 'Mazda', 'Mazda3', 2022, 'Red', 25000, 'SU901', 'RS_600', 'RS_300', 'RS_4300', 'RS_8600', 'RS_18000', 'RS_750', '100KM',008,1008),
(2009, 'Volkswagen', 'Jetta', 2017, 'Silver', 60000, 'VX234', 'RS_900', 'RS_200', 'RS_1750', 'RS_3500', 'RS_7500', 'RS_500', '100KM',009,1009),
(2010, 'Subaru', 'Impreza', 2020, 'Green', 38000, 'YZ567', 'RS_580', 'RS_550', 'RS_3850', 'RS_7700', 'RS_16500', 'RS_450', '100KM',0010,1010),
(2011, 'Toyota', 'Corolla', 2018, 'Black', 52000, 'BC890', 'RS_900', 'RS_200', 'RS_1400', 'RS_2800', 'RS_6000', 'RS_500', '100KM',0011,1011),
(2012, 'Honda', 'Accord', 2019, 'White', 47000, 'EG123', 'RS_900', 'RS_200', 'RS_2100', 'RS_4200', 'RS_9000', 'RS_500', '100KM',0012,1012),
(2013, 'Ford', 'Fusion', 2020, 'Blue', 41000, 'HIJ456', 'RS_900', 'RS_200', 'RS_3500', 'RS_7000', 'RS_15000', 'RS_500', '100KM',0013,1013),
(2014, 'Chevrolet', 'Cruze', 2017, 'Silver', 58000, 'KM789', 'RS_450', 'RS_500', 'RS_4900', 'RS_5800', 'RS_21000', 'RS_600', '100KM',0014,1014),
(2015, 'Nissan', 'Sentra', 2019, 'Red', 46000, 'NP012', 'RS_600', 'RS_300', 'RS_2100', 'RS_4200', 'RS_9000', 'RS_750', '100KM',0015,1015);

INSERT INTO Car (Car_ID, Car_Make, Car_Model, Car_YearMade, Color, OdometerReading, CarLicense_Plate, Deposit_Amount_Price, Price_Per_Day, Price_Per_Week, Price_Per_Two_Weeks, Price_Per_Month, Price_Per_Additional_KM, Free_KM_Per_Day,ClassID,CustomerID)
VALUES
(2016, 'Honda', 'Civic', 2020, 'Red', 45000, 'XV123', 'RS_900', 'RS_200', 'RS_1400', 'RS_2800', 'RS_6000', 'RS_500', '100KM',001,1001);

UPDATE  Car 
SET Color='Blue'
WHERE Car_ID='2016';
DELETE FROM Car
WHERE Car_ID = '2016';





                                                         

CREATE TABLE Car_Class (
	ClassID INT PRIMARY KEY,
    Class_Name varchar(255),
	Deposit_Date varchar(10),
    ExtraKilometer_Record varchar(50) UNIQUE
);
SELECT * FROM Car_Class
DROP TABLE Car_Class
DELETE FROM Car_Class

INSERT INTO Car_Class (ClassID, Class_Name,Deposit_Date, ExtraKilometer_Record)
VALUES
(001, 'SEDAN', '2020-05-03', '20KM'),
(002, 'SUV',  '2020-05-24','30KM'),
(003, 'LUXURY', '2020-06-13','50KM'),
(004, 'LUXURY',  '2020-06-30','90KM'),
(005, 'SUV', '2020-07-12','100KM'),
(006, 'SEDAN', '2020-07-20','65KM'),
(007, 'SEDAN', '2020-07-28','70KM'),
(008, 'SUV', '2020-08-12','34KM'),
(009, 'SEDAN', '2020-08-20','55KM'),
(0010, 'Sports', '2020-08-27','26KM'),
(0011, 'SEDAN', '2020-09-03','48KM'),
(0012,'SEDAN', '2020-09-10','68KM'),
(0013,'SEDAN', '2020-09-28','75KM'),
(0014,'LUXURY', '2020-10-03','62KM'),
(0015,'SUV', '2020-11-24','61KM');


--DROP TABLE Car_Class;


CREATE TABLE Rentals (
    Rental_ID INT PRIMARY KEY,
	Rent_Distance varchar(20),
	Durations varchar(20),
    Rent_Date varchar(20),
	Retrun_Date varchar(20),
	Rental_Policy_ID INT,
	FOREIGN KEY (Rental_Policy_ID) REFERENCES Rental_Policy(Rental_Policy_ID),
	CustomerID INT,
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
	Car_ID INT,
	FOREIGN KEY ( Car_ID) REFERENCES Car( Car_ID)
);
SELECT * FROM Rentals;
DROP TABLE Rentals;
DELETE FROM Rentals

INSERT INTO Rentals (Rental_ID, Rent_Distance,Durations,Rent_Date,Retrun_Date,Rental_Policy_ID,CustomerID,Car_ID)
VALUES
('3001','120KM','2_days','2020-05-04','2020-05-07',1101,1001,2001),
('3002','130KM','1_days','2020-05-26','2020-05-28',1102,1002,2002),
('3003','150KM','7_days','2020-06-14','2020-05-22',1103,1003,2003),
('3004','190KM','2_days','2020-06-30','2020-07-02',1104,1004,2004),
('3005','200KM','21_days','2020-07-13','2020-08-04',1105,1005,2005),
('3006','165KM','4_days','2020-07-20','2020-07-25',1106,1006,2006),
('3007','170KM','3_days','2020-07-28','2020-0-02',1107,1007,2007),
('3008','134KM','30_days','2020-08-12','2020-09-11',1108,1008,2008),
('3009','155KM','1_days','2020-08-20','2020-08-22',1109,1009,2009),
('3010','126KM','2_days','2020-08-27','2020-08-30',1110,1010,2010),
('3011','148KM','1_days','2020-09-04','2020-09-05',1111,1011,2011),
('3012','168KM','1_days','2020-09-11','2020-09-13',1112,1012,2012),
('3013','175KM','2_days','2020-09-28','2020-09-30',1113,1013,2013),
('3014','162KM','1_days','2020-10-04','2020-10-06',1114,1014,2014),
('3015','161KM','2_days','2020-11-25','2020-11-28',1115,1015,2015);

INSERT INTO Rentals (Rental_ID, Rent_Distance,Durations,Rent_Date,Retrun_Date,Rental_Policy_ID,CustomerID,Car_ID)
VALUES
('3016','130KM','4_days','2020-05-04','2020-05-07',1101,1001,2001);

UPDATE Rentals
SET Durations='7_days'
WHERE Car_ID='2016';
DELETE FROM Rentals 
WHERE Rental_ID= '3016';


CREATE TABLE Rental_Policy(
    Rental_Policy_ID INT PRIMARY KEY NOT null,
	Rental_policy_Type varchar(100) NOT null,
	Durations varchar(60),
	Deposit_Amount_Price varchar(10),
	Free_KM_Per_Day varchar(50)
);

SELECT * FROM Rental_Policy;
DROP TABLE Rental_Policy;
INSERT INTO Rental_Policy (Rental_Policy_ID,Rental_policy_Type,Durations,Deposit_Amount_Price,Free_KM_Per_Day)
VALUES
('1101', 'Per_Day','2_days','RS_900','100KM'),
('1102', 'Per_Day','1_days','RS_600','100KM'),
('1103', 'Per_Week','7_days','RS_450','100KM'),
('1104', 'Per_Week','2_days','RS_700','100KM'),
('1105', 'Per_Two_Weeks','21_days','RS_550','100kM'),
('1106', 'Per_Week','4_days','RS_480','100KM'),
('1107', 'Per_Week','3_days','RS_650','100KM'),
('1108', 'Per_Month','30_days','RS_750','100KM'),
('1109', 'Per_Day','1_days','RS_400','100KM'),
('1110', 'Per_Week','2_days','RS_580','100KM'),
('1111', 'Per_Day','1_days','RS_900','100KM'),
('1112', 'Per_Day','1_days','RS_600','100KM'),
('1113', 'Per_Week','2_days','RS_620','100KM'),
('1114', 'Per_Day','1_days','RS_700','100KM'),
('1115', 'Per_Week','2_days','RS_540','100KM');


CREATE TABLE Billing (
   	Bil_ID varchar PRIMARY KEY,
	Additional_Charge varchar(50),
	Bill_Amount varchar(50),
	CustomerID INT, 
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
		
);

SELECT * FROM Billing

INSERT INTO Billing (Bil_ID,Additional_Charge,Bill_Amount,CustomerID)
VALUES
('B001','10000','11400',1001),
('B002','22500','23000',1002),
('B003','30000','32100',1003),
('B004','54000','56100',1004),
('B005','75000','90000',1005),
('B006','32500','33900',1006),
('B007','35000','36400',1007),
('B008','25500','40500',1008),
('B009','27500','27700',1009),
('B010','11700','13100',1010),
('B011','24000','24200',1011),
('B012','34000','34200',1012),
('B013','37500','38900',1013),
('B014','37200','37400',1014),
('B015','45750','47150',1015);


SELECT Car.Car_Make, Car.Car_Model, COUNT(Rentals.CustomerID) AS BorrowerCount
FROM Car
LEFT JOIN Rentals ON Car.Car_ID = Rentals.Car_ID
WHERE Car.Car_Make = 'YourCarMake' AND Car.Car_Model = 'YourCarModel'
GROUP BY Car.Car_Make, Car.Car_Model;

SELECT SUM(Bill_Amount) AS TotalPayments
FROM Billing
INNER JOIN Rentals ON Billing.Rental_ID = Rentals.Rental_ID
WHERE Rent_Date BETWEEN 'Rent_Date' AND 'Return_Date';

SELECT Car_ID, Car_Make, Car_Model, Car_YearMade, Color, CarLicense_Plate
FROM Car;

