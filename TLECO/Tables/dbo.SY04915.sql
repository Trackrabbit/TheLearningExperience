CREATE TABLE [dbo].[SY04915]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODULE1] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[EmailMessageFrom] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailSubject] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Master_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTRYID] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[EmailFromAddress] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailMessageID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[EmailReplyToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailCcAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailBccAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailBody] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04915] ADD CONSTRAINT [CK__SY04915__TIME1__6DF7358C] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SY04915] ADD CONSTRAINT [CK__SY04915__DATE1__6C0EED1A] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SY04915] ADD CONSTRAINT [CK__SY04915__DOCDATE__6D031153] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[SY04915] ADD CONSTRAINT [PKSY04915] PRIMARY KEY NONCLUSTERED  ([DICTRYID], [MODULE1], [DOCTYPE], [DOCNUMBR], [SEQNUMBR], [USERID], [DATE1], [TIME1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04915].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04915].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04915].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04915].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY04915].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY04915].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04915].[EmailMessageFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04915].[EmailSubject]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04915].[Master_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04915].[DICTRYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04915].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04915].[EmailFromAddress]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04915].[EmailMessageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY04915].[DOCDATE]'
GO
GRANT SELECT ON  [dbo].[SY04915] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04915] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04915] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04915] TO [DYNGRP]
GO
