SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC40401SS_1] (@DENOMCURR char(15)) AS  set nocount on SELECT TOP 1  DENOMCURR, DENXRATE, ENABLED, DEX_ROW_ID FROM .MC40401 WHERE DENOMCURR = @DENOMCURR ORDER BY DENOMCURR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40401SS_1] TO [DYNGRP]
GO
