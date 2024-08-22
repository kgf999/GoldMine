USE CarDealershipsDB;
GO

-- Create the UserLogin table
CREATE TABLE UserLogin (
    UserID INT IDENTITY(1,1) PRIMARY KEY,   -- Primary Key, Auto-incremented
    Username NVARCHAR(50) UNIQUE NOT NULL,  -- Unique and Required
    Password NVARCHAR(255) NOT NULL,        -- Required
    Email NVARCHAR(100) UNIQUE NOT NULL,    -- Unique and Required
    Role NVARCHAR(50)                       -- Optional
);
GO

-- Create the Customer table
CREATE TABLE Customer (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    PhoneNumber NVARCHAR(15),
    Email NVARCHAR(100),
    Address NVARCHAR(100),
    City NVARCHAR(50),
    State NVARCHAR(2),
    Zip NVARCHAR(10)
);
GO

-- Create the SalesPerson table with UserID as a foreign key
CREATE TABLE SalesPerson (
    SalesPersonID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    PhoneNumber NVARCHAR(15),
    Email NVARCHAR(100),
    HireDate DATE,
    UserID INT FOREIGN KEY REFERENCES UserLogin(UserID)  -- Foreign Key from UserLogin table
);
GO

-- Create the CarInventory table
CREATE TABLE CarInventory (
    CarID INT IDENTITY(1,1) PRIMARY KEY,
    Year INT,
    Make NVARCHAR(50),
    Model NVARCHAR(50),
    Type NVARCHAR(50),
    Price DECIMAL(10, 2)
);
GO

-- Create the RecordSales table
CREATE TABLE RecordSales (
    SaleID INT IDENTITY(1,1) PRIMARY KEY,
    SalesPersonID INT FOREIGN KEY REFERENCES SalesPerson(SalesPersonID),
    CarID INT FOREIGN KEY REFERENCES CarInventory(CarID),
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
    SalesPrice DECIMAL(10, 2)
);
GO
