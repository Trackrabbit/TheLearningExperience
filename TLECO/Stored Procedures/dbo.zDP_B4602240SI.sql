SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602240SI] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int, @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_Master_Charge_ID char(25), @BSSI_Description char(51), @BSSI_Billing_Frequency smallint, @BSSI_Is_Revenue_Sharing tinyint, @BSSI_Deferral_Account_1 char(5), @BSSI_Deferral_Account_2 char(5), @BSSI_Deferral_Account_3 char(3), @BSSI_Deferral_Account_4 char(3), @BSSI_Rev_Sharing_ID char(25), @TAXSCHID char(15), @PYMTRMID char(21), @BSSI_Charge_Account_Num_1 char(5), @BSSI_Charge_Account_Num_2 char(5), @BSSI_Charge_Account_Num_3 char(3), @BSSI_Charge_Account_Num_4 char(3), @BSSI_Discount_Account_Nu_1 char(5), @BSSI_Discount_Account_Nu_2 char(5), @BSSI_Discount_Account_Nu_3 char(3), @BSSI_Discount_Account_Nu_4 char(3), @SLSAMNT numeric(19,5), @DISCAMNT numeric(19,5), @PRCNTAGE numeric(19,5), @BSSI_Sales_Amount numeric(19,5), @BSSI_Discount_Amount numeric(19,5), @BSSI_CeilingAmt numeric(19,5), @BSSI_FloorAmt numeric(19,5), @ADRSCODE char(15), @BSSI_AltBillingAddress char(15), @CUSTNMBR char(15), @QUANTITY numeric(19,5), @ITEMNMBR char(31), @UOFM char(9), @BSSI_ChargeRecoveType smallint, @BSSI_ExtRevenueAmt numeric(19,5), @BSSI_RecoverableChargeID char(25), @BSSI_ReconcileDate datetime, @NOTEINDX numeric(19,5), @BSSI_SeperateInvoice tinyint, @BSSI_AdminFee numeric(19,5), @BSSI_CoTenancy tinyint, @BSSI_MinTargetOccupancy numeric(19,5), @BSSI_Abatement_Charge tinyint, @DECPLQTY smallint, @BSSI_StraightLineDefAcco_1 char(5), @BSSI_StraightLineDefAcco_2 char(5), @BSSI_StraightLineDefAcco_3 char(3), @BSSI_StraightLineDefAcco_4 char(3), @BSSI_StraightLineAssetAc_1 char(5), @BSSI_StraightLineAssetAc_2 char(5), @BSSI_StraightLineAssetAc_3 char(3), @BSSI_StraightLineAssetAc_4 char(3), @BSSI_MeterNumber char(31), @BSSI_Dummy tinyint, @BSSI_Deferrable tinyint, @BSSI_CreateSchBasedDate tinyint, @BSSI_RecognitionFrequenc smallint, @BSSI_Template_ID char(25), @BSSI_RecognitionAcctIndx int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B4602240 (BSSI_Tenant_Lease_Number, LNITMSEQ, LOCNCODE, BSSI_Charge_ID, BSSI_Master_Charge_ID, BSSI_Description, BSSI_Billing_Frequency, BSSI_Is_Revenue_Sharing, BSSI_Deferral_Account_1, BSSI_Deferral_Account_2, BSSI_Deferral_Account_3, BSSI_Deferral_Account_4, BSSI_Rev_Sharing_ID, TAXSCHID, PYMTRMID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCNTAGE, BSSI_Sales_Amount, BSSI_Discount_Amount, BSSI_CeilingAmt, BSSI_FloorAmt, ADRSCODE, BSSI_AltBillingAddress, CUSTNMBR, QUANTITY, ITEMNMBR, UOFM, BSSI_ChargeRecoveType, BSSI_ExtRevenueAmt, BSSI_RecoverableChargeID, BSSI_ReconcileDate, NOTEINDX, BSSI_SeperateInvoice, BSSI_AdminFee, BSSI_CoTenancy, BSSI_MinTargetOccupancy, BSSI_Abatement_Charge, DECPLQTY, BSSI_StraightLineDefAcco_1, BSSI_StraightLineDefAcco_2, BSSI_StraightLineDefAcco_3, BSSI_StraightLineDefAcco_4, BSSI_StraightLineAssetAc_1, BSSI_StraightLineAssetAc_2, BSSI_StraightLineAssetAc_3, BSSI_StraightLineAssetAc_4, BSSI_MeterNumber, BSSI_Dummy, BSSI_Deferrable, BSSI_CreateSchBasedDate, BSSI_RecognitionFrequenc, BSSI_Template_ID, BSSI_RecognitionAcctIndx) VALUES ( @BSSI_Tenant_Lease_Number, @LNITMSEQ, @LOCNCODE, @BSSI_Charge_ID, @BSSI_Master_Charge_ID, @BSSI_Description, @BSSI_Billing_Frequency, @BSSI_Is_Revenue_Sharing, @BSSI_Deferral_Account_1, @BSSI_Deferral_Account_2, @BSSI_Deferral_Account_3, @BSSI_Deferral_Account_4, @BSSI_Rev_Sharing_ID, @TAXSCHID, @PYMTRMID, @BSSI_Charge_Account_Num_1, @BSSI_Charge_Account_Num_2, @BSSI_Charge_Account_Num_3, @BSSI_Charge_Account_Num_4, @BSSI_Discount_Account_Nu_1, @BSSI_Discount_Account_Nu_2, @BSSI_Discount_Account_Nu_3, @BSSI_Discount_Account_Nu_4, @SLSAMNT, @DISCAMNT, @PRCNTAGE, @BSSI_Sales_Amount, @BSSI_Discount_Amount, @BSSI_CeilingAmt, @BSSI_FloorAmt, @ADRSCODE, @BSSI_AltBillingAddress, @CUSTNMBR, @QUANTITY, @ITEMNMBR, @UOFM, @BSSI_ChargeRecoveType, @BSSI_ExtRevenueAmt, @BSSI_RecoverableChargeID, @BSSI_ReconcileDate, @NOTEINDX, @BSSI_SeperateInvoice, @BSSI_AdminFee, @BSSI_CoTenancy, @BSSI_MinTargetOccupancy, @BSSI_Abatement_Charge, @DECPLQTY, @BSSI_StraightLineDefAcco_1, @BSSI_StraightLineDefAcco_2, @BSSI_StraightLineDefAcco_3, @BSSI_StraightLineDefAcco_4, @BSSI_StraightLineAssetAc_1, @BSSI_StraightLineAssetAc_2, @BSSI_StraightLineAssetAc_3, @BSSI_StraightLineAssetAc_4, @BSSI_MeterNumber, @BSSI_Dummy, @BSSI_Deferrable, @BSSI_CreateSchBasedDate, @BSSI_RecognitionFrequenc, @BSSI_Template_ID, @BSSI_RecognitionAcctIndx) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602240SI] TO [DYNGRP]
GO
