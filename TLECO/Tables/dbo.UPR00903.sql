CREATE TABLE [dbo].[UPR00903]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERIODID] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[Reported_Tips] [numeric] (19, 5) NOT NULL,
[Charged_Tips] [numeric] (19, 5) NOT NULL,
[FDTXTIPS] [numeric] (19, 5) NOT NULL,
[FICASS_Tips_Fiscal] [numeric] (19, 5) NOT NULL,
[FICSTPTX] [numeric] (19, 5) NOT NULL,
[Uncollected_FICASS_Tax_F] [numeric] (19, 5) NOT NULL,
[FICAMed_Tips_Fiscal] [numeric] (19, 5) NOT NULL,
[FICMTPTX] [numeric] (19, 5) NOT NULL,
[Uncollect_FICAMed_Tx_Fis] [numeric] (19, 5) NOT NULL,
[Reported_Receipts] [numeric] (19, 5) NOT NULL,
[Charged_Receipts] [numeric] (19, 5) NOT NULL,
[Allocated_Tips_Fiscal] [numeric] (19, 5) NOT NULL,
[Federal_Tips_Fiscal] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00903] ADD CONSTRAINT [PKUPR00903] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00903].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00903].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00903].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[Reported_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[Charged_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[FDTXTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[FICASS_Tips_Fiscal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[FICSTPTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[Uncollected_FICASS_Tax_F]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[FICAMed_Tips_Fiscal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[FICMTPTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[Uncollect_FICAMed_Tx_Fis]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[Reported_Receipts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[Charged_Receipts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[Allocated_Tips_Fiscal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00903].[Federal_Tips_Fiscal]'
GO
GRANT SELECT ON  [dbo].[UPR00903] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00903] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00903] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00903] TO [DYNGRP]
GO
