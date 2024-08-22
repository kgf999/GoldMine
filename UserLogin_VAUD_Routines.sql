USE CarDealershipsDB;
GO

-- =============================================
-- Routine: ViewUserLogin
-- Description: Retrieves all records from the UserLogin table.
-- =============================================
CREATE PROCEDURE ViewUserLogin
AS
BEGIN
    SELECT * FROM UserLogin;
END;
GO

-- =============================================
-- Routine: AddUserLogin
-- Description: Inserts a new record into the UserLogin table.
-- =============================================
CREATE PROCEDURE AddUserLogin
    @Username NVARCHAR(50),
    @Password NVARCHAR(255), -- Should be hashed before calling this procedure
    @Email NVARCHAR(100),
    @Role NVARCHAR(50)
AS
BEGIN
    -- Insert a new record with hashed password
    INSERT INTO UserLogin (Username, Password, Email, Role)
    VALUES (@Username, @Password, @Email, @Role);
END;
GO

-- =============================================
-- Routine: UpdateUserLogin
-- Description: Updates an existing record in the UserLogin table.
-- =============================================
CREATE PROCEDURE UpdateUserLogin
    @UserID INT,
    @Username NVARCHAR(50),
    @Password NVARCHAR(255), -- Should be hashed before calling this procedure
    @Email NVARCHAR(100),
    @Role NVARCHAR(50)
AS
BEGIN
    -- Update an existing record with hashed password
    UPDATE UserLogin
    SET Username = @Username,
        Password = @Password,
        Email = @Email,
        Role = @Role
    WHERE UserID = @UserID;
END;
GO

-- =============================================
-- Routine: DeleteUserLogin
-- Description: Deletes a record from the UserLogin table.
-- =============================================
CREATE PROCEDURE DeleteUserLogin
    @UserID INT
AS
BEGIN
    -- Delete a record
    DELETE FROM UserLogin
    WHERE UserID = @UserID;
END;
GO
