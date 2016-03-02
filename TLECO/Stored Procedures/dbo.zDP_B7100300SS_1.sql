SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100300SS_1] (@BSSI_Offering_Type_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Offering_Type_ID, BSSI_Description, BSSI_Rev_Def_Acct_Index, BSSI_On_Hold_RevDefIndex, BSSI_Exp_Deferral_Index, BSSI_On_Hold_ExpDefIndex, NOTEINDX, DEX_ROW_ID FROM .B7100300 WHERE BSSI_Offering_Type_ID = @BSSI_Offering_Type_ID ORDER BY BSSI_Offering_Type_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100300SS_1] TO [DYNGRP]
GO
