CREATE TABLE [dbo].[Users] (
    [Id]         INT            NOT NULL,
    [FirstName]  NVARCHAR (50)  NOT NULL,
    [LastName]   NVARCHAR (50)  NOT NULL,
    [MiddleName] NVARCHAR (50)  NOT NULL,
    [Birthdate]  DATE           NOT NULL,
    [Email]      NVARCHAR (MAX) NOT NULL,
    [Phone]      NVARCHAR (20)  NOT NULL,
    [Password]   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);

