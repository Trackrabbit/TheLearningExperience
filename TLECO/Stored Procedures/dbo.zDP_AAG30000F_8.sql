SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG30000F_8] (@GLPOSTDT_RS datetime, @GLPOSTDT_RE datetime) AS  set nocount on IF @GLPOSTDT_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 ORDER BY GLPOSTDT ASC, DEX_ROW_ID ASC END ELSE IF @GLPOSTDT_RS = @GLPOSTDT_RE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE GLPOSTDT = @GLPOSTDT_RS ORDER BY GLPOSTDT ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE GLPOSTDT BETWEEN @GLPOSTDT_RS AND @GLPOSTDT_RE ORDER BY GLPOSTDT ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG30000F_8] TO [DYNGRP]
GO