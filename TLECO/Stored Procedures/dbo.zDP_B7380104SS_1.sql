SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7380104SS_1] (@JRNENTRY int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  JRNENTRY, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7380104 WHERE JRNENTRY = @JRNENTRY ORDER BY JRNENTRY ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7380104SS_1] TO [DYNGRP]
GO
