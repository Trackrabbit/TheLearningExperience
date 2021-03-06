CREATE TABLE [dbo].[SY04400]
(
[SERVERID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORDSTID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DPSERIES] [smallint] NOT NULL,
[PROCNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[MESSAGE] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04400] ADD CONSTRAINT [CK__SY04400__TIME1__2739D489] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SY04400] ADD CONSTRAINT [CK__SY04400__DATE1__2645B050] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SY04400] ADD CONSTRAINT [PKSY04400] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1SY04400] ON [dbo].[SY04400] ([SERVERID], [DATE1], [TIME1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04400] ON [dbo].[SY04400] ([SERVERID], [PROCNAME], [DATE1], [TIME1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY04400] ON [dbo].[SY04400] ([SERVERID], [USERID], [PROCNAME], [DATE1], [TIME1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04400].[SERVERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04400].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04400].[WORDSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04400].[DPSERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04400].[PROCNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY04400].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY04400].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04400].[MESSAGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04400].[CMPNYNAM]'
GO
GRANT SELECT ON  [dbo].[SY04400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04400] TO [DYNGRP]
GO
