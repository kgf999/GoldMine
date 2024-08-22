USE CarDealershipsDB;
GO

-- Insert sample data into UserLogin table
INSERT INTO UserLogin (Username, Password, Email, Role)
VALUES 
('admin', HASHBYTES('SHA2_256', 'AdminPassword123'), 'admin@example.com', 'Admin'),
('johndoe', HASHBYTES('SHA2_256', 'John123!'), 'johndoe@example.com', 'User'),
('janedoe', HASHBYTES('SHA2_256', 'Jane123!'), 'janedoe@example.com', 'User'),
('samsmith', HASHBYTES('SHA2_256', 'SamSmith123!'), 'samsmith@example.com', 'User'),
('emilyjones', HASHBYTES('SHA2_256', 'EmilyJones123!'), 'emilyjones@example.com', 'User'),
('robertbrown', HASHBYTES('SHA2_256', 'RobertBrown123!'), 'robertbrown@example.com', 'User');
GO

-- Insert sample data into Customer table
INSERT INTO Customer (FirstName, LastName, PhoneNumber, Email, Address, City, State, Zip)
VALUES 
('John', 'Doe', '555-1234', 'john.doe@example.com', '123 Maple St', 'Springfield', 'IL', '62701'),
('Jane', 'Smith', '555-5678', 'jane.smith@example.com', '456 Oak St', 'Chicago', 'IL', '60601'),
('Emily', 'Johnson', '555-8765', 'emily.johnson@example.com', '789 Pine St', 'Peoria', 'IL', '61614'),
('Michael', 'Brown', '555-4321', 'michael.brown@example.com', '101 Cedar St', 'Naperville', 'IL', '60540'),
('Sarah', 'Davis', '555-0987', 'sarah.davis@example.com', '202 Birch St', 'Rockford', 'IL', '61101'),
('David', 'Miller', '555-6543', 'david.miller@example.com', '303 Elm St', 'Evanston', 'IL', '60201');
GO

-- Insert sample data into SalesPerson table
INSERT INTO SalesPerson (FirstName, LastName, PhoneNumber, Email, HireDate, UserID)
VALUES 
('Alice', 'Green', '555-1122', 'alice.green@example.com', '2023-01-15', 2),  -- Assign UserID
('Bob', 'White', '555-2233', 'bob.white@example.com', '2022-06-21', 3),    -- Assign UserID
('Charlie', 'Black', '555-3344', 'charlie.black@example.com', '2021-09-10', 4), -- Assign UserID
('Diana', 'Blue', '555-4455', 'diana.blue@example.com', '2020-03-18', 5),   -- Assign UserID
('Edward', 'Red', '555-5566', 'edward.red@example.com', '2019-11-25', 6),   -- Assign UserID
('Fiona', 'Yellow', '555-6677', 'fiona.yellow@example.com', '2018-07-30', 1);  -- Assign UserID
GO

-- Insert sample data into CarInventory table
INSERT INTO CarInventory (Year, Make, Model, Type, Price)
VALUES 
(2022, 'Toyota', 'Camry', 'Sedan', 25000.00),
(2021, 'Honda', 'Civic', 'Sedan', 22000.00),
(2023, 'Ford', 'F-150', 'Truck', 35000.00),
(2020, 'Chevrolet', 'Malibu', 'Sedan', 20000.00),
(2019, 'Nissan', 'Rogue', 'SUV', 24000.00),
(2022, 'Tesla', 'Model 3', 'Sedan', 40000.00);
GO

-- Insert sample data into RecordSales table
INSERT INTO RecordSales (SalesPersonID, CarID, CustomerID, SalesPrice)
VALUES 
(1, 1, 1, 24000.00),
(2, 2, 2, 21000.00),
(3, 3, 3, 36000.00),
(4, 4, 4, 19000.00),
(5, 5, 5, 26000.00),
(6, 6, 6, 39000.00);
GO
