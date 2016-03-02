SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100400SS_1] (@BSSI_Rev_Exp_Source_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Rev_Exp_Source_ID, BSSI_Description, BSSI_Recog_Acct_Index, BSSI_Based_On_Order_Type, NOTEINDX, DEX_ROW_ID FROM .B7100400 WHERE BSSI_Rev_Exp_Source_ID = @BSSI_Rev_Exp_Source_ID ORDER BY BSSI_Rev_Exp_Source_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100400SS_1] TO [DYNGRP]
GO
