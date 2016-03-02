SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG30000N_4] (@BS int, @YEAR1 smallint, @aaTRXSource char(13), @DEX_ROW_ID int, @YEAR1_RS smallint, @aaTRXSource_RS char(13), @YEAR1_RE smallint, @aaTRXSource_RE char(13)) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE ( YEAR1 = @YEAR1 AND aaTRXSource = @aaTRXSource AND DEX_ROW_ID > @DEX_ROW_ID OR YEAR1 = @YEAR1 AND aaTRXSource > @aaTRXSource OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, aaTRXSource ASC, DEX_ROW_ID ASC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE YEAR1 = @YEAR1_RS AND aaTRXSource BETWEEN @aaTRXSource_RS AND @aaTRXSource_RE AND ( YEAR1 = @YEAR1 AND aaTRXSource = @aaTRXSource AND DEX_ROW_ID > @DEX_ROW_ID OR YEAR1 = @YEAR1 AND aaTRXSource > @aaTRXSource OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, aaTRXSource ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG30000 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND aaTRXSource BETWEEN @aaTRXSource_RS AND @aaTRXSource_RE AND ( YEAR1 = @YEAR1 AND aaTRXSource = @aaTRXSource AND DEX_ROW_ID > @DEX_ROW_ID OR YEAR1 = @YEAR1 AND aaTRXSource > @aaTRXSource OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, aaTRXSource ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG30000N_4] TO [DYNGRP]
GO