SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10105F_2] (@RPTNGYR_RS smallint, @EMPLOYID_RS char(15), @SEQNUMBR_RS int, @STATECD_RS char(3), @RPTNGYR_RE smallint, @EMPLOYID_RE char(15), @SEQNUMBR_RE int, @STATECD_RE char(3)) AS  set nocount on IF @RPTNGYR_RS IS NULL BEGIN SELECT TOP 25  RPTNGYR, EMPLOYID, STATINTX, STATEWGS, SEQNUMBR, STATECD, ESTIDNBR, W2PRINTD, TXENTYCD, OTHSTDAT, STCNTRLNUM, SUPPDAT1, SUPPDAT2, DEX_ROW_ID FROM .UPR10105 ORDER BY RPTNGYR ASC, EMPLOYID ASC, SEQNUMBR ASC, STATECD ASC END ELSE IF @RPTNGYR_RS = @RPTNGYR_RE BEGIN SELECT TOP 25  RPTNGYR, EMPLOYID, STATINTX, STATEWGS, SEQNUMBR, STATECD, ESTIDNBR, W2PRINTD, TXENTYCD, OTHSTDAT, STCNTRLNUM, SUPPDAT1, SUPPDAT2, DEX_ROW_ID FROM .UPR10105 WHERE RPTNGYR = @RPTNGYR_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE ORDER BY RPTNGYR ASC, EMPLOYID ASC, SEQNUMBR ASC, STATECD ASC END ELSE BEGIN SELECT TOP 25  RPTNGYR, EMPLOYID, STATINTX, STATEWGS, SEQNUMBR, STATECD, ESTIDNBR, W2PRINTD, TXENTYCD, OTHSTDAT, STCNTRLNUM, SUPPDAT1, SUPPDAT2, DEX_ROW_ID FROM .UPR10105 WHERE RPTNGYR BETWEEN @RPTNGYR_RS AND @RPTNGYR_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE ORDER BY RPTNGYR ASC, EMPLOYID ASC, SEQNUMBR ASC, STATECD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10105F_2] TO [DYNGRP]
GO