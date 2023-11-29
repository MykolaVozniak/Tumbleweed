CREATE TABLE [dbo].[Roles] (
    [Id]              INT            NOT NULL,
    [ShopId]          INT            NOT NULL,
    [RoleName]        NVARCHAR (255) NOT NULL,
    [RoleDescription] NCHAR (10)     NULL,
    CONSTRAINT [PK__Roles__8AFACE1AE714276F] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Roles_Shops] FOREIGN KEY ([ShopId]) REFERENCES [dbo].[Shops] ([Id])
);

