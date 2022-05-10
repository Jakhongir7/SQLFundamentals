/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
INSERT INTO dbo.Person (Id, FirstName, LastName)
SELECT 1, 'Jakhongir', 'Bakhodirov'
WHERE not exists (SELECT 1 FROM  dbo.Person WHERE Id = 1)
GO

INSERT INTO dbo.Address (Id, Street, City, State, ZipCode)
SELECT 1, 'Feruza', 'Tashkent', 'Uzbekistan', '100100'
WHERE not exists (SELECT 1 FROM  dbo.Address WHERE Id = 1)
GO

INSERT INTO dbo.Employee (Id, AddressId, PersonId, CompanyName, Position, EmployeeName)
SELECT 1, 1, 1, 'EPAM', 'Software Engineer', 'Jakhongir Bakhodirov'
WHERE not exists (SELECT 1 FROM  dbo.Employee WHERE Id = 1)
GO

INSERT INTO dbo.Company (Id, Name, AddressId)
SELECT 1, 'EPAM', 1
WHERE not exists (SELECT 1 FROM  dbo.Company WHERE Id = 1)
GO