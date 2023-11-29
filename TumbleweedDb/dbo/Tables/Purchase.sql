CREATE TABLE [dbo].[Purchase] (
    [Id]           INT      NOT NULL,
    [ProductId]    INT      NOT NULL,
    [UserId]       INT      NOT NULL,
    [PurchaseTime] DATETIME NOT NULL,
    CONSTRAINT [PK_Purchase] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Purchase_Products] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([Id]),
    CONSTRAINT [FK_Purchase_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

