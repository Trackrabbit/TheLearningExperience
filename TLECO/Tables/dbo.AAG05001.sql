CREATE TABLE [dbo].[AAG05001]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[DCSTATUS] [smallint] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG05001] ADD CONSTRAINT [CK__AAG05001__TRXDAT__0FD5E760] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[AAG05001] ADD CONSTRAINT [PKAAG05001] PRIMARY KEY CLUSTERED  ([DCSTATUS], [JRNENTRY], [RCTRXSEQ], [YEAR1], [USERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG05001] ON [dbo].[AAG05001] ([USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG05001].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG05001].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG05001].[DCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG05001].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG05001].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG05001].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG05001].[TRXDATE]'
GO
GRANT SELECT ON  [dbo].[AAG05001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG05001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG05001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG05001] TO [DYNGRP]
GO