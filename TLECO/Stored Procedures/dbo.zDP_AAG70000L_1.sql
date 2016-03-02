SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG70000L_1] (@aaGLHdrID_RS int, @aaGLHdrID_RE int) AS  set nocount on IF @aaGLHdrID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaGLHdrID, JRNENTRY, SERIES, GLPOSTDT, aaGLTRXSource, aaTRXSource, RCTRXSEQ, YEAR1, DEX_ROW_ID FROM .AAG70000 ORDER BY aaGLHdrID DESC END ELSE IF @aaGLHdrID_RS = @aaGLHdrID_RE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaGLHdrID, JRNENTRY, SERIES, GLPOSTDT, aaGLTRXSource, aaTRXSource, RCTRXSEQ, YEAR1, DEX_ROW_ID FROM .AAG70000 WHERE aaGLHdrID = @aaGLHdrID_RS ORDER BY aaGLHdrID DESC END ELSE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaGLHdrID, JRNENTRY, SERIES, GLPOSTDT, aaGLTRXSource, aaTRXSource, RCTRXSEQ, YEAR1, DEX_ROW_ID FROM .AAG70000 WHERE aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE ORDER BY aaGLHdrID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG70000L_1] TO [DYNGRP]
GO
