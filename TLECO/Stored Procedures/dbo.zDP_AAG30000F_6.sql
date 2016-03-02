SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG30000F_6] (@JRNENTRY_RS int, @JRNENTRY_RE int) AS  set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE JRNENTRY = @JRNENTRY_RS ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG30000F_6] TO [DYNGRP]
GO
