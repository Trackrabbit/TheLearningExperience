SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10000F_1] (@aaGLWorkHdrID_RS int, @aaGLWorkHdrID_RE int) AS  set nocount on IF @aaGLWorkHdrID_RS IS NULL BEGIN SELECT TOP 25  aaGLWorkHdrID, JRNENTRY, RCTRXSEQ, GLPOSTDT, aaTRXType, aaHdrErrors, Ledger_ID, DEX_ROW_ID FROM .AAG10000 ORDER BY aaGLWorkHdrID ASC END ELSE IF @aaGLWorkHdrID_RS = @aaGLWorkHdrID_RE BEGIN SELECT TOP 25  aaGLWorkHdrID, JRNENTRY, RCTRXSEQ, GLPOSTDT, aaTRXType, aaHdrErrors, Ledger_ID, DEX_ROW_ID FROM .AAG10000 WHERE aaGLWorkHdrID = @aaGLWorkHdrID_RS ORDER BY aaGLWorkHdrID ASC END ELSE BEGIN SELECT TOP 25  aaGLWorkHdrID, JRNENTRY, RCTRXSEQ, GLPOSTDT, aaTRXType, aaHdrErrors, Ledger_ID, DEX_ROW_ID FROM .AAG10000 WHERE aaGLWorkHdrID BETWEEN @aaGLWorkHdrID_RS AND @aaGLWorkHdrID_RE ORDER BY aaGLWorkHdrID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10000F_1] TO [DYNGRP]
GO