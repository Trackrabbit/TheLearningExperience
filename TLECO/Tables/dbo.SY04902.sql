CREATE TABLE [dbo].[SY04902]
(
[EmailDictionaryID] [smallint] NOT NULL,
[EmailSeriesID] [smallint] NOT NULL,
[Email_Series_GetMSG_ID] [smallint] NOT NULL,
[EmailMessageFrom] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailACF] [tinyint] NOT NULL,
[EmailAllowChangeReplyTo] [tinyint] NOT NULL,
[EmailAllowUpdateEntry] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[EmailReplyToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04902] ADD CONSTRAINT [PKSY04902] PRIMARY KEY NONCLUSTERED  ([EmailDictionaryID], [EmailSeriesID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04902].[EmailDictionaryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04902].[EmailSeriesID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04902].[Email_Series_GetMSG_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04902].[EmailMessageFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04902].[EmailACF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04902].[EmailAllowChangeReplyTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04902].[EmailAllowUpdateEntry]'
GO
GRANT SELECT ON  [dbo].[SY04902] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04902] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04902] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04902] TO [DYNGRP]
GO
