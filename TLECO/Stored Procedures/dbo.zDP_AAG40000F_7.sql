SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG40000F_7] (@aaTRXSource_RS char(13), @aaTRXSource_RE char(13)) AS  set nocount on IF @aaTRXSource_RS IS NULL BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 ORDER BY aaTRXSource ASC, DEX_ROW_ID ASC END ELSE IF @aaTRXSource_RS = @aaTRXSource_RE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 WHERE aaTRXSource = @aaTRXSource_RS ORDER BY aaTRXSource ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID, DEX_ROW_ID FROM .AAG40000 WHERE aaTRXSource BETWEEN @aaTRXSource_RS AND @aaTRXSource_RE ORDER BY aaTRXSource ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG40000F_7] TO [DYNGRP]
GO
