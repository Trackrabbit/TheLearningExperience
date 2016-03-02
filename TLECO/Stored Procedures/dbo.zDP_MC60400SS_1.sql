SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC60400SS_1] (@DENOMCURR char(15)) AS  set nocount on SELECT TOP 1  DENOMCURR, ENABLED, USERID, REALGAIN, REALLOSS, PSTGDATE, DEX_ROW_ID FROM .MC60400 WHERE DENOMCURR = @DENOMCURR ORDER BY DENOMCURR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC60400SS_1] TO [DYNGRP]
GO
