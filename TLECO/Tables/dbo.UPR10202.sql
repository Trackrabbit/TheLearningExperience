CREATE TABLE [dbo].[UPR10202]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYRNTYPE] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[PYSTLTEX] [tinyint] NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYADNMBR] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[ADFDWHDG] [numeric] (19, 5) NOT NULL,
[ESTFEDWH] [numeric] (19, 5) NOT NULL,
[HWKVCACR] [numeric] (19, 5) NOT NULL,
[HWKSKACR] [numeric] (19, 5) NOT NULL,
[VACTMACC] [numeric] (19, 5) NOT NULL,
[SKTMACCR] [numeric] (19, 5) NOT NULL,
[VACTMLBL] [numeric] (19, 5) NOT NULL,
[SKTMLBTY] [numeric] (19, 5) NOT NULL,
[VACAVLBL] [int] NOT NULL,
[SIKTIMAV] [int] NOT NULL,
[GRWGPRN] [numeric] (19, 5) NOT NULL,
[NTWPYRN] [numeric] (19, 5) NOT NULL,
[FEDWGARR_1] [numeric] (19, 5) NOT NULL,
[FEDWGARR_2] [numeric] (19, 5) NOT NULL,
[FEDWGARR_3] [numeric] (19, 5) NOT NULL,
[FEDWGARR_4] [numeric] (19, 5) NOT NULL,
[FEDWGARR_5] [numeric] (19, 5) NOT NULL,
[FEDWGARR_6] [numeric] (19, 5) NOT NULL,
[FEDWGARR_7] [numeric] (19, 5) NOT NULL,
[FEDWGARR_8] [numeric] (19, 5) NOT NULL,
[Federal_Tips_Array_1] [numeric] (19, 5) NOT NULL,
[Federal_Tips_Array_2] [numeric] (19, 5) NOT NULL,
[Federal_Tips_Array_3] [numeric] (19, 5) NOT NULL,
[Federal_Tips_Array_4] [numeric] (19, 5) NOT NULL,
[Federal_Tips_Array_5] [numeric] (19, 5) NOT NULL,
[Federal_Tips_Array_6] [numeric] (19, 5) NOT NULL,
[Federal_Tips_Array_7] [numeric] (19, 5) NOT NULL,
[Federal_Tips_Array_8] [numeric] (19, 5) NOT NULL,
[FDWGPYRN] [numeric] (19, 5) NOT NULL,
[Federal_TipsPay_Run] [numeric] (19, 5) NOT NULL,
[ANFDWHDG] [numeric] (19, 5) NOT NULL,
[FDWDGPRN] [numeric] (19, 5) NOT NULL,
[FDTXTIPS] [numeric] (19, 5) NOT NULL,
[FICASSWP] [numeric] (19, 5) NOT NULL,
[FICASS_TipsPay_Run] [numeric] (19, 5) NOT NULL,
[FCASWPR] [numeric] (19, 5) NOT NULL,
[FICSTPTX] [numeric] (19, 5) NOT NULL,
[Uncollected_FICASS_TaxP] [numeric] (19, 5) NOT NULL,
[FICAMWGP] [numeric] (19, 5) NOT NULL,
[FICAMed_TipsPay_Run] [numeric] (19, 5) NOT NULL,
[FICAMWPR] [numeric] (19, 5) NOT NULL,
[FICMTPTX] [numeric] (19, 5) NOT NULL,
[Uncollected_FICAMed_TaxP] [numeric] (19, 5) NOT NULL,
[EICWPYRN] [numeric] (19, 5) NOT NULL,
[EPFICASS] [numeric] (19, 5) NOT NULL,
[EFICAMCR] [numeric] (19, 5) NOT NULL,
[Charged_Receipts] [numeric] (19, 5) NOT NULL,
[Reported_Receipts] [numeric] (19, 5) NOT NULL,
[Hours_Worked_For_Minimum] [numeric] (19, 5) NOT NULL,
[Min_Wage_Bal_Applicable] [numeric] (19, 5) NOT NULL,
[Reported_Tips] [numeric] (19, 5) NOT NULL,
[Charged_Tips] [numeric] (19, 5) NOT NULL,
[ALOCTIPS] [numeric] (19, 5) NOT NULL,
[TipType] [smallint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[GRWGFREIC] [numeric] (19, 5) NOT NULL,
[CALCCHKERRS] [binary] (4) NOT NULL,
[EFICASSWH] [numeric] (19, 5) NOT NULL,
[EFICASS_Tax_On_Tips] [numeric] (19, 5) NOT NULL,
[EFICAMWPR] [numeric] (19, 5) NOT NULL,
[EFICAMed_Tax_On_Tips] [numeric] (19, 5) NOT NULL,
[PayPeriodBeginDate] [datetime] NOT NULL,
[PayPeriodEndDate] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10202] ADD CONSTRAINT [CK__UPR10202__CHEKDA__41379F3D] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR10202] ADD CONSTRAINT [CK__UPR10202__PayPer__431FE7AF] CHECK ((datepart(hour,[PayPeriodBeginDate])=(0) AND datepart(minute,[PayPeriodBeginDate])=(0) AND datepart(second,[PayPeriodBeginDate])=(0) AND datepart(millisecond,[PayPeriodBeginDate])=(0)))
GO
ALTER TABLE [dbo].[UPR10202] ADD CONSTRAINT [CK__UPR10202__PayPer__44140BE8] CHECK ((datepart(hour,[PayPeriodEndDate])=(0) AND datepart(minute,[PayPeriodEndDate])=(0) AND datepart(second,[PayPeriodEndDate])=(0) AND datepart(millisecond,[PayPeriodEndDate])=(0)))
GO
ALTER TABLE [dbo].[UPR10202] ADD CONSTRAINT [CK__UPR10202__POSTED__422BC376] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10202] ADD CONSTRAINT [PKUPR10202] PRIMARY KEY NONCLUSTERED  ([USERID], [PYRNTYPE], [EMPLOYID], [PYADNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10202] ON [dbo].[UPR10202] ([EMPLOYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR10202] ON [dbo].[UPR10202] ([USERID], [PYRNTYPE], [EMPLOYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10202] ON [dbo].[UPR10202] ([USERID], [PYRNTYPE], [PYSTLTEX], [EMPLOYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10202].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10202].[PYRNTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10202].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10202].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10202].[PYSTLTEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10202].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10202].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10202].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10202].[PYADNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10202].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[ADFDWHDG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[ESTFEDWH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[HWKVCACR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[HWKSKACR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[VACTMACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[SKTMACCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[VACTMLBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[SKTMLBTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10202].[VACAVLBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10202].[SIKTIMAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[GRWGPRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[NTWPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FEDWGARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FEDWGARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FEDWGARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FEDWGARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FEDWGARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FEDWGARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FEDWGARR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FEDWGARR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Federal_Tips_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Federal_Tips_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Federal_Tips_Array_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Federal_Tips_Array_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Federal_Tips_Array_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Federal_Tips_Array_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Federal_Tips_Array_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Federal_Tips_Array_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FDWGPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Federal_TipsPay_Run]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[ANFDWHDG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FDWDGPRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FDTXTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FICASSWP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FICASS_TipsPay_Run]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FCASWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FICSTPTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Uncollected_FICASS_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FICAMWGP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FICAMed_TipsPay_Run]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FICAMWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[FICMTPTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Uncollected_FICAMed_TaxP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[EICWPYRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[EPFICASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[EFICAMCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Charged_Receipts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Reported_Receipts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Hours_Worked_For_Minimum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Min_Wage_Bal_Applicable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Reported_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[Charged_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[ALOCTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10202].[TipType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10202].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[GRWGFREIC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10202].[CALCCHKERRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[EFICASSWH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[EFICASS_Tax_On_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[EFICAMWPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10202].[EFICAMed_Tax_On_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10202].[PayPeriodBeginDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10202].[PayPeriodEndDate]'
GO
GRANT SELECT ON  [dbo].[UPR10202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10202] TO [DYNGRP]
GO
