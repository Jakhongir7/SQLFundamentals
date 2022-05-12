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
VALUES (3, 'Jim', 'Carrey'), (4, 'Leonardo ', 'DiCaprio')
GO

INSERT INTO dbo.Address (Id, Street, City, State, ZipCode)
VALUES (3, 'Ontario', 'Toronto', 'Canada', '300300'), (4, 'Los Angeles', 'California', 'USA', '400400')
GO

INSERT INTO dbo.Employee (Id, AddressId, PersonId, CompanyName, Position, EmployeeName)
VALUES (3, 3, 3, 'Hollywood', 'Comedian', 'Jim Carrey'), (4, 4, 4, 'Hollywood', 'Actor', 'Leonardo DiCaprio')
GO

INSERT INTO dbo.Company (Id, Name, AddressId)
VALUES (3, 'Hollywood', 3), (4, 'Hollywood', 4)
GO