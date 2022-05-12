CREATE TABLE [dbo].[Employee] (
    [Id]           INT            NOT NULL,
    [AddressId]    INT            NOT NULL,
    [PersonId]     INT            NOT NULL,
    [CompanyName]  NVARCHAR (20)  NOT NULL,
    [Position]     NVARCHAR (30)  NULL,
    [EmployeeName] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]),
    FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([Id])
);

