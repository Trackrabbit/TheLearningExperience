SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG30000N_1] (@BS int, @aaGLHdrID int, @aaGLHdrID_RS int, @aaGLHdrID_RE int) AS  set nocount on IF @aaGLHdrID_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE ( aaGLHdrID > @aaGLHdrID ) ORDER BY aaGLHdrID ASC END ELSE IF @aaGLHdrID_RS = @aaGLHdrID_RE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE aaGLHdrID = @aaGLHdrID_RS AND ( aaGLHdrID > @aaGLHdrID ) ORDER BY aaGLHdrID ASC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE AND ( aaGLHdrID > @aaGLHdrID ) ORDER BY aaGLHdrID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG30000N_1] TO [DYNGRP]
GO
