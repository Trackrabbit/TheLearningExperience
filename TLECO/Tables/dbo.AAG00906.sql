CREATE TABLE [dbo].[AAG00906]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WINTYPE] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[aaBudgetID] [int] NOT NULL,
[aaCodeSequence] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[aaActualPriliminary] [int] NOT NULL,
[NETCHNG] [tinyint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[aaRange] [smallint] NOT NULL,
[aaAmtQty] [tinyint] NOT NULL,
[STR30] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaFromValue] [int] NOT NULL,
[aaToValue] [int] NOT NULL,
[aaRangeType] [int] NOT NULL,
[aaNodeCode] [tinyint] NOT NULL,
[ReportingLedgerNames] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00906] ADD CONSTRAINT [PKAAG00906] PRIMARY KEY CLUSTERED  ([USERID], [WINTYPE], [CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00906].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[WINTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[aaBudgetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[aaCodeSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[aaActualPriliminary]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[NETCHNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[aaRange]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[aaAmtQty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00906].[STR30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[aaFromValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[aaToValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[aaRangeType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00906].[aaNodeCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00906].[ReportingLedgerNames]'
GO
GRANT SELECT ON  [dbo].[AAG00906] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00906] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00906] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00906] TO [DYNGRP]
GO
