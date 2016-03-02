SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100400N_1] (@BS int, @BSSI_Rev_Exp_Source_ID char(25), @BSSI_Rev_Exp_Source_ID_RS char(25), @BSSI_Rev_Exp_Source_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Rev_Exp_Source_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Rev_Exp_Source_ID, BSSI_Description, BSSI_Recog_Acct_Index, BSSI_Based_On_Order_Type, NOTEINDX, DEX_ROW_ID FROM .B7100400 WHERE ( BSSI_Rev_Exp_Source_ID > @BSSI_Rev_Exp_Source_ID ) ORDER BY BSSI_Rev_Exp_Source_ID ASC END ELSE IF @BSSI_Rev_Exp_Source_ID_RS = @BSSI_Rev_Exp_Source_ID_RE BEGIN SELECT TOP 25  BSSI_Rev_Exp_Source_ID, BSSI_Description, BSSI_Recog_Acct_Index, BSSI_Based_On_Order_Type, NOTEINDX, DEX_ROW_ID FROM .B7100400 WHERE BSSI_Rev_Exp_Source_ID = @BSSI_Rev_Exp_Source_ID_RS AND ( BSSI_Rev_Exp_Source_ID > @BSSI_Rev_Exp_Source_ID ) ORDER BY BSSI_Rev_Exp_Source_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Rev_Exp_Source_ID, BSSI_Description, BSSI_Recog_Acct_Index, BSSI_Based_On_Order_Type, NOTEINDX, DEX_ROW_ID FROM .B7100400 WHERE BSSI_Rev_Exp_Source_ID BETWEEN @BSSI_Rev_Exp_Source_ID_RS AND @BSSI_Rev_Exp_Source_ID_RE AND ( BSSI_Rev_Exp_Source_ID > @BSSI_Rev_Exp_Source_ID ) ORDER BY BSSI_Rev_Exp_Source_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100400N_1] TO [DYNGRP]
GO
