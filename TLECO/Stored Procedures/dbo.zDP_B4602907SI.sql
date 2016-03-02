SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602907SI] (@BSSI_Ground_Lease_Number char(25), @LNITMSEQ int, @BSSI_Charge_ID char(25), @BSSI_Is_Revenue_Sharing tinyint, @TAXSCHID char(15), @BSSI_Charge_Account_Num_1 char(5), @BSSI_Charge_Account_Num_2 char(5), @BSSI_Charge_Account_Num_3 char(3), @BSSI_Charge_Account_Num_4 char(3), @BSSI_Discount_Account_Nu_1 char(5), @BSSI_Discount_Account_Nu_2 char(5), @BSSI_Discount_Account_Nu_3 char(3), @BSSI_Discount_Account_Nu_4 char(3), @SLSAMNT numeric(19,5), @DISCAMNT numeric(19,5), @PRCTOSAL smallint, @BSSI_Master_Charge_ID char(25), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602907 (BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Charge_ID, BSSI_Is_Revenue_Sharing, TAXSCHID, BSSI_Charge_Account_Num_1, BSSI_Charge_Account_Num_2, BSSI_Charge_Account_Num_3, BSSI_Charge_Account_Num_4, BSSI_Discount_Account_Nu_1, BSSI_Discount_Account_Nu_2, BSSI_Discount_Account_Nu_3, BSSI_Discount_Account_Nu_4, SLSAMNT, DISCAMNT, PRCTOSAL, BSSI_Master_Charge_ID, NOTEINDX) VALUES ( @BSSI_Ground_Lease_Number, @LNITMSEQ, @BSSI_Charge_ID, @BSSI_Is_Revenue_Sharing, @TAXSCHID, @BSSI_Charge_Account_Num_1, @BSSI_Charge_Account_Num_2, @BSSI_Charge_Account_Num_3, @BSSI_Charge_Account_Num_4, @BSSI_Discount_Account_Nu_1, @BSSI_Discount_Account_Nu_2, @BSSI_Discount_Account_Nu_3, @BSSI_Discount_Account_Nu_4, @SLSAMNT, @DISCAMNT, @PRCTOSAL, @BSSI_Master_Charge_ID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602907SI] TO [DYNGRP]
GO