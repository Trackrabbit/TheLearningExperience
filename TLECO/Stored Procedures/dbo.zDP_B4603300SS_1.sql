SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603300SS_1] (@BSSI_Deposit_Type_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Deposit_Type_ID, BSSI_Description, BSSI_Deposit_Account_Num_1, BSSI_Deposit_Account_Num_2, BSSI_Deposit_Account_Num_3, BSSI_Deposit_Account_Num_4, NOTEINDX, DEX_ROW_ID FROM .B4603300 WHERE BSSI_Deposit_Type_ID = @BSSI_Deposit_Type_ID ORDER BY BSSI_Deposit_Type_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603300SS_1] TO [DYNGRP]
GO
