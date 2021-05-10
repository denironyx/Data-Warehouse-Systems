CREATE PROCEDURE pr_Names @VarPrice money
	AS
	BEGIN
		-- The print statement returns text to the user
		PRINT 'Products less than ' + CAST(@VarPrice AS varchar(10));
		-- A second statement starts here
		SELECT ProductName, Price 
			FROM vm_Names
		WHERE Price < @VarPrice;
	END
GO

-- Test the stored procedure created
EXECUTE pr_Names 12.00;
GO