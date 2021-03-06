SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00700L_1] (@EMPLOYID_RS char(15), @STATECD_RS char(3), @EMPLOYID_RE char(15), @STATECD_RE char(3)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, STATECD, TXFLGSTS, EXMFBLND, EXFBLSPS, EXFORO65, EXMFRSLF, EXMFSPAL, EXMFRSPS, EXFSPO65, PRSNEXPT, DEPNDNTS, ADNLALOW, ESTDEDAL, EXMTAMNT, ADSTWHDG, ESTSTWHD, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR00700 ORDER BY EMPLOYID DESC, STATECD DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, STATECD, TXFLGSTS, EXMFBLND, EXFBLSPS, EXFORO65, EXMFRSLF, EXMFSPAL, EXMFRSPS, EXFSPO65, PRSNEXPT, DEPNDNTS, ADNLALOW, ESTDEDAL, EXMTAMNT, ADSTWHDG, ESTSTWHD, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR00700 WHERE EMPLOYID = @EMPLOYID_RS AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE ORDER BY EMPLOYID DESC, STATECD DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, STATECD, TXFLGSTS, EXMFBLND, EXFBLSPS, EXFORO65, EXMFRSLF, EXMFSPAL, EXMFRSPS, EXFSPO65, PRSNEXPT, DEPNDNTS, ADNLALOW, ESTDEDAL, EXMTAMNT, ADSTWHDG, ESTSTWHD, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR00700 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE ORDER BY EMPLOYID DESC, STATECD DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00700L_1] TO [DYNGRP]
GO
