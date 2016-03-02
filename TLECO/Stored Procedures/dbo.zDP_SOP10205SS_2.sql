SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10205SS_2] (@PRODTCOD char(1), @LINKCODE char(15)) AS  set nocount on SELECT TOP 1  PRCBKID, PRODTCOD, LINKCODE, SEQNUMBR, DEX_ROW_ID FROM .SOP10205 WHERE PRODTCOD = @PRODTCOD AND LINKCODE = @LINKCODE ORDER BY PRODTCOD ASC, LINKCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10205SS_2] TO [DYNGRP]
GO