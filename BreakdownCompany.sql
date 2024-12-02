CREATE DATABASE breakdownCompany;
USE breakdownCompany;

CREATE TABLE IF NOT EXISTS Members(
	memberId INT PRIMARY KEY,
	firstName VARCHAR(20),
	lastName VARCHAR(20),
	memberLocation VARCHAR(20),
	memberAge INT
);

INSERT INTO Members(memberId, firstName, lastName, memberLocation, memberAge)
VALUES
	(1, 'John', 'Doe', 'New York', 32),
	(2, 'Jane', 'Smith', 'Los Angeles', 27),
	(3, 'Mark', 'Jones', 'Chicago', 45),
	(4, 'Emily', 'Davis', 'Houston', 30),
	(5, 'Luke', 'Brown', 'Phoenix', 38),
	(6, 'Sophia', 'White', 'Dallas', 29),
	(7, 'Liam', 'Taylor', 'Miami', 41),
	(8, 'Olivia', 'Green', 'San Diego', 36),
	(9, 'James', 'Harris', 'Denver', 33),
	(10, 'Mia', 'Robinson', 'Atlanta', 25);
    
CREATE TABLE IF NOT EXISTS Vehicles(
	vehicleReg VARCHAR(10) PRIMARY KEY,
	vehicleMake VARCHAR(10),
	vehicleModel VARCHAR(10)
     
);

INSERT INTO Vehicles(vehicleReg, vehicleMake, vehicleModel)
VALUES
	('ABC1234', 'Toyota', 'Corolla', 1),
	('XYZ5678', 'Ford', 'Mustang', 2),
	('DEF1111', 'Honda', 'Civic', 3),
	('GHI2222', 'Chevy', 'Cruze', 4),
	('JKL3333', 'BMW', 'X5', 5),
	('MNO4444', 'Audi', 'A4', 1),
	('PQR5555', 'Mercedes', 'C300', 2),
	('STU6666', 'Nissan', 'Altima', 3),
	('VWX7777', 'Hyundai', 'Elantra', 6),
	('YZA8888', 'Tesla', 'Model S', 7),
	('BCD9999', 'Kia', 'Sportage', 8),
	('EFG1112', 'Subaru', 'Forester', 9),
	('HIJ1212', 'Jeep', 'Wrangler', 10),
	('KLM1414', 'Mazda', 'CX-5', 4),
	('NOP1515', 'Honda', 'Accord', 5),
	('QRS1616', 'Chervy', 'Malibu', 6),
	('TUV1717', 'Nissan', 'Sentra', 7),
	('WXY1818', 'Ford', 'Explorer', 8),
	('ZAB1919', 'Volvo', 'XC90', 9),
	('CDE2020', 'Lexus', 'RX350', 10);
    
CREATE TABLE IF NOT EXISTS Engineers(
	engineerId INT PRIMARY KEY,
    firstName VARCHAR(20),
    lastName VARCHAR(20)
    
);

INSERT INTO Engineers(engineerId, firstName, lastName)
VALUES
	(1, 'Ethan', 'Williams'),
	(2, 'Olivia', 'Miller'),
	(3, 'Sophia', 'Clark'),
	(4, 'Noah', 'Walker');
    
CREATE TABLE IF NOT EXISTS Breakdowns(
	breakdownId INT PRIMARY KEY,
    breakdownDate DATE,
    breakdownTime TIME,
    breakdownLocation VARCHAR(20)
    
);

