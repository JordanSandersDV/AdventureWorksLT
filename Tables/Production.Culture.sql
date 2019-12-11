﻿CREATE TABLE [Production].[Culture] (
  [CultureID] [nchar](6) NOT NULL,
  [Name] [dbo].[Name] NOT NULL,
  [ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Culture_ModifiedDate] DEFAULT (getdate()),
  CONSTRAINT [PK_Culture_CultureID] PRIMARY KEY CLUSTERED ([CultureID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [AK_Culture_Name]
  ON [Production].[Culture] ([Name])
  ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Lookup table containing the languages in which some AdventureWorks data is stored.', 'SCHEMA', N'Production', 'TABLE', N'Culture'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Primary key for Culture records.', 'SCHEMA', N'Production', 'TABLE', N'Culture', 'COLUMN', N'CultureID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Culture description.', 'SCHEMA', N'Production', 'TABLE', N'Culture', 'COLUMN', N'Name'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'Culture', 'COLUMN', N'ModifiedDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'Culture', 'INDEX', N'AK_Culture_Name'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'Culture', 'INDEX', N'PK_Culture_CultureID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'Culture', 'CONSTRAINT', N'PK_Culture_CultureID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'Culture', 'CONSTRAINT', N'DF_Culture_ModifiedDate'
GO