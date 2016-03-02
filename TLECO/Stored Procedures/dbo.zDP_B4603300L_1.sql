SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603300L_1] (@BSSI_Deposit_Type_ID_RS char(25), @BSSI_Deposit_Type_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Deposit_Type_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Deposit_Type_ID, BSSI_Description, BSSI_Deposit_Account_Num_1, BSSI_Deposit_Account_Num_2, BSSI_Deposit_Account_Num_3, BSSI_Deposit_Account_Num_4, NOTEINDX, DEX_ROW_ID FROM .B4603300 ORDER BY BSSI_Deposit_Type_ID DESC END ELSE IF @BSSI_Deposit_Type_ID_RS = @BSSI_Deposit_Type_ID_RE BEGIN SELECT TOP 25  BSSI_Deposit_Type_ID, BSSI_Description, BSSI_Deposit_Account_Num_1, BSSI_Deposit_Account_Num_2, BSSI_Deposit_Account_Num_3, BSSI_Deposit_Account_Num_4, NOTEINDX, DEX_ROW_ID FROM .B4603300 WHERE BSSI_Deposit_Type_ID = @BSSI_Deposit_Type_ID_RS ORDER BY BSSI_Deposit_Type_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Deposit_Type_ID, BSSI_Description, BSSI_Deposit_Account_Num_1, BSSI_Deposit_Account_Num_2, BSSI_Deposit_Account_Num_3, BSSI_Deposit_Account_Num_4, NOTEINDX, DEX_ROW_ID FROM .B4603300 WHERE BSSI_Deposit_Type_ID BETWEEN @BSSI_Deposit_Type_ID_RS AND @BSSI_Deposit_Type_ID_RE ORDER BY BSSI_Deposit_Type_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603300L_1] TO [DYNGRP]
GO
