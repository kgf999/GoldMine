-------Testing Script---


USE CarDealershipDB;
GO

-- Adding 6 customers to the Customer table
EXEC AddCustomer 'John', 'Doe', '123-456-7890', 'john.doe@example.com', '123 Elm St', 'New York', 'NY', '10001';
EXEC AddCustomer 'Jane', 'Smith', '987-654-3210', 'jane.smith@example.com', '456 Oak St', 'Los Angeles', 'CA', '90001';
EXEC AddCustomer 'Alice', 'Johnson', '555-123-4567', 'alice.johnson@example.com', '789 Pine St', 'Chicago', 'IL', '60601';
EXEC AddCustomer 'Bob', 'Brown', '444-321-6789', 'bob.brown@example.com', '101 Maple St', 'Houston', 'TX', '77001';
EXEC AddCustomer 'Eve', 'Davis', '333-654-9870', 'eve.davis@example.com', '202 Birch St', 'Miami', 'FL', '33101';
EXEC AddCustomer 'Charlie', 'Miller', '222-789-0123', 'charlie.miller@example.com', '303 Cedar St', 'Seattle', 'WA', '98101';

-- Viewing all customers in the Customer table
EXEC ViewCustomers;
-- Updating a customer's information
EXEC UpdateCustomer 1, 'John', 'Doe', '111-222-3333', 'john.new@example.com', '123 Elm St', 'New York', 'NY', '10001';

-- Deleting a customer from the Customer table
EXEC DeleteCustomer 6;

USE CarDealershipsDB;
GO

-- =============================================
-- Test Script for SalesPerson
-- =============================================

-- Viewing all salespersons in the SalesPerson table
EXEC ViewSalesPersons;

-- Updating a salesperson's information
EXEC UpdateSalesPerson 1, 'Michael', 'Johnson', '555-123-4567', 'michael.johnson@newemail.com', '2023-01-15', 1;

-- Deleting a salesperson from the SalesPerson table
EXEC DeleteSalesPerson 6;

-- Viewing all salespersons again to confirm changes
EXEC ViewSalesPersons;


-- Adding 6 cars to the CarInventory table
EXEC AddCarInventory 2020, 'Toyota', 'Camry', 'Sedan', 24000.00;
EXEC AddCarInventory 2019, 'Honda', 'Civic', 'Sedan', 22000.00;
EXEC AddCarInventory 2021, 'Ford', 'F-150', 'Truck', 35000.00;
EXEC AddCarInventory 2018, 'Chevrolet', 'Malibu', 'Sedan', 20000.00;
EXEC AddCarInventory 2022, 'Tesla', 'Model 3', 'Electric', 45000.00;
EXEC AddCarInventory 2021, 'BMW', 'X5', 'SUV', 60000.00;


-- Viewing all cars in the CarInventory table
EXEC ViewCarInventory;

-- Updating a car's information
EXEC UpdateCarInventory 1, 2020, 'Toyota', 'Camry', 'Hybrid', 26000.00;


-- Adding 6 sales records to the RecordSales table
EXEC AddRecordSales 1, 1, 1, 24000.00;
EXEC AddRecordSales 2, 2, 2, 22000.00;
EXEC AddRecordSales 3, 3, 3, 35000.00;
EXEC AddRecordSales 4, 4, 4, 20000.00;
EXEC AddRecordSales 5, 5, 5, 45000.00;
EXEC AddRecordSales 1, 6, 1, 60000.00;


-- Viewing all sales records in the RecordSales table
EXEC ViewRecordSales;


-- Updating a sales record
EXEC UpdateRecordSales 1, 1, 1, 1, 25000.00;


-- Deleting a sales record from the RecordSales table
EXEC DeleteRecordSales 6;


