USE CarDealershipsDB;
GO

-- =============================================
-- 1NF: Check for Atomic Values and Primary Keys
-- =============================================

-- CarInventory table: Ensure CarID is the primary key
SELECT CarID FROM CarInventory;

-- SalesPerson table: Ensure SalesPersonID is the primary key
SELECT SalesPersonID FROM SalesPerson;

-- Customer table: Ensure CustomerID is the primary key
SELECT CustomerID FROM Customer;

-- RecordSales table: Ensure SaleID is the primary key
SELECT SaleID FROM RecordSales;

-- =============================================
-- 2NF: Check for Partial Dependencies
-- =============================================

-- CarInventory table: Check all attributes depend on CarID
SELECT CarID, Year, Make, Model, Type, Price FROM CarInventory;

-- SalesPerson table: Check all attributes depend on SalesPersonID
SELECT SalesPersonID, FirstName, LastName, PhoneNumber, Email, HireDate FROM SalesPerson;

-- Customer table: Check all attributes depend on CustomerID
SELECT CustomerID, FirstName, LastName, PhoneNumber, Email, Address, City, State, Zip FROM Customer;

-- RecordSales table: Check all attributes depend on SaleID
SELECT SaleID, SalesPersonID, CarID, CustomerID, SalesPrice FROM RecordSales;

-- =============================================
-- 3NF: Check for Transitive Dependencies
-- =============================================

-- CarInventory table: Ensure no transitive dependencies
SELECT CarID, Year, Make, Model, Type, Price FROM CarInventory;

-- SalesPerson table: Ensure no transitive dependencies
SELECT SalesPersonID, FirstName, LastName, PhoneNumber, Email, HireDate FROM SalesPerson;

-- Customer table: Ensure no transitive dependencies
SELECT CustomerID, FirstName, LastName, PhoneNumber, Email, Address, City, State, Zip FROM Customer;

-- RecordSales table: Ensure no transitive dependencies
SELECT SaleID, SalesPersonID, CarID, CustomerID, SalesPrice FROM RecordSales;

-- =============================================
-- Functional Dependencies Verification
-- =============================================

-- CarInventory: CarID → Year, Make, Model, Type, Price
-- SalesPerson: SalesPersonID → FirstName, LastName, PhoneNumber, Email, HireDate
-- Customer: CustomerID → FirstName, LastName, PhoneNumber, Email, Address, City, State, Zip
-- RecordSales: SaleID → SalesPersonID, CarID, CustomerID, SalesPrice

-- Example verification for Customer table
SELECT CustomerID, City, State, Zip 
FROM Customer
WHERE City IS NOT NULL 
AND State IS NOT NULL 
AND Zip IS NOT NULL;

-- =============================================
-- Foreign Key Constraint Verification
-- =============================================

-- Ensure foreign key constraints are in place for SalesPerson table
ALTER TABLE SalesPerson
ADD CONSTRAINT FK_SalesPerson_UserLogin
FOREIGN KEY (SalesPersonID) REFERENCES UserLogin(UserID);
GO

-- Ensure foreign key constraints are in place for RecordSales table
ALTER TABLE RecordSales
ADD CONSTRAINT FK_RecordSales_SalesPerson
FOREIGN KEY (SalesPersonID) REFERENCES SalesPerson(SalesPersonID);

ALTER TABLE RecordSales
ADD CONSTRAINT FK_RecordSales_Car
FOREIGN KEY (CarID) REFERENCES CarInventory(CarID);

ALTER TABLE RecordSales
ADD CONSTRAINT FK_RecordSales_Customer
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
GO
