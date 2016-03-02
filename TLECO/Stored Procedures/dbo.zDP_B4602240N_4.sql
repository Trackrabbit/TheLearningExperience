SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602240N_4] (@BS int, @BSSI_Tenant_Lease_Number char(25), @BSSI_Is_Revenue_Sharing tinyint, @DEX_ROW_ID int, @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Is_Revenue_Sharing_RS tinyint, @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Is_Revenue_Sharing_RE tinyint) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, LOCNCODE, BSSI_Charge_ID, BSSI_Master_Charge_ID, BSSI_Description, BSSI_Billing_Frequency, BSSI_Is_Revenue_Sharing, BSSI_Deferral_Account_1, BSSI_Deferral_Account_2, BSSI_Deferral_Account_3, BSSI_Deferral_Account_4, BSSI_Rev_Sharing_ID, TAXSCHID, PYMTRMID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCNTAGE, BSSI_Sales_Amount, BSSI_Discount_Amount, BSSI_CeilingAmt, BSSI_FloorAmt, ADRSCODE, BSSI_AltBillingAddress, CUSTNMBR, QUANTITY, ITEMNMBR, UOFM, BSSI_ChargeRecoveType, BSSI_ExtRevenueAmt, BSSI_RecoverableChargeID, BSSI_ReconcileDate, NOTEINDX, BSSI_SeperateInvoice, BSSI_AdminFee, BSSI_CoTenancy, BSSI_MinTargetOccupancy, BSSI_Abatement_Charge, DECPLQTY, BSSI_StraightLineDefAcco_1, BSSI_StraightLineDefAcco_2, BSSI_StraightLineDefAcco_3, BSSI_StraightLineDefAcco_4, BSSI_StraightLineAssetAc_1, BSSI_StraightLineAssetAc_2, BSSI_StraightLineAssetAc_3, BSSI_StraightLineAssetAc_4, BSSI_MeterNumber, BSSI_Dummy, BSSI_Deferrable, BSSI_CreateSchBasedDate, BSSI_RecognitionFrequenc, BSSI_Template_ID, BSSI_RecognitionAcctIndx, DEX_ROW_ID FROM .B4602240 WHERE ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Is_Revenue_Sharing = @BSSI_Is_Revenue_Sharing AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Is_Revenue_Sharing > @BSSI_Is_Revenue_Sharing OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Is_Revenue_Sharing ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, LOCNCODE, BSSI_Charge_ID, BSSI_Master_Charge_ID, BSSI_Description, BSSI_Billing_Frequency, BSSI_Is_Revenue_Sharing, BSSI_Deferral_Account_1, BSSI_Deferral_Account_2, BSSI_Deferral_Account_3, BSSI_Deferral_Account_4, BSSI_Rev_Sharing_ID, TAXSCHID, PYMTRMID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCNTAGE, BSSI_Sales_Amount, BSSI_Discount_Amount, BSSI_CeilingAmt, BSSI_FloorAmt, ADRSCODE, BSSI_AltBillingAddress, CUSTNMBR, QUANTITY, ITEMNMBR, UOFM, BSSI_ChargeRecoveType, BSSI_ExtRevenueAmt, BSSI_RecoverableChargeID, BSSI_ReconcileDate, NOTEINDX, BSSI_SeperateInvoice, BSSI_AdminFee, BSSI_CoTenancy, BSSI_MinTargetOccupancy, BSSI_Abatement_Charge, DECPLQTY, BSSI_StraightLineDefAcco_1, BSSI_StraightLineDefAcco_2, BSSI_StraightLineDefAcco_3, BSSI_StraightLineDefAcco_4, BSSI_StraightLineAssetAc_1, BSSI_StraightLineAssetAc_2, BSSI_StraightLineAssetAc_3, BSSI_StraightLineAssetAc_4, BSSI_MeterNumber, BSSI_Dummy, BSSI_Deferrable, BSSI_CreateSchBasedDate, BSSI_RecognitionFrequenc, BSSI_Template_ID, BSSI_RecognitionAcctIndx, DEX_ROW_ID FROM .B4602240 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND BSSI_Is_Revenue_Sharing BETWEEN @BSSI_Is_Revenue_Sharing_RS AND @BSSI_Is_Revenue_Sharing_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Is_Revenue_Sharing = @BSSI_Is_Revenue_Sharing AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Is_Revenue_Sharing > @BSSI_Is_Revenue_Sharing OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Is_Revenue_Sharing ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, LOCNCODE, BSSI_Charge_ID, BSSI_Master_Charge_ID, BSSI_Description, BSSI_Billing_Frequency, BSSI_Is_Revenue_Sharing, BSSI_Deferral_Account_1, BSSI_Deferral_Account_2, BSSI_Deferral_Account_3, BSSI_Deferral_Account_4, BSSI_Rev_Sharing_ID, TAXSCHID, PYMTRMID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCNTAGE, BSSI_Sales_Amount, BSSI_Discount_Amount, BSSI_CeilingAmt, BSSI_FloorAmt, ADRSCODE, BSSI_AltBillingAddress, CUSTNMBR, QUANTITY, ITEMNMBR, UOFM, BSSI_ChargeRecoveType, BSSI_ExtRevenueAmt, BSSI_RecoverableChargeID, BSSI_ReconcileDate, NOTEINDX, BSSI_SeperateInvoice, BSSI_AdminFee, BSSI_CoTenancy, BSSI_MinTargetOccupancy, BSSI_Abatement_Charge, DECPLQTY, BSSI_StraightLineDefAcco_1, BSSI_StraightLineDefAcco_2, BSSI_StraightLineDefAcco_3, BSSI_StraightLineDefAcco_4, BSSI_StraightLineAssetAc_1, BSSI_StraightLineAssetAc_2, BSSI_StraightLineAssetAc_3, BSSI_StraightLineAssetAc_4, BSSI_MeterNumber, BSSI_Dummy, BSSI_Deferrable, BSSI_CreateSchBasedDate, BSSI_RecognitionFrequenc, BSSI_Template_ID, BSSI_RecognitionAcctIndx, DEX_ROW_ID FROM .B4602240 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Is_Revenue_Sharing BETWEEN @BSSI_Is_Revenue_Sharing_RS AND @BSSI_Is_Revenue_Sharing_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Is_Revenue_Sharing = @BSSI_Is_Revenue_Sharing AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Is_Revenue_Sharing > @BSSI_Is_Revenue_Sharing OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Is_Revenue_Sharing ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602240N_4] TO [DYNGRP]
GO
