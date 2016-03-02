SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_STN41200SS_1] (@PRNSER smallint, @PRNTASK char(15)) AS  set nocount on SELECT TOP 1  PRNSER, PRNTASK, PRNTTASKDESC, DEX_ROW_ID FROM .STN41200 WHERE PRNSER = @PRNSER AND PRNTASK = @PRNTASK ORDER BY PRNSER ASC, PRNTASK ASC set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_STN41200SS_1] TO [DYNGRP]
GO
