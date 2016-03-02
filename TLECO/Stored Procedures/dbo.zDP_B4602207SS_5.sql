SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602207SS_5] (@BSSI_Master_Charge_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Charge_ID, BSSI_Is_Revenue_Sharing, TAXSCHID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCTOSAL, BSSI_Master_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .B4602207 WHERE BSSI_Master_Charge_ID = @BSSI_Master_Charge_ID ORDER BY BSSI_Master_Charge_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602207SS_5] TO [DYNGRP]
GO
