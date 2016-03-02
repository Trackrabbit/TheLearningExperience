SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30301SS_3] (@DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  DOCTYPE, DOCNUMBR, LNSEQNBR, DTLSEQNM, QTYTYPE, RCPTNMBR, RCPTQTY, RCPTEXCT, DEX_ROW_ID FROM .IV30301 WHERE DOCNUMBR = @DOCNUMBR ORDER BY DOCNUMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30301SS_3] TO [DYNGRP]
GO
