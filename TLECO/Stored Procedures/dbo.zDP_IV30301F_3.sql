SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30301F_3] (@DOCNUMBR_RS char(21), @DOCNUMBR_RE char(21)) AS  set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, DOCNUMBR, LNSEQNBR, DTLSEQNM, QTYTYPE, RCPTNMBR, RCPTQTY, RCPTEXCT, DEX_ROW_ID FROM .IV30301 ORDER BY DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  DOCTYPE, DOCNUMBR, LNSEQNBR, DTLSEQNM, QTYTYPE, RCPTNMBR, RCPTQTY, RCPTEXCT, DEX_ROW_ID FROM .IV30301 WHERE DOCNUMBR = @DOCNUMBR_RS ORDER BY DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, DOCNUMBR, LNSEQNBR, DTLSEQNM, QTYTYPE, RCPTNMBR, RCPTQTY, RCPTEXCT, DEX_ROW_ID FROM .IV30301 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY DOCNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30301F_3] TO [DYNGRP]
GO
