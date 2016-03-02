SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602940L_5] (@BSSI_Charge_ID_RS char(25), @BSSI_Charge_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Charge_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Charge_ID, BSSI_Description, BSSI_Billing_Frequency, BSSI_Is_Revenue_Sharing, BSSI_Rev_Sharing_ID, BSSI_Master_Charge_ID, TAXSCHID, PYMTRMID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCNTAGE, BSSI_Sales_Amount, BSSI_Discount_Amount, NOTEINDX, BSSI_StraightLineAssetAc_1, BSSI_StraightLineAssetAc_2, BSSI_StraightLineAssetAc_3, BSSI_StraightLineAssetAc_4, BSSI_StraightLineDefAcco_1, BSSI_StraightLineDefAcco_2, BSSI_StraightLineDefAcco_3, BSSI_StraightLineDefAcco_4, BSSI_Deferral_Account_1, BSSI_Deferral_Account_2, BSSI_Deferral_Account_3, BSSI_Deferral_Account_4, DEX_ROW_ID FROM .B4602940 ORDER BY BSSI_Charge_ID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Charge_ID_RS = @BSSI_Charge_ID_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Charge_ID, BSSI_Description, BSSI_Billing_Frequency, BSSI_Is_Revenue_Sharing, BSSI_Rev_Sharing_ID, BSSI_Master_Charge_ID, TAXSCHID, PYMTRMID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCNTAGE, BSSI_Sales_Amount, BSSI_Discount_Amount, NOTEINDX, BSSI_StraightLineAssetAc_1, BSSI_StraightLineAssetAc_2, BSSI_StraightLineAssetAc_3, BSSI_StraightLineAssetAc_4, BSSI_StraightLineDefAcco_1, BSSI_StraightLineDefAcco_2, BSSI_StraightLineDefAcco_3, BSSI_StraightLineDefAcco_4, BSSI_Deferral_Account_1, BSSI_Deferral_Account_2, BSSI_Deferral_Account_3, BSSI_Deferral_Account_4, DEX_ROW_ID FROM .B4602940 WHERE BSSI_Charge_ID = @BSSI_Charge_ID_RS ORDER BY BSSI_Charge_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Charge_ID, BSSI_Description, BSSI_Billing_Frequency, BSSI_Is_Revenue_Sharing, BSSI_Rev_Sharing_ID, BSSI_Master_Charge_ID, TAXSCHID, PYMTRMID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCNTAGE, BSSI_Sales_Amount, BSSI_Discount_Amount, NOTEINDX, BSSI_StraightLineAssetAc_1, BSSI_StraightLineAssetAc_2, BSSI_StraightLineAssetAc_3, BSSI_StraightLineAssetAc_4, BSSI_StraightLineDefAcco_1, BSSI_StraightLineDefAcco_2, BSSI_StraightLineDefAcco_3, BSSI_StraightLineDefAcco_4, BSSI_Deferral_Account_1, BSSI_Deferral_Account_2, BSSI_Deferral_Account_3, BSSI_Deferral_Account_4, DEX_ROW_ID FROM .B4602940 WHERE BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE ORDER BY BSSI_Charge_ID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602940L_5] TO [DYNGRP]
GO
