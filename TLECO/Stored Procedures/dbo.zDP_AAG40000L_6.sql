SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG40000L_6] (@JRNENTRY_RS int, @JRNENTRY_RE int) AS  set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 ORDER BY JRNENTRY DESC, DEX_ROW_ID DESC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 WHERE JRNENTRY = @JRNENTRY_RS ORDER BY JRNENTRY DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY JRNENTRY DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG40000L_6] TO [DYNGRP]
GO
