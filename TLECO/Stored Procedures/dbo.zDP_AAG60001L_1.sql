SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG60001L_1] (@aaGLWorkHdrID_RS int, @aaGLWorkDistID_RS int, @aaGLWorkHdrID_RE int, @aaGLWorkDistID_RE int) AS  set nocount on IF @aaGLWorkHdrID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaGLWorkHdrID, aaGLWorkDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .AAG60001 ORDER BY aaGLWorkHdrID DESC, aaGLWorkDistID DESC END ELSE IF @aaGLWorkHdrID_RS = @aaGLWorkHdrID_RE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaGLWorkHdrID, aaGLWorkDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .AAG60001 WHERE aaGLWorkHdrID = @aaGLWorkHdrID_RS AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE ORDER BY aaGLWorkHdrID DESC, aaGLWorkDistID DESC END ELSE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaGLWorkHdrID, aaGLWorkDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .AAG60001 WHERE aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE AND aaGLWorkDistID BETWEEN @aaGLWorkDistID_RS AND @aaGLWorkDistID_RE ORDER BY aaGLWorkHdrID DESC, aaGLWorkDistID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG60001L_1] TO [DYNGRP]
GO
