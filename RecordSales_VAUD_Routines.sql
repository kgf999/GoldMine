USE CarDealershipsDB;
GO

-- =============================================
-- Routine: ViewRecordSales
-- Description: Retrieves all records from the RecordSales table.
-- =============================================
CREATE PROCEDURE ViewRecordSales
AS
BEGIN
    SELECT * FROM RecordSales;
END;
GO

-- =============================================
-- Routine: AddRecordSales
-- Description: Inserts a new record into the RecordSales table.
-- =============================================
CREATE PROCEDURE AddRecordSales
    @SalesPersonID INT,
    @CarID INT,
    @CustomerID INT,
    @SalesPrice DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO RecordSales (SalesPersonID, CarID, CustomerID, SalesPrice)
    VALUES (@SalesPersonID, @CarID, @CustomerID, @SalesPrice);
END;
GO

-- =============================================
-- Routine: UpdateRecordSales
-- Description: Updates an existing record in the RecordSales table.
-- =============================================
CREATE PROCEDURE UpdateRecordSales
    @SaleID INT,
    @SalesPersonID INT,
    @CarID INT,
    @CustomerID INT,
    @SalesPrice DECIMAL(10, 2)
AS
BEGIN
    UPDATE RecordSales
    SET SalesPersonID = @SalesPersonID,
        CarID = @CarID,
        CustomerID = @CustomerID,
        SalesPrice = @SalesPrice
    WHERE SaleID = @SaleID;
END;
GO

-- =============================================
-- Routine: DeleteRecordSales
-- Description: Deletes a record from the RecordSales table.
-- =============================================
CREATE PROCEDURE DeleteRecordSales
    @SaleID INT
AS
BEGIN
    DELETE FROM RecordSales
    WHERE SaleID = @SaleID;
END;
GO
