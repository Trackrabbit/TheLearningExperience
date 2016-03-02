CREATE TABLE [dbo].[SY04905]
(
[EmailDictionaryID] [smallint] NOT NULL,
[EmailSeriesID] [smallint] NOT NULL,
[MODULE1] [smallint] NOT NULL,
[EmailCardID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailDocumentID] [smallint] NOT NULL,
[EmailDocumentEnabled] [tinyint] NOT NULL,
[EmailMessageID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailDocumentFormat] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04905] ADD CONSTRAINT [PKSY04905] PRIMARY KEY NONCLUSTERED  ([EmailDictionaryID], [EmailSeriesID], [MODULE1], [EmailCardID], [EmailDocumentID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04905] ON [dbo].[SY04905] ([EmailMessageID], [EmailDictionaryID], [EmailSeriesID], [MODULE1], [EmailCardID], [EmailDocumentID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04905].[EmailDictionaryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04905].[EmailSeriesID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04905].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04905].[EmailCardID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04905].[EmailDocumentID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04905].[EmailDocumentEnabled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04905].[EmailMessageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04905].[EmailDocumentFormat]'
GO
GRANT SELECT ON  [dbo].[SY04905] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04905] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04905] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04905] TO [DYNGRP]
GO
