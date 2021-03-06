SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC1010SS_1] (@JRNENTRY int, @SQNCLINE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  JRNENTRY, SQNCLINE, REFRENCE, DEX_ROW_ID FROM .NCIC1010 WHERE JRNENTRY = @JRNENTRY AND SQNCLINE = @SQNCLINE ORDER BY JRNENTRY ASC, SQNCLINE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1010SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1010SS_1] TO [public]
GO
