SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602207L_3] (@BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Master_Charge_ID_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Master_Charge_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Charge_ID, BSSI_Is_Revenue_Sharing, TAXSCHID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCTOSAL, BSSI_Master_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .B4602207 ORDER BY BSSI_Tenant_Lease_Number DESC, BSSI_Master_Charge_ID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Charge_ID, BSSI_Is_Revenue_Sharing, TAXSCHID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCTOSAL, BSSI_Master_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .B4602207 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND BSSI_Master_Charge_ID BETWEEN @BSSI_Master_Charge_ID_RS AND @BSSI_Master_Charge_ID_RE ORDER BY BSSI_Tenant_Lease_Number DESC, BSSI_Master_Charge_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Charge_ID, BSSI_Is_Revenue_Sharing, TAXSCHID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCTOSAL, BSSI_Master_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .B4602207 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Master_Charge_ID BETWEEN @BSSI_Master_Charge_ID_RS AND @BSSI_Master_Charge_ID_RE ORDER BY BSSI_Tenant_Lease_Number DESC, BSSI_Master_Charge_ID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602207L_3] TO [DYNGRP]
GO
