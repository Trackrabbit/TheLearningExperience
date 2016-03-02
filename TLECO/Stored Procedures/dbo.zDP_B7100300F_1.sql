SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100300F_1] (@BSSI_Offering_Type_ID_RS char(25), @BSSI_Offering_Type_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Offering_Type_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Offering_Type_ID, BSSI_Description, BSSI_Rev_Def_Acct_Index, BSSI_On_Hold_RevDefIndex, BSSI_Exp_Deferral_Index, BSSI_On_Hold_ExpDefIndex, NOTEINDX, DEX_ROW_ID FROM .B7100300 ORDER BY BSSI_Offering_Type_ID ASC END ELSE IF @BSSI_Offering_Type_ID_RS = @BSSI_Offering_Type_ID_RE BEGIN SELECT TOP 25  BSSI_Offering_Type_ID, BSSI_Description, BSSI_Rev_Def_Acct_Index, BSSI_On_Hold_RevDefIndex, BSSI_Exp_Deferral_Index, BSSI_On_Hold_ExpDefIndex, NOTEINDX, DEX_ROW_ID FROM .B7100300 WHERE BSSI_Offering_Type_ID = @BSSI_Offering_Type_ID_RS ORDER BY BSSI_Offering_Type_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Offering_Type_ID, BSSI_Description, BSSI_Rev_Def_Acct_Index, BSSI_On_Hold_RevDefIndex, BSSI_Exp_Deferral_Index, BSSI_On_Hold_ExpDefIndex, NOTEINDX, DEX_ROW_ID FROM .B7100300 WHERE BSSI_Offering_Type_ID BETWEEN @BSSI_Offering_Type_ID_RS AND @BSSI_Offering_Type_ID_RE ORDER BY BSSI_Offering_Type_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100300F_1] TO [DYNGRP]
GO
