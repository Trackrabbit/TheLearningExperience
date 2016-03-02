SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00700F_2] (@STATECD_RS char(3), @EMPLOYID_RS char(15), @STATECD_RE char(3), @EMPLOYID_RE char(15)) AS  set nocount on IF @STATECD_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, STATECD, TXFLGSTS, EXMFBLND, EXFBLSPS, EXFORO65, EXMFRSLF, EXMFSPAL, EXMFRSPS, EXFSPO65, PRSNEXPT, DEPNDNTS, ADNLALOW, ESTDEDAL, EXMTAMNT, ADSTWHDG, ESTSTWHD, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR00700 ORDER BY STATECD ASC, EMPLOYID ASC END ELSE IF @STATECD_RS = @STATECD_RE BEGIN SELECT TOP 25  EMPLOYID, STATECD, TXFLGSTS, EXMFBLND, EXFBLSPS, EXFORO65, EXMFRSLF, EXMFSPAL, EXMFRSPS, EXFSPO65, PRSNEXPT, DEPNDNTS, ADNLALOW, ESTDEDAL, EXMTAMNT, ADSTWHDG, ESTSTWHD, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR00700 WHERE STATECD = @STATECD_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY STATECD ASC, EMPLOYID ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, STATECD, TXFLGSTS, EXMFBLND, EXFBLSPS, EXFORO65, EXMFRSLF, EXMFSPAL, EXMFRSPS, EXFSPO65, PRSNEXPT, DEPNDNTS, ADNLALOW, ESTDEDAL, EXMTAMNT, ADSTWHDG, ESTSTWHD, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR00700 WHERE STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY STATECD ASC, EMPLOYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00700F_2] TO [DYNGRP]
GO
