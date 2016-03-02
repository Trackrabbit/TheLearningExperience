CREATE TABLE [dbo].[FA40200]
(
[BOOKINDX] [int] NOT NULL,
[BOOKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BOOKDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRPERIOD] [smallint] NOT NULL,
[CURRFISCALYR] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[Auto_Add_Book_Info] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PTGENLED] [tinyint] NOT NULL,
[Ledger_ID] [smallint] NOT NULL,
[CALNDRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA40200] ADD CONSTRAINT [CK__FA40200__LASTMNT__0F7824E8] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA40200] ADD CONSTRAINT [CK__FA40200__LASTMNT__0E8400AF] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA40200] ADD CONSTRAINT [PKFA40200] PRIMARY KEY CLUSTERED  ([BOOKINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA40200] ON [dbo].[FA40200] ([BOOKID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA40200] ON [dbo].[FA40200] ([BOOKINDX], [Ledger_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4FA40200] ON [dbo].[FA40200] ([Ledger_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40200].[BOOKINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA40200].[BOOKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA40200].[BOOKDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40200].[DEPRPERIOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40200].[CURRFISCALYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40200].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40200].[Auto_Add_Book_Info]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA40200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA40200].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA40200].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA40200].[LASTMNTDUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40200].[PTGENLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA40200].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA40200].[CALNDRID]'
GO
GRANT SELECT ON  [dbo].[FA40200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA40200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA40200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA40200] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[FA40200] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[FA40200] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[FA40200] TO [rpt_executive]
GO
