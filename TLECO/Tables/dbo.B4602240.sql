CREATE TABLE [dbo].[B4602240]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Master_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Billing_Frequency] [smallint] NOT NULL,
[BSSI_Is_Revenue_Sharing] [tinyint] NOT NULL,
[BSSI_Deferral_Account_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferral_Account_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferral_Account_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferral_Account_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Rev_Sharing_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[DISCAMNT] [numeric] (19, 5) NOT NULL,
[PRCNTAGE] [numeric] (19, 5) NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Discount_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_CeilingAmt] [numeric] (19, 5) NOT NULL,
[BSSI_FloorAmt] [numeric] (19, 5) NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AltBillingAddress] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ChargeRecoveType] [smallint] NOT NULL,
[BSSI_ExtRevenueAmt] [numeric] (19, 5) NOT NULL,
[BSSI_RecoverableChargeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ReconcileDate] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_SeperateInvoice] [tinyint] NOT NULL,
[BSSI_AdminFee] [numeric] (19, 5) NOT NULL,
[BSSI_CoTenancy] [tinyint] NOT NULL,
[BSSI_MinTargetOccupancy] [numeric] (19, 5) NOT NULL,
[BSSI_Abatement_Charge] [tinyint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[BSSI_StraightLineDefAcco_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineDefAcco_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineDefAcco_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineDefAcco_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineAssetAc_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineAssetAc_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineAssetAc_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineAssetAc_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MeterNumber] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[BSSI_Deferrable] [tinyint] NOT NULL,
[BSSI_CreateSchBasedDate] [tinyint] NOT NULL,
[BSSI_RecognitionFrequenc] [smallint] NOT NULL,
[BSSI_Template_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RecognitionAcctIndx] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602240] ADD CONSTRAINT [CK__B4602240__BSSI_R__22437468] CHECK ((datepart(hour,[BSSI_ReconcileDate])=(0) AND datepart(minute,[BSSI_ReconcileDate])=(0) AND datepart(second,[BSSI_ReconcileDate])=(0) AND datepart(millisecond,[BSSI_ReconcileDate])=(0)))
GO
ALTER TABLE [dbo].[B4602240] ADD CONSTRAINT [PKB4602240] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602240] ON [dbo].[B4602240] ([BSSI_Billing_Frequency], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B4602240] ON [dbo].[B4602240] ([BSSI_Charge_ID], [BSSI_Abatement_Charge], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4602240] ON [dbo].[B4602240] ([BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B4602240] ON [dbo].[B4602240] ([BSSI_Tenant_Lease_Number], [BSSI_Charge_ID], [LOCNCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4602240] ON [dbo].[B4602240] ([BSSI_Tenant_Lease_Number], [BSSI_Is_Revenue_Sharing], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602240] ON [dbo].[B4602240] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B4602240] ON [dbo].[B4602240] ([LOCNCODE], [BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Master_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_Billing_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_Is_Revenue_Sharing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Deferral_Account_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Deferral_Account_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Deferral_Account_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Deferral_Account_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Rev_Sharing_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Charge_Account_Num_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Charge_Account_Num_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Charge_Account_Num_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Charge_Account_Num_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Discount_Account_Nu_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Discount_Account_Nu_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Discount_Account_Nu_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Discount_Account_Nu_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[DISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[PRCNTAGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[BSSI_Discount_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[BSSI_CeilingAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[BSSI_FloorAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_AltBillingAddress]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_ChargeRecoveType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[BSSI_ExtRevenueAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_RecoverableChargeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602240].[BSSI_ReconcileDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_SeperateInvoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[BSSI_AdminFee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_CoTenancy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602240].[BSSI_MinTargetOccupancy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_Abatement_Charge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_StraightLineDefAcco_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_StraightLineDefAcco_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_StraightLineDefAcco_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_StraightLineDefAcco_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_StraightLineAssetAc_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_StraightLineAssetAc_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_StraightLineAssetAc_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_StraightLineAssetAc_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_MeterNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_Dummy]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_Deferrable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_CreateSchBasedDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_RecognitionFrequenc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602240].[BSSI_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602240].[BSSI_RecognitionAcctIndx]'
GO
GRANT SELECT ON  [dbo].[B4602240] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602240] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602240] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602240] TO [DYNGRP]
GO
