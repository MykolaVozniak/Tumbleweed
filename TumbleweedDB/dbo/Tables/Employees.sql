﻿CREATE TABLE [dbo].[Employees] (
    [Id]       INT      IDENTITY(1,1) NOT NULL,
    [UserId]   INT      NOT NULL,
    [RoleId]   INT      NOT NULL,
    [HireDate] DATETIME NOT NULL,
    [IsOwner]  BIT      NOT NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Employees_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id]),
    CONSTRAINT [FK_Employees_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

