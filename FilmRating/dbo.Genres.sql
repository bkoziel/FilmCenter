CREATE TABLE [dbo].[Genres] (
    [GenreId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]    NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_dbo.Genres] PRIMARY KEY CLUSTERED ([GenreId] ASC)
);

