CREATE TABLE [dbo].[Users] (
    [Id]         INT            NOT NULL,
    [FirstName]  NVARCHAR (50)  NOT NULL,
    [LastName]   NVARCHAR (50)  NOT NULL,
    [MiddleName] NVARCHAR (50)  NOT NULL,
    [Birthdate]  DATE           NOT NULL,
    [Email]      NVARCHAR (255) NOT NULL,
    [Phone]      NVARCHAR (15)  NOT NULL,
    CONSTRAINT [PK__tmp_ms_x__1788CC4C8F0FA713] PRIMARY KEY CLUSTERED ([Id] ASC)
);

