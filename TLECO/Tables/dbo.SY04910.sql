CREATE TABLE [dbo].[SY04910]
(
[MODULE1] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Master_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailMessageID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailSubject] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailMessageFrom] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTRYID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[EmailToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailCcAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailBccAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailBody] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailReplyToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04910] ADD CONSTRAINT [PKSY04910] PRIMARY KEY NONCLUSTERED  ([DICTRYID], [MODULE1], [DOCTYPE], [DOCNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04910].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04910].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04910].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04910].[Master_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04910].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04910].[EmailMessageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04910].[EmailSubject]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04910].[EmailMessageFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04910].[DICTRYID]'
GO
GRANT SELECT ON  [dbo].[SY04910] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04910] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04910] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04910] TO [DYNGRP]
GO
