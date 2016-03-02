SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG40000L_8] (@GLPOSTDT_RS datetime, @GLPOSTDT_RE datetime) AS  set nocount on IF @GLPOSTDT_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 ORDER BY GLPOSTDT DESC, DEX_ROW_ID DESC END ELSE IF @GLPOSTDT_RS = @GLPOSTDT_RE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 WHERE GLPOSTDT = @GLPOSTDT_RS ORDER BY GLPOSTDT DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 WHERE GLPOSTDT BETWEEN @GLPOSTDT_RS AND @GLPOSTDT_RE ORDER BY GLPOSTDT DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG40000L_8] TO [DYNGRP]
GO
