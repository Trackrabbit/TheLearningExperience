CREATE TABLE [dbo].[B4640018]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DATE1] [datetime] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RecoverableTypeDisp] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_BPBillFrequency] [smallint] NOT NULL,
[BSSI_Is_Reversed] [tinyint] NOT NULL,
[BSSI_RecoverableChargeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ChargeLineSeq] [numeric] (19, 5) NOT NULL,
[BSSI_BreakPointAmt] [numeric] (19, 5) NOT NULL,
[BSSI_BreakPointPercent] [numeric] (19, 5) NOT NULL,
[BSSI_BreakpointInPeriod] [numeric] (19, 5) NOT NULL,
[BSSI_PayablesAmount] [numeric] (19, 5) NOT NULL,
[BSSI_AmountDue] [numeric] (19, 5) NOT NULL,
[BSSI_BilledAmount] [numeric] (19, 5) NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_SalesStartDate] [datetime] NOT NULL,
[BSSI_SalesEndDate] [datetime] NOT NULL,
[BSSI_DaysInYear] [numeric] (19, 5) NOT NULL,
[BSSI_DaysInPeriod] [numeric] (19, 5) NOT NULL,
[BSSI_Factor] [numeric] (19, 5) NOT NULL,
[BSSI_ExcessSales] [numeric] (19, 5) NOT NULL,
[BSSI_BillingAmount] [numeric] (19, 5) NOT NULL,
[BSSI_RentAmount] [numeric] (19, 5) NOT NULL,
[BSSI_ExcessAmount] [numeric] (19, 5) NOT NULL,
[BSSI_PrintProration] [tinyint] NOT NULL,
[BSSI_ProrationFactor] [numeric] (19, 5) NOT NULL,
[BSSI_DaysInPartialYear] [numeric] (19, 5) NOT NULL,
[BSSI_PartialYearStart] [datetime] NOT NULL,
[BSSI_PartialYearEnd] [datetime] NOT NULL,
[BSSI_ProrateBP] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640018] ADD CONSTRAINT [CK__B4640018__BSSI_P__3FA42ABC] CHECK ((datepart(hour,[BSSI_PartialYearEnd])=(0) AND datepart(minute,[BSSI_PartialYearEnd])=(0) AND datepart(second,[BSSI_PartialYearEnd])=(0) AND datepart(millisecond,[BSSI_PartialYearEnd])=(0)))
GO
ALTER TABLE [dbo].[B4640018] ADD CONSTRAINT [CK__B4640018__BSSI_P__3EB00683] CHECK ((datepart(hour,[BSSI_PartialYearStart])=(0) AND datepart(minute,[BSSI_PartialYearStart])=(0) AND datepart(second,[BSSI_PartialYearStart])=(0) AND datepart(millisecond,[BSSI_PartialYearStart])=(0)))
GO
ALTER TABLE [dbo].[B4640018] ADD CONSTRAINT [CK__B4640018__BSSI_S__3DBBE24A] CHECK ((datepart(hour,[BSSI_SalesEndDate])=(0) AND datepart(minute,[BSSI_SalesEndDate])=(0) AND datepart(second,[BSSI_SalesEndDate])=(0) AND datepart(millisecond,[BSSI_SalesEndDate])=(0)))
GO
ALTER TABLE [dbo].[B4640018] ADD CONSTRAINT [CK__B4640018__BSSI_S__3CC7BE11] CHECK ((datepart(hour,[BSSI_SalesStartDate])=(0) AND datepart(minute,[BSSI_SalesStartDate])=(0) AND datepart(second,[BSSI_SalesStartDate])=(0) AND datepart(millisecond,[BSSI_SalesStartDate])=(0)))
GO
ALTER TABLE [dbo].[B4640018] ADD CONSTRAINT [CK__B4640018__DATE1__3BD399D8] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4640018] ADD CONSTRAINT [CK__B4640018__ENDDAT__3ADF759F] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640018] ADD CONSTRAINT [CK__B4640018__STRTDA__39EB5166] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640018] ADD CONSTRAINT [PKB4640018] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640018] ON [dbo].[B4640018] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640018].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640018].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640018].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[BSSI_RecoverableTypeDisp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640018].[BSSI_BPBillFrequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640018].[BSSI_Is_Reversed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640018].[BSSI_RecoverableChargeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_ChargeLineSeq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_BreakPointAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_BreakPointPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_BreakpointInPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_PayablesAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_AmountDue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_BilledAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640018].[BSSI_SalesStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640018].[BSSI_SalesEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_DaysInYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_DaysInPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_Factor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_ExcessSales]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_BillingAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_RentAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_ExcessAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640018].[BSSI_PrintProration]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_ProrationFactor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640018].[BSSI_DaysInPartialYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640018].[BSSI_PartialYearStart]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640018].[BSSI_PartialYearEnd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640018].[BSSI_ProrateBP]'
GO
GRANT SELECT ON  [dbo].[B4640018] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640018] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640018] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640018] TO [DYNGRP]
GO
