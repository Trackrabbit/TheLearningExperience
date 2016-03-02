SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00500SS_1] (@PRCSHID char(15), @PRODTCOD char(1), @LINKCODE char(15)) AS  set nocount on SELECT TOP 1  PRCSHID, PRODTCOD, LINKCODE, SEQNUMBR, PSSEQNUM, DEX_ROW_ID FROM .RM00500 WHERE PRCSHID = @PRCSHID AND PRODTCOD = @PRODTCOD AND LINKCODE = @LINKCODE ORDER BY PRCSHID ASC, PRODTCOD ASC, LINKCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00500SS_1] TO [DYNGRP]
GO
