CREATE TABLE [dbo].[B4640074]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ContributionAmount] [numeric] (19, 5) NOT NULL,
[BSSI_ContributionArea] [numeric] (19, 5) NOT NULL,
[BSSI_LeasableContriArea] [numeric] (19, 5) NOT NULL,
[BSSI_PayablesAmount] [numeric] (19, 5) NOT NULL,
[BSSI_BilledAmount] [numeric] (19, 5) NOT NULL,
[BSSI_AmountDue] [numeric] (19, 5) NOT NULL,
[BSSI_IsCompleted] [tinyint] NOT NULL,
[BSSI_IsCorrected] [tinyint] NOT NULL,
[BSSI_MinTargetOccupancy] [numeric] (19, 5) NOT NULL,
[BSSI_CoTenancy] [tinyint] NOT NULL,
[BSSI_AdminFee] [numeric] (19, 5) NOT NULL,
[BSSI_DaysOccupied] [smallint] NOT NULL,
[BSSI_Leased_Space_SF] [numeric] (19, 5) NOT NULL,
[BSSI_Rate] [numeric] (19, 5) NOT NULL,
[BSSI_WeighedOccupiedArea] [numeric] (19, 5) NOT NULL,
[BSSI_NetProjectArea] [numeric] (19, 5) NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AdminFeeAmount] [numeric] (19, 5) NOT NULL,
[BSSI_NetYearCost] [numeric] (19, 5) NOT NULL,
[BSSI_ShortComment] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_IsInterior] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_BuildingExpenses] [numeric] (19, 5) NOT NULL,
[BSSI_BuilldingArea] [numeric] (19, 5) NOT NULL,
[BSSI_LeasedMallArea] [numeric] (19, 5) NOT NULL,
[BSSI_ExteriorLeaseArea] [numeric] (19, 5) NOT NULL,
[BSSI_ExteriorLeasedArea] [numeric] (19, 5) NOT NULL,
[BSSI_DaysInYear] [numeric] (19, 5) NOT NULL,
[BSSI_Factor] [numeric] (19, 5) NOT NULL,
[BSSI_LineSeqNumber] [numeric] (19, 5) NOT NULL,
[BSSI_CurrentOccupancy] [numeric] (19, 5) NOT NULL,
[BSSI_CurrOccupInt] [numeric] (19, 5) NOT NULL,
[BSSI_NetYearCostInt] [numeric] (19, 5) NOT NULL,
[BSSI_ContribAmountInt] [numeric] (19, 5) NOT NULL,
[BSSI_LsbContribAreaInt] [numeric] (19, 5) NOT NULL,
[BSSI_LsdContribAreaInt] [numeric] (19, 5) NOT NULL,
[BSSI_WeigOccpAreaInt] [numeric] (19, 5) NOT NULL,
[BSSI_AdminFeeAmountInt] [numeric] (19, 5) NOT NULL,
[BSSI_NetProjAreaInt] [numeric] (19, 5) NOT NULL,
[BSSI_PayablesAmountInt] [numeric] (19, 5) NOT NULL,
[BSSI_RateInt] [numeric] (19, 5) NOT NULL,
[BSSI_ExteriorExpense] [numeric] (19, 5) NOT NULL,
[BSSI_InteriorExpense] [numeric] (19, 5) NOT NULL,
[BSSI_InteriorLeaseArea] [numeric] (19, 5) NOT NULL,
[BSSI_InteriorLeasedArea] [numeric] (19, 5) NOT NULL,
[BSSI_RecoverableChargeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Date] [datetime] NOT NULL,
[TODATE] [datetime] NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640074] ADD CONSTRAINT [CK__B4640074__From_D__160D184C] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640074] ADD CONSTRAINT [CK__B4640074__TODATE__17013C85] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[B4640074] ADD CONSTRAINT [PKB4640074] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [LNSEQNBR], [BSSI_Tenant_Lease_Number], [LOCNCODE], [From_Date], [TODATE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4640074] ON [dbo].[B4640074] ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [LOCNCODE], [BSSI_Tenant_Lease_Number], [From_Date], [TODATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640074] ON [dbo].[B4640074] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640074].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_ContributionAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_ContributionArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_LeasableContriArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_PayablesAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_BilledAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_AmountDue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640074].[BSSI_IsCompleted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640074].[BSSI_IsCorrected]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_MinTargetOccupancy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640074].[BSSI_CoTenancy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_AdminFee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640074].[BSSI_DaysOccupied]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_Leased_Space_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_WeighedOccupiedArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_NetProjectArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_AdminFeeAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_NetYearCost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[BSSI_ShortComment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640074].[BSSI_IsInterior]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_BuildingExpenses]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_BuilldingArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_LeasedMallArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_ExteriorLeaseArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_ExteriorLeasedArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_DaysInYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_Factor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_LineSeqNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_CurrentOccupancy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_CurrOccupInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_NetYearCostInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_ContribAmountInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_LsbContribAreaInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_LsdContribAreaInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_WeigOccpAreaInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_AdminFeeAmountInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_NetProjAreaInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_PayablesAmountInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_RateInt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_ExteriorExpense]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_InteriorExpense]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_InteriorLeaseArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640074].[BSSI_InteriorLeasedArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640074].[BSSI_RecoverableChargeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640074].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640074].[TODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640074].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4640074] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640074] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640074] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640074] TO [DYNGRP]
GO
