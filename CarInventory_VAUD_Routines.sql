USE CarDealershipsDB;
GO

-- =============================================
-- Routine: ViewCarInventory
-- Description: Retrieves all records from the CarInventory table.
-- =============================================
CREATE PROCEDURE ViewCarInventory
AS
BEGIN
    SELECT * FROM CarInventory;
END;
GO

-- =============================================
-- Routine: AddCarInventory
-- Description: Inserts a new record into the CarInventory table.
-- =============================================
CREATE PROCEDURE AddCarInventory
    @Year INT,
    @Make NVARCHAR(50),
    @Model NVARCHAR(50),
    @Type NVARCHAR(50),
    @Price DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO CarInventory (Year, Make, Model, Type, Price)
    VALUES (@Year, @Make, @Model, @Type, @Price);
END;
GO

-- =============================================
-- Routine: UpdateCarInventory
-- Description: Updates an existing record in the CarInventory table.
-- =============================================
CREATE PROCEDURE UpdateCarInventory
    @CarID INT,
    @Year INT,
    @Make NVARCHAR(50),
    @Model NVARCHAR(50),
    @Type NVARCHAR(50),
    @Price DECIMAL(10, 2)
AS
BEGIN
    UPDATE CarInventory
    SET Year = @Year,
        Make = @Make,
        Model = @Model,
        Type = @Type,
        Price = @Price
    WHERE CarID = @CarID;
END;
GO

-- =============================================
-- Routine: DeleteCarInventory
-- Description: Deletes a record from the CarInventory table.
-- =============================================
CREATE PROCEDURE DeleteCarInventory
    @CarID INT
AS
BEGIN
    DELETE FROM CarInventory
    WHERE CarID = @CarID;
END;
GO
