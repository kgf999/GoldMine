USE CarDealershipsDB;
GO

-- =============================================
-- Routine: ViewSalesPersons
-- Description: Retrieves all records from the SalesPerson table.
-- =============================================
CREATE PROCEDURE ViewSalesPersons
AS
BEGIN
    SELECT * FROM SalesPerson;
END;
GO

-- =============================================
-- Routine: AddSalesPerson
-- Description: Inserts a new record into the SalesPerson table.
-- =============================================
CREATE PROCEDURE AddSalesPerson
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @PhoneNumber NVARCHAR(15),
    @Email NVARCHAR(100),
    @HireDate DATE,
    @UserID INT 
AS
BEGIN
    INSERT INTO SalesPerson (FirstName, LastName, PhoneNumber, Email, HireDate, UserID)
    VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @HireDate, @UserID);
END;
GO

-- =============================================
-- Routine: UpdateSalesPerson
-- Description: Updates an existing record in the SalesPerson table.
-- =============================================
CREATE PROCEDURE UpdateSalesPerson
    @SalesPersonID INT,
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @PhoneNumber NVARCHAR(15),
    @Email NVARCHAR(100),
    @HireDate DATE,
    @UserID INT 
AS
BEGIN
    UPDATE SalesPerson
    SET FirstName = @FirstName,
        LastName = @LastName,
        PhoneNumber = @PhoneNumber,
        Email = @Email,
        HireDate = @HireDate,
        UserID = @UserID
    WHERE SalesPersonID = @SalesPersonID;
END;
GO

-- =============================================
-- Routine: DeleteSalesPerson
-- Description: Deletes a record from the SalesPerson table.
-- =============================================
CREATE PROCEDURE DeleteSalesPerson
    @SalesPersonID INT
AS
BEGIN
    DELETE FROM SalesPerson
    WHERE SalesPersonID = @SalesPersonID;
END;
GO
