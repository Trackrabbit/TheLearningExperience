CREATE TABLE [dbo].[AHR2AP06]
(
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[ISEQUENCENUMBER_I] [smallint] NOT NULL,
[TESTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[TESTSCORE_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2AP06] ADD CONSTRAINT [CK__AHR2AP06__CHANGE__604A96B8] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2AP06] ADD CONSTRAINT [CK__AHR2AP06__EXPNDA__613EBAF1] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[AHR2AP06] ADD CONSTRAINT [CK__AHR2AP06__STRTDA__6232DF2A] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[AHR2AP06] ADD CONSTRAINT [PKAHR2AP06] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I], [ISEQUENCENUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AHR2AP06] ON [dbo].[AHR2AP06] ([TESTCODE_I], [TESTSCORE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AHR2AP06] ON [dbo].[AHR2AP06] ([TESTSCORE_I], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2AP06].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP06].[ISEQUENCENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP06].[TESTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2AP06].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP06].[TESTSCORE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2AP06].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP06].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2AP06].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2AP06].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[AHR2AP06] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2AP06] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2AP06] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2AP06] TO [DYNGRP]
GO