SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR00300N_1] (@BS int, @EMPLOYID char(15), @EMPLOYID_RS char(15), @EMPLOYID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  NOTEINDX, EMPLOYID, EXMFRFED, FDFLGSTS, FEDEXMPT, ADFDWHDG, ESTFEDWH, STATECD, LOCALTAX, W2BF942E, W2BFDCSD, W2BFDCMP, W2BFLREP, W2BFPPLN, W2BFSTEM, MCRQGEMP, EICFLGST, NYTXDiff, QualifiedHire, MarriedWithholdAsSingle, DEX_ROW_ID FROM .UPR00300 WHERE ( EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  NOTEINDX, EMPLOYID, EXMFRFED, FDFLGSTS, FEDEXMPT, ADFDWHDG, ESTFEDWH, STATECD, LOCALTAX, W2BF942E, W2BFDCSD, W2BFDCMP, W2BFLREP, W2BFPPLN, W2BFSTEM, MCRQGEMP, EICFLGST, NYTXDiff, QualifiedHire, MarriedWithholdAsSingle, DEX_ROW_ID FROM .UPR00300 WHERE EMPLOYID = @EMPLOYID_RS AND ( EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC END ELSE BEGIN SELECT TOP 25  NOTEINDX, EMPLOYID, EXMFRFED, FDFLGSTS, FEDEXMPT, ADFDWHDG, ESTFEDWH, STATECD, LOCALTAX, W2BF942E, W2BFDCSD, W2BFDCMP, W2BFLREP, W2BFPPLN, W2BFSTEM, MCRQGEMP, EICFLGST, NYTXDiff, QualifiedHire, MarriedWithholdAsSingle, DEX_ROW_ID FROM .UPR00300 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ( EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00300N_1] TO [DYNGRP]
GO
