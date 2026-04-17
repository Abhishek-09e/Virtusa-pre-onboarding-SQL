CREATE DATABASE IF NOT EXISTS SwiftShip;
USE SwiftShip;
CREATE TABLE Partners (PartnerID INT PRIMARY KEY,PartnerName VARCHAR(100),ContactInfo VARCHAR(200));

CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY,
    PartnerID INT,
    OrderDate DATE,
    PromisedDate DATE,
    ActualDeliveryDate DATE,
    DestinationCity VARCHAR(100),
    FOREIGN KEY (PartnerID) REFERENCES Partners(PartnerID)
);

CREATE TABLE DeliveryLogs (
    LogID INT PRIMARY KEY,
    ShipmentID INT,
    Status VARCHAR(50), 
    LogDate DATE,
    FOREIGN KEY (ShipmentID) REFERENCES Shipments(ShipmentID)
);

INSERT INTO Partners VALUES 
(1,'BlueDart','support@bluedart.com'),
(2,'Delhivery','help@delhivery.com'),
(3,'DTDC','info@dtdc.com'),
(4,'Gati Logistics','contact@gati.com'),
(5,'DHL','contact@dhl.com'),
(6,'FedEx','contact@fedex.com');

INSERT INTO Shipments VALUES
(201, 1, '2026-03-01','2026-03-05','2026-03-06','Mumbai'),
(202, 2, '2026-03-02','2026-03-06','2026-03-08','Delhi'),
(203, 3, '2026-03-03','2026-03-07','2026-03-07','Bengaluru'),
(204, 4, '2026-03-04','2026-03-08','2026-03-09','Chennai'),
(205, 2, '2026-03-05','2026-03-09','2026-03-09','Hyderabad'),
(206, 1, '2026-03-06','2026-03-10','2026-03-12','Kolkata'),
(207, 5, '2026-03-07','2026-03-11','2026-03-13','Jaipur'),
(208, 6, '2026-03-08','2026-03-12','2026-03-12','Lucknow'),
(209, 3, '2026-03-09','2026-03-13','2026-03-14','Pune'),
(210, 4, '2026-03-10','2026-03-14','2026-03-15','Ahmedabad');


INSERT INTO DeliveryLogs VALUES
(3001,201,'Successful','2026-03-06'),
(3002,202,'Returned','2026-03-08'),
(3003,203,'Successful','2026-03-07'),
(3004,204,'Successful','2026-03-09'),
(3005,205,'Lost','2026-03-09'),
(3006,206,'Successful','2026-03-12'),
(3007,207,'Successful','2026-03-13'),
(3008,208,'Returned','2026-03-12'),
(3009,209,'Successful','2026-03-14'),
(3010,210,'Successful','2026-03-15');



-- Check tables
SELECT * FROM Partners;
SELECT * FROM Shipments;
SELECT * FROM DeliveryLogs;
