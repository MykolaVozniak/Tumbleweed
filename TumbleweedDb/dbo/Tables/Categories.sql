CREATE TABLE [dbo].[Categories] (
    [Id]                  INT            NOT NULL,
    [MotherCategoryId]    INT            NULL,
    [ShopId]              INT            NOT NULL,
    [CategoryName]        NVARCHAR (255) NOT NULL,
    [CategoryDescription] NVARCHAR (255) NULL,
    CONSTRAINT [PK__Categori__19093A0BCD56BFCA] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Categories_Categories] FOREIGN KEY ([MotherCategoryId]) REFERENCES [dbo].[Categories] ([Id]),
    CONSTRAINT [FK_Categories_Shops] FOREIGN KEY ([ShopId]) REFERENCES [dbo].[Shops] ([Id])
);

