SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10105SS_2] (@RPTNGYR smallint, @EMPLOYID char(15), @SEQNUMBR int, @STATECD char(3)) AS  set nocount on SELECT TOP 1  RPTNGYR, EMPLOYID, STATINTX, STATEWGS, SEQNUMBR, STATECD, ESTIDNBR, W2PRINTD, TXENTYCD, OTHSTDAT, STCNTRLNUM, SUPPDAT1, SUPPDAT2, DEX_ROW_ID FROM .UPR10105 WHERE RPTNGYR = @RPTNGYR AND EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND STATECD = @STATECD ORDER BY RPTNGYR ASC, EMPLOYID ASC, SEQNUMBR ASC, STATECD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10105SS_2] TO [DYNGRP]
GO