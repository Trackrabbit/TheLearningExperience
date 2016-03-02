SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41302SS_1] (@TAXCODE char(7), @TXFLGSTS char(7), @TXTBLTYP smallint, @TXTBLSEQ smallint) AS  set nocount on SELECT TOP 1  TAXCODE, TXFLGSTS, TXTBLTYP, TXTBLSEQ, TXBRULMT, TXBRKTAM, RXBRKTRT, TXBREXWG, DEX_ROW_ID FROM .UPR41302 WHERE TAXCODE = @TAXCODE AND TXFLGSTS = @TXFLGSTS AND TXTBLTYP = @TXTBLTYP AND TXTBLSEQ = @TXTBLSEQ ORDER BY TAXCODE ASC, TXFLGSTS ASC, TXTBLTYP ASC, TXTBLSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41302SS_1] TO [DYNGRP]
GO