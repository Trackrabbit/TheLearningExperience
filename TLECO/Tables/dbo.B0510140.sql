CREATE TABLE [dbo].[B0510140]
(
[MJW_Distribution_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_With_Holding] [numeric] (19, 5) NOT NULL,
[MJW_Units_Purchased] [numeric] (19, 5) NOT NULL,
[MJW_Unit_Price] [numeric] (19, 5) NOT NULL,
[MJW_Distribution_Amount] [numeric] (19, 5) NOT NULL,
[MJW_AP_Invoice_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_AP_Invoice_Number20] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_Commission_Type] [smallint] NOT NULL,
[IMS_Broker_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_Dist_Comm_Percent] [numeric] (19, 5) NOT NULL,
[BSSI_Liquidation_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_UnitsLiquidated] [numeric] (19, 5) NOT NULL,
[BSSI_Days_to_Prorate] [smallint] NOT NULL,
[BSSI_InvestorInvPercent] [smallint] NOT NULL,
[PRCNTAGE] [numeric] (19, 5) NOT NULL,
[BSSI_InvestorInvestAmt] [numeric] (19, 5) NOT NULL,
[BSSI_Capital_Call_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[BSSI_Investor_AP_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510140] ADD CONSTRAINT [PKB0510140] PRIMARY KEY NONCLUSTERED  ([MJW_Distribution_Number], [MJW_Investment_Number], [IMS_Commission_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510140] ON [dbo].[B0510140] ([BSSI_Capital_Call_ID], [LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B0510140] ON [dbo].[B0510140] ([MJW_Distribution_Number], [BSSI_Capital_Call_ID], [LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B0510140] ON [dbo].[B0510140] ([MJW_Distribution_Number], [MJW_Investment_Number], [SLPRSNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[MJW_Distribution_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510140].[MJW_With_Holding]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510140].[MJW_Units_Purchased]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510140].[MJW_Unit_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510140].[MJW_Distribution_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[MJW_AP_Invoice_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[MJW_AP_Invoice_Number20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510140].[IMS_Commission_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[IMS_Broker_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510140].[IMS_Dist_Comm_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510140].[BSSI_Liquidation_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510140].[BSSI_UnitsLiquidated]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510140].[BSSI_Days_to_Prorate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510140].[BSSI_InvestorInvPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510140].[PRCNTAGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510140].[BSSI_InvestorInvestAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[BSSI_Capital_Call_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510140].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510140].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510140].[BSSI_Investor_AP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510140].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B0510140] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510140] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510140] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510140] TO [DYNGRP]
GO
