SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10205SS_3] (@PRCBKID char(15), @PRODTCOD char(1), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  PRCBKID, PRODTCOD, LINKCODE, SEQNUMBR, DEX_ROW_ID FROM .SOP10205 WHERE PRCBKID = @PRCBKID AND PRODTCOD = @PRODTCOD AND SEQNUMBR = @SEQNUMBR ORDER BY PRCBKID ASC, PRODTCOD ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10205SS_3] TO [DYNGRP]
GO
