SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG40000L_5] (@YEAR1_RS smallint, @GLPOSTDT_RS datetime, @YEAR1_RE smallint, @GLPOSTDT_RE datetime) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 ORDER BY YEAR1 DESC, GLPOSTDT DESC, DEX_ROW_ID DESC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 WHERE YEAR1 = @YEAR1_RS AND GLPOSTDT BETWEEN @GLPOSTDT_RS AND @GLPOSTDT_RE ORDER BY YEAR1 DESC, GLPOSTDT DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND GLPOSTDT BETWEEN @GLPOSTDT_RS AND @GLPOSTDT_RE ORDER BY YEAR1 DESC, GLPOSTDT DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG40000L_5] TO [DYNGRP]
GO
