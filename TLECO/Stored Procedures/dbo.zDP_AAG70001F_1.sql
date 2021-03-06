SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG70001F_1] (@aaGLHdrID_RS int, @aaGLDistID_RS int, @aaGLHdrID_RE int, @aaGLDistID_RE int) AS  set nocount on IF @aaGLHdrID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaGLHdrID, aaGLDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .AAG70001 ORDER BY aaGLHdrID ASC, aaGLDistID ASC END ELSE IF @aaGLHdrID_RS = @aaGLHdrID_RE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaGLHdrID, aaGLDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .AAG70001 WHERE aaGLHdrID = @aaGLHdrID_RS AND aaGLDistID BETWEEN @aaGLDistID_RS AND @aaGLDistID_RE ORDER BY aaGLHdrID ASC, aaGLDistID ASC END ELSE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaGLHdrID, aaGLDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .AAG70001 WHERE aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE AND aaGLDistID BETWEEN @aaGLDistID_RS AND @aaGLDistID_RE ORDER BY aaGLHdrID ASC, aaGLDistID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG70001F_1] TO [DYNGRP]
GO
