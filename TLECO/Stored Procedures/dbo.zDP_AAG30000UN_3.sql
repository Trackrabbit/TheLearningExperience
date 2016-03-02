SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG30000UN_3] (@BS int, @YEAR1 smallint, @JRNENTRY int, @YEAR1_RS smallint, @JRNENTRY_RS int, @YEAR1_RE smallint, @JRNENTRY_RE int) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE ( YEAR1 = @YEAR1 AND JRNENTRY > @JRNENTRY OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, JRNENTRY ASC, DEX_ROW_ID ASC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE YEAR1 = @YEAR1_RS AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ( YEAR1 = @YEAR1 AND JRNENTRY > @JRNENTRY OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, JRNENTRY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ( YEAR1 = @YEAR1 AND JRNENTRY > @JRNENTRY OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, JRNENTRY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG30000UN_3] TO [DYNGRP]
GO
