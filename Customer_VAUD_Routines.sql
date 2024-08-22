USE CarDealershipsDB;
GO

-- =============================================
-- Routine: ViewCustomers
-- Description: Retrieves all records from the Customer table.
-- =============================================
CREATE PROCEDURE ViewCustomers
AS
BEGIN
    SELECT * FROM Customer;
END;
GO

-- =============================================
-- Routine: AddCustomer
-- Description: Inserts a new record into the Customer table.
-- =============================================
CREATE PROCEDURE AddCustomer
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @PhoneNumber NVARCHAR(15),
    @Email NVARCHAR(100),
    @Address NVARCHAR(100),
    @City NVARCHAR(50),
    @State NVARCHAR(2),
    @Zip NVARCHAR(10)
AS
BEGIN
    INSERT INTO Customer (FirstName, LastName, PhoneNumber, Email, Address, City, State, Zip)
    VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @Address, @City, @State, @Zip);
END;
GO

-- =============================================
-- Routine: UpdateCustomer
-- Description: Updates an existing record in the Customer table.
-- =============================================
CREATE PROCEDURE UpdateCustomer
    @CustomerID INT,
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @PhoneNumber NVARCHAR(15),
    @Email NVARCHAR(100),
    @Address NVARCHAR(100),
    @City NVARCHAR(50),
    @State NVARCHAR(2),
    @Zip NVARCHAR(10)
AS
BEGIN
    UPDATE Customer
    SET FirstName = @FirstName,
        LastName = @LastName,
        PhoneNumber = @PhoneNumber,
        Email = @Email,
        Address = @Address,
        City = @City,
        State = @State,
        Zip = @Zip
    WHERE CustomerID = @CustomerID;
END;
GO

-- =============================================
-- Routine: DeleteCustomer
-- Description: Deletes a record from the Customer table.
-- =============================================
CREATE PROCEDURE DeleteCustomer
    @CustomerID INT
AS
BEGIN
    DELETE FROM Customer
    WHERE CustomerID = @CustomerID;
END;
GO
