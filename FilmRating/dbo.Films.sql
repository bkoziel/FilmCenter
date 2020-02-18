CREATE TABLE [dbo].[Films] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [DirectorID] INT            NOT NULL,
    [CountryID]  INT            NOT NULL,
    [Name]       NVARCHAR (MAX) NOT NULL,
    [Date]       DATETIME       NOT NULL,
    [Rate]       FLOAT (53)     NULL,
    CONSTRAINT [PK_dbo.Films] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_dbo.Films_dbo.Countries_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [dbo].[Countries] ([CountryId]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.Films_dbo.Directors_DirectorID] FOREIGN KEY ([DirectorID]) REFERENCES [dbo].[Directors] ([DirectorId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_DirectorID]
    ON [dbo].[Films]([DirectorID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_CountryID]
    ON [dbo].[Films]([CountryID] ASC);

