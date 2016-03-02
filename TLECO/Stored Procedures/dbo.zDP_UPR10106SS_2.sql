SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10106SS_2] (@RPTNGYR smallint, @EMPLOYID char(15), @SEQNUMBR int, @LOCLCODE char(7)) AS  set nocount on SELECT TOP 1  RPTNGYR, EMPLOYID, SEQNUMBR, LOCLCODE, LOCLWGES, LCLINTAX, W2PRINTD, TAXTYPE, DEX_ROW_ID FROM .UPR10106 WHERE RPTNGYR = @RPTNGYR AND EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND LOCLCODE = @LOCLCODE ORDER BY RPTNGYR ASC, EMPLOYID ASC, SEQNUMBR ASC, LOCLCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10106SS_2] TO [DYNGRP]
GO
