CREATE TABLE [dbo].[SY04903]
(
[EmailDictionaryID] [smallint] NOT NULL,
[EmailSeriesID] [smallint] NOT NULL,
[MODULE1] [smallint] NOT NULL,
[EmailDocumentID] [smallint] NOT NULL,
[EmailDocumentEnabled] [tinyint] NOT NULL,
[EmailMessageID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04903] ADD CONSTRAINT [PKSY04903] PRIMARY KEY NONCLUSTERED  ([EmailDictionaryID], [EmailSeriesID], [MODULE1], [EmailDocumentID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04903] ON [dbo].[SY04903] ([EmailMessageID], [EmailDictionaryID], [EmailSeriesID], [MODULE1], [EmailDocumentID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04903].[EmailDictionaryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04903].[EmailSeriesID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04903].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04903].[EmailDocumentID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04903].[EmailDocumentEnabled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04903].[EmailMessageID]'
GO
GRANT SELECT ON  [dbo].[SY04903] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04903] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04903] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04903] TO [DYNGRP]
GO
