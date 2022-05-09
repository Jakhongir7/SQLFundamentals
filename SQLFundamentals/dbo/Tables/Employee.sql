CREATE TABLE [dbo].[Employee] (
    [Id]           INT            NOT NULL,
    [AddressId]    INT            NULL,
    [PersonId]     INT            NULL,
    [CompanyName]  NVARCHAR (20)  NULL,
    [Position]     NVARCHAR (30)  NOT NULL,
    [EmployeeName] NVARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]),
    FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([Id])
);

