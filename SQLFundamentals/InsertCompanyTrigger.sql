CREATE TRIGGER [InsertCompanyTrigger]
	ON [dbo].[Employee]
	FOR DELETE, INSERT, UPDATE
	AS
	DECLARE @CompanyName NVARCHAR(100)
	DECLARE @AddressId INT
	
	SELECT @CompanyName = INSERTED.[CompanyName], @AddressId = INSERTED.[AddressId]
		FROM INSERTED
	
	INSERT INTO [dbo].[Company]
		([Name], [AddressId]) VALUES (@CompanyName, @AddressId)
