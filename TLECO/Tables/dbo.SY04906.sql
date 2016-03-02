CREATE TABLE [dbo].[SY04906]
(
[EmailDictionaryID] [smallint] NOT NULL,
[EmailSeriesID] [smallint] NOT NULL,
[MODULE1] [smallint] NOT NULL,
[EmailCardID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailDocumentID] [smallint] NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailCardAddress] [char] (151) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailRecipientTypeTo] [tinyint] NOT NULL,
[EmailRecipientTypeCc] [tinyint] NOT NULL,
[EmailRecipientTypeBcc] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04906] ADD CONSTRAINT [PKSY04906] PRIMARY KEY CLUSTERED  ([EmailDictionaryID], [EmailSeriesID], [MODULE1], [EmailCardID], [EmailDocumentID], [EmailCardAddress]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04906] ON [dbo].[SY04906] ([EmailDictionaryID], [EmailSeriesID], [EmailCardID], [ADRSCODE], [EmailCardAddress], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04906].[EmailDictionaryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04906].[EmailSeriesID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04906].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04906].[EmailCardID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04906].[EmailDocumentID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04906].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04906].[EmailCardAddress]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04906].[EmailRecipientTypeTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04906].[EmailRecipientTypeCc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04906].[EmailRecipientTypeBcc]'
GO
GRANT SELECT ON  [dbo].[SY04906] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04906] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04906] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04906] TO [DYNGRP]
GO
