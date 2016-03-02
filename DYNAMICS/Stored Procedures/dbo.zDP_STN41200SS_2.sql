SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_STN41200SS_2] (@PRNSER smallint, @PRNTTASKDESC char(51)) AS  set nocount on SELECT TOP 1  PRNSER, PRNTASK, PRNTTASKDESC, DEX_ROW_ID FROM .STN41200 WHERE PRNSER = @PRNSER AND PRNTTASKDESC = @PRNTTASKDESC ORDER BY PRNSER ASC, PRNTTASKDESC ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_STN41200SS_2] TO [DYNGRP]
GO