SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG70001F_2] (@USERID_RS char(15), @TRXBTCHSRC_RS char(51), @aaGLHdrID_RS int, @USERID_RE char(15), @TRXBTCHSRC_RE char(51), @aaGLHdrID_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaGLHdrID, aaGLDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .AAG70001 ORDER BY USERID ASC, TRXBTCHSRC ASC, aaGLHdrID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaGLHdrID, aaGLDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .AAG70001 WHERE USERID = @USERID_RS AND TRXBTCHSRC BETWEEN @TRXBTCHSRC_RS AND @TRXBTCHSRC_RE AND aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE ORDER BY USERID ASC, TRXBTCHSRC ASC, aaGLHdrID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaGLHdrID, aaGLDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .AAG70001 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND TRXBTCHSRC BETWEEN @TRXBTCHSRC_RS AND @TRXBTCHSRC_RE AND aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE ORDER BY USERID ASC, TRXBTCHSRC ASC, aaGLHdrID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG70001F_2] TO [DYNGRP]
GO
