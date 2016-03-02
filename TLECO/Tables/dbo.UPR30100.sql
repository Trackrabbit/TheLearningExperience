CREATE TABLE [dbo].[UPR30100]
(
[AUCTRLCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYADNMBR] [int] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLNAME] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GRWGPRN] [numeric] (19, 5) NOT NULL,
[FDWDGPRN] [numeric] (19, 5) NOT NULL,
[FDTXTIPS] [numeric] (19, 5) NOT NULL,
[FICAMWPR] [numeric] (19, 5) NOT NULL,
[FICMTPTX] [numeric] (19, 5) NOT NULL,
[Uncollected_FICAMed_TaxP] [numeric] (19, 5) NOT NULL,
[FCASWPR] [numeric] (19, 5) NOT NULL,
[FICSTPTX] [numeric] (19, 5) NOT NULL,
[Uncollected_FICASS_TaxP] [numeric] (19, 5) NOT NULL,
[ADEICPMT] [numeric] (19, 5) NOT NULL,
[Reported_Tips] [numeric] (19, 5) NOT NULL,
[Charged_Tips] [numeric] (19, 5) NOT NULL,
[ALOCTIPS] [numeric] (19, 5) NOT NULL,
[TTLDDTNS] [numeric] (19, 5) NOT NULL,
[TTLBNFTS] [numeric] (19, 5) NOT NULL,
[NTWPYRN] [numeric] (19, 5) NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOCSCNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VACTMACC] [numeric] (19, 5) NOT NULL,
[VACTMLBL] [numeric] (19, 5) NOT NULL,
[VACAVLBL] [int] NOT NULL,
[SKTMACCR] [numeric] (19, 5) NOT NULL,
[SKTMLBTY] [numeric] (19, 5) NOT NULL,
[SIKTIMAV] [int] NOT NULL,
[TOTLTAXS] [numeric] (19, 5) NOT NULL,
[Voided_by_Void_Checks] [tinyint] NOT NULL,
[FDWGPYRN] [numeric] (19, 5) NOT NULL,
[Federal_TipsPay_Run] [numeric] (19, 5) NOT NULL,
[FICASSWP] [numeric] (19, 5) NOT NULL,
[FICASS_TipsPay_Run] [numeric] (19, 5) NOT NULL,
[FICAMWGP] [numeric] (19, 5) NOT NULL,
[FICAMed_TipsPay_Run] [numeric] (19, 5) NOT NULL,
[Reported_Receipts] [numeric] (19, 5) NOT NULL,
[Charged_Receipts] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[ISCHECK] [tinyint] NOT NULL,
[RSNCHKVD] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPPYRN] [smallint] NOT NULL,
[EFICASSWH] [numeric] (19, 5) NOT NULL,
[EFICASS_Tax_On_Tips] [numeric] (19, 5) NOT NULL,
[EFICAMWPR] [numeric] (19, 5) NOT NULL,
[EFICAMed_Tax_On_Tips] [numeric] (19, 5) NOT NULL,
[PayPeriodBeginDate] [datetime] NOT NULL,
[PayPeriodEndDate] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR30100] ADD CONSTRAINT [CK__UPR30100__CHEKDA__5BEB9579] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR30100] ADD CONSTRAINT [CK__UPR30100__PayPer__5DD3DDEB] CHECK ((datepart(hour,[PayPeriodBeginDate])=(0) AND datepart(minute,[PayPeriodBeginDate])=(0) AND datepart(second,[PayPeriodBeginDate])=(0) AND datepart(millisecond,[PayPeriodBeginDate])=(0)))
GO
ALTER TABLE [dbo].[UPR30100] ADD CONSTRAINT [CK__UPR30100__PayPer__5EC80224] CHECK ((datepart(hour,[PayPeriodEndDate])=(0) AND datepart(minute,[PayPeriodEndDate])=(0) AND datepart(second,[PayPeriodEndDate])=(0) AND datepart(millisecond,[PayPeriodEndDate])=(0)))
GO
ALTER TABLE [dbo].[UPR30100] ADD CONSTRAINT [CK__UPR30100__POSTED__5CDFB9B2] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR30100] ADD CONSTRAINT [PKUPR30100] PRIMARY KEY NONCLUSTERED  ([AUCTRLCD], [PYADNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1UPR30100] ON [dbo].[UPR30100] ([AUCTRLCD], [CHEKNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR30100] ON [dbo].[UPR30100] ([CHEKBKID], [CHEKNMBR], [AUCTRLCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7UPR30100] ON [dbo].[UPR30100] ([EMPLOYID], [AUCTRLCD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6UPR30100] ON [dbo].[UPR30100] ([EMPLOYID], [CHEKDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9UPR30100] ON [dbo].[UPR30100] ([EMPLOYID], [CHEKDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5UPR30100] ON [dbo].[UPR30100] ([EMPLOYID], [CHEKNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR30100] ON [dbo].[UPR30100] ([EMPLOYID], [PYADNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8UPR30100] ON [dbo].[UPR30100] ([EMPLOYID], [YEAR1], [CHEKDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30100].[AUCTRLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30100].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30100].[PYADNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30100].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30100].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30100].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30100].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30100].[EMPLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[GRWGPRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FDWDGPRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FDTXTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FICAMWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FICMTPTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[Uncollected_FICAMed_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FCASWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FICSTPTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[Uncollected_FICASS_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[ADEICPMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[Reported_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[Charged_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[ALOCTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[TTLDDTNS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[TTLBNFTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[NTWPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30100].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30100].[SOCSCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[VACTMACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[VACTMLBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30100].[VACAVLBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[SKTMACCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[SKTMLBTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30100].[SIKTIMAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[TOTLTAXS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30100].[Voided_by_Void_Checks]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FDWGPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[Federal_TipsPay_Run]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FICASSWP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FICASS_TipsPay_Run]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FICAMWGP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[FICAMed_TipsPay_Run]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[Reported_Receipts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[Charged_Receipts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30100].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30100].[ISCHECK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30100].[RSNCHKVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30100].[COMPPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[EFICASSWH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[EFICASS_Tax_On_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[EFICAMWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30100].[EFICAMed_Tax_On_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30100].[PayPeriodBeginDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30100].[PayPeriodEndDate]'
GO
GRANT SELECT ON  [dbo].[UPR30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR30100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR30100] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[UPR30100] TO [rpt_human resource administrator]
GO
GRANT SELECT ON  [dbo].[UPR30100] TO [rpt_payroll]
GO
