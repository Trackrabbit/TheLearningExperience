SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00700SS_2] (@STATECD char(3), @EMPLOYID char(15)) AS  set nocount on SELECT TOP 1  EMPLOYID, STATECD, TXFLGSTS, EXMFBLND, EXFBLSPS, EXFORO65, EXMFRSLF, EXMFSPAL, EXMFRSPS, EXFSPO65, PRSNEXPT, DEPNDNTS, ADNLALOW, ESTDEDAL, EXMTAMNT, ADSTWHDG, ESTSTWHD, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR00700 WHERE STATECD = @STATECD AND EMPLOYID = @EMPLOYID ORDER BY STATECD ASC, EMPLOYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00700SS_2] TO [DYNGRP]
GO
