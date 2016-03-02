CREATE TABLE [dbo].[SY04911]
(
[Identity_Column] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODULE1] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[EmailMessageFrom] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailSubject] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AllowMultipleAtt] [tinyint] NOT NULL,
[DICTRYID] [smallint] NOT NULL,
[EmailMessageID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Master_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[EmailToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailCcAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailBccAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailReplyToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailBody] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04911] ADD CONSTRAINT [PKSY04911] PRIMARY KEY NONCLUSTERED  ([Identity_Column]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04911] ON [dbo].[SY04911] ([DICTRYID], [MODULE1], [USERID], [Identity_Column]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04911].[Identity_Column]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04911].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04911].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04911].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04911].[EmailMessageFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04911].[EmailSubject]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04911].[AllowMultipleAtt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04911].[DICTRYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04911].[EmailMessageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04911].[Master_ID]'
GO
GRANT SELECT ON  [dbo].[SY04911] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04911] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04911] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04911] TO [DYNGRP]
GO
