SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602600SS_2] (@BSSI_Description char(51)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BSSI_Charge_ID, BSSI_Description, BSSI_Charge_Type, BSSI_Charge_Acct_Type, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, PYMTRMID, TAXSCHID, ITEMNMBR, NOTEINDX, BSSI_Deferral_Account_1, BSSI_Deferral_Account_2, BSSI_Deferral_Account_3, BSSI_Deferral_Account_4, BSSI_FloorAmt, BSSI_CeilingAmt, BSSI_SeperateInvoice, BSSI_ChargeRecoveType, BSSI_Abatement_Charge, DOCID, BSSI_StraightLineDefAcco_1, BSSI_StraightLineDefAcco_2, BSSI_StraightLineDefAcco_3, BSSI_StraightLineDefAcco_4, BSSI_StraightLineAssetAc_1, BSSI_StraightLineAssetAc_2, BSSI_StraightLineAssetAc_3, BSSI_StraightLineAssetAc_4, BSSI_Deferrable, BSSI_CreateSchBasedDate, BSSI_RecognitionFrequenc, BSSI_Template_ID, BSSI_RecognitionAcctIndx, BSSI_SendReminder, DEX_ROW_ID FROM .B4602600 WHERE BSSI_Description = @BSSI_Description ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602600SS_2] TO [DYNGRP]
GO
