SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG40003F_1] (@aaGLHdrID_RS int, @aaGLDistID_RS int, @aaGLAssignID_RS int, @aaTrxDimID_RS int, @aaGLHdrID_RE int, @aaGLDistID_RE int, @aaGLAssignID_RE int, @aaTrxDimID_RE int) AS  set nocount on IF @aaGLHdrID_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, aaGLDistID, aaGLAssignID, aaTrxDimID, aaTrxCodeID, DEX_ROW_TS, DEX_ROW_ID FROM .AAG40003 ORDER BY aaGLHdrID ASC, aaGLDistID ASC, aaGLAssignID ASC, aaTrxDimID ASC END ELSE IF @aaGLHdrID_RS = @aaGLHdrID_RE BEGIN SELECT TOP 25  aaGLHdrID, aaGLDistID, aaGLAssignID, aaTrxDimID, aaTrxCodeID, DEX_ROW_TS, DEX_ROW_ID FROM .AAG40003 WHERE aaGLHdrID = @aaGLHdrID_RS AND aaGLDistID BETWEEN @aaGLDistID_RS AND @aaGLDistID_RE AND aaGLAssignID BETWEEN @aaGLAssignID_RS AND @aaGLAssignID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaGLHdrID ASC, aaGLDistID ASC, aaGLAssignID ASC, aaTrxDimID ASC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, aaGLDistID, aaGLAssignID, aaTrxDimID, aaTrxCodeID, DEX_ROW_TS, DEX_ROW_ID FROM .AAG40003 WHERE aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE AND aaGLDistID BETWEEN @aaGLDistID_RS AND @aaGLDistID_RE AND aaGLAssignID BETWEEN @aaGLAssignID_RS AND @aaGLAssignID_RE AND aaTrxDimID BETWEEN @aaTrxDimID_RS AND @aaTrxDimID_RE ORDER BY aaGLHdrID ASC, aaGLDistID ASC, aaGLAssignID ASC, aaTrxDimID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG40003F_1] TO [DYNGRP]
GO