INSERT INTO Breakdowns(breakdownId, breakdownDate, breakdownTime, breakdownLocation)
VALUES
	(1, 'ABC1234', 1, '2024-09-10', '10:30:00', 'New York'),
	(2, 'XYZ5678', 2, '2024-09-10', '11:00:00', 'Los Angeles'),
	(3, 'DEF1111', 3, '2024-09-10', '12:30:00', 'Chicago'),
	(4, 'GHI2222', 4, '2024-09-15', '14:00:00', 'Houston'),
	(5, 'JKL3333', 1, '2024-09-18', '09:45:00', 'Phoenix'),
	(6, 'MNO4444', 2, '2024-09-25', '08:20:00', 'New York'),
	(7, 'PQR5555', 3, '2024-09-28', '11:15:00', 'Los Angeles'),
	(8, 'STU6666', 4, '2024-09-30', '15:30:00', 'Chicago'),
	(9, 'ABC1234', 2, '2024-10-10', '09:30:00', 'New York'),
	(10, 'XYZ5678', 3, '2024-10-15', '13:30:00', 'Los Angeles'),
	(11, 'DEF1111', 4, '2024-10-20', '14:45:00', 'Chicago'),
	(12, 'MNO4444', 1, '2024-10-22', '16:20:00', 'New York'),
	(13, 'JKL3333', 2, '2024-10-25', '17:00:00', 'Phoenix'),
	(14, 'VWX7777', 3, '2024-11-01', '08:00:00', 'Dallas'),
	(15, 'YZA8888', 4, '2024-11-05', '09:00:00', 'Miami'),
	(16, 'BCD9999', 1, '2024-11-10', '10:30:00', 'San Diego'),
	(17, 'EFG1112', 2, '2024-11-15', '14:00:00', 'Denver'),
	(18, 'HIJ1212', 3, '2024-11-18', '11:00:00', 'Atlanta'),
	(19, 'KLM1414', 4, '2024-11-20', '15:45:00', 'Houston'),
	(20, 'NOP1515', 1, '2024-11-25', '16:30:00', 'Phoenix');
    
ALTER TABLE Vehicles ADD FOREIGN KEY (memberId) REFERENCES Members(memberId);
ALTER TABLE Breakdowns ADD FOREIGN KEY (vehicleReg) REFERENCES Vehicles(vechicleReg);
ALTER TABLE Breakdowns ADD FOREIGN KEY (engineerId) REFERENCES Engineers(engineerId);

SELECT * FROM Members LIMIT 5;

SELECT * FROM Members LIMIT 5 OFFSET 5;

SELECT * FROM Members WHERE memberAge > 30;

SELECT * FROM Members WHERE memberLocation IN ('New York', 'Los Angeles');

SELECT * FROM Vehicles WHERE vehicleMake IN ('Toyota', 'Honda');

SELECT * FROM Vehicles WHERE vehicleReg LIKE 'A%';

SELECT * FROM Vehicles WHERE vehicleModel LIKE '%5';

SELECT * FROM Engineers ORDER BY lastName;

SELECT * FROM Members ORDER BY memberAge DESC;

SELECT COUNT(*) AS total_members FROM Members;

SELECT * FROM Breakdowns WHERE YEAR(breakdownDate) = 2024;

SELECT * FROM Breakdowns WHERE vehicleReg IN ('ABC1234', 'XYZ5678');

SELECT * FROM Vehicles WHERE vehicleMake = 'Ford';

SELECT * FROM Members WHERE firstName LIKE 'J%';

SELECT * FROM Breakdowns WHERE breakdownDate < '2024-09-01'; 
   
SELECT * FROM Members WHERE lastName LIKE '%son%';	
 
SELECT * FROM Breakdowns WHERE breakdownLocation LIKE '%New%';

SELECT * FROM Members ORDER BY memberAge DESC LIMIT 1;

SELECT Vehicles.* FROM Vehicles JOIN Members ON Vehicles.memberId = Members.memberId WHERE Members.memberLocation = 'Los Angeles';

SELECT * FROM Breakdowns WHERE engineerId = 1;

SELECT * FROM Members WHERE memberLocation IN ('Phoenix', 'Houston');

SELECT * FROM Vehicles WHERE vehicleModel IN ('Civic', 'Mustang');

SELECT * FROM Members WHERE firstName LIKE '%a%';

SELECT * FROM Breakdowns WHERE breakdownDate BETWEEN '2024-08-01' AND '2024-08-31';

SELECT * FROM Members WHERE memberAge NOT BETWEEN 20 AND 40;

SELECT * FROM Breakdowns WHERE breakdownDate > '2024-10-01';

SELECT vehicleReg, COUNT(*) AS breakdownCount FROM Breakdowns GROUP BY vehicleReg;

SELECT v.memberId, m.firstName, m.lastName, COUNT(v.vehicleReg) AS vehicleCount FROM Vehicles v
JOIN Members m ON v.memberId = m.memberId GROUP BY v.memberId HAVING COUNT(v.vehicleReg) > 1;