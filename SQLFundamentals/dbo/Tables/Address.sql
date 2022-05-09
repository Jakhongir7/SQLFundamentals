CREATE TABLE [dbo].[Address] (
    [Id]      INT           NOT NULL,
    [Street]  NVARCHAR (20) NOT NULL,
    [City]    NVARCHAR (20) NULL,
    [State]   NVARCHAR (50) NULL,
    [ZipCode] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

