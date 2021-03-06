SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR00300SS_1] (@EMPLOYID char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  NOTEINDX, EMPLOYID, EXMFRFED, FDFLGSTS, FEDEXMPT, ADFDWHDG, ESTFEDWH, STATECD, LOCALTAX, W2BF942E, W2BFDCSD, W2BFDCMP, W2BFLREP, W2BFPPLN, W2BFSTEM, MCRQGEMP, EICFLGST, NYTXDiff, QualifiedHire, MarriedWithholdAsSingle, DEX_ROW_ID FROM .UPR00300 WHERE EMPLOYID = @EMPLOYID ORDER BY EMPLOYID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00300SS_1] TO [DYNGRP]
GO
