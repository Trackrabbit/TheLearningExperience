CREATE TABLE [dbo].[SY04904]
(
[EmailDictionaryID] [smallint] NOT NULL,
[EmailSeriesID] [smallint] NOT NULL,
[EmailCardID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailAllowEmbedding] [tinyint] NOT NULL,
[EmailAllowAttachments] [tinyint] NOT NULL,
[AllowMultipleAtt] [tinyint] NOT NULL,
[EmailSetFileSize] [tinyint] NOT NULL,
[EmailMaxFileSize] [numeric] (19, 5) NOT NULL,
[EmailAddressOption] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04904] ADD CONSTRAINT [PKSY04904] PRIMARY KEY NONCLUSTERED  ([EmailDictionaryID], [EmailSeriesID], [EmailCardID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04904].[EmailDictionaryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04904].[EmailSeriesID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04904].[EmailCardID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04904].[EmailAllowEmbedding]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04904].[EmailAllowAttachments]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04904].[AllowMultipleAtt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04904].[EmailSetFileSize]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY04904].[EmailMaxFileSize]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04904].[EmailAddressOption]'
GO
GRANT SELECT ON  [dbo].[SY04904] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04904] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04904] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04904] TO [DYNGRP]
GO
