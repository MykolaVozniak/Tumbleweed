CREATE TABLE [dbo].[Shops] (
    [Id]         INT            NOT NULL,
    [ShopName]   NVARCHAR (255) NOT NULL,
    [City]       NVARCHAR (255) NOT NULL,
    [Adress]     NVARCHAR (255) NOT NULL,
    [Email]      NVARCHAR (255) NOT NULL,
    [Phone]      NVARCHAR (15)  NOT NULL,
    [PostalCode] NVARCHAR (15)  NOT NULL,
    CONSTRAINT [PK__Shops__67C557C9FB5C1CFF] PRIMARY KEY CLUSTERED ([Id] ASC)
);

