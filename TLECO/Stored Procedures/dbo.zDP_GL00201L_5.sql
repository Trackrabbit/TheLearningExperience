SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00201L_5] (@BUDGETID_RS char(15), @ACTINDX_RS int, @PERIODID_RS smallint, @BUDGETID_RE char(15), @ACTINDX_RE int, @PERIODID_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @BUDGETID_RS IS NULL BEGIN SELECT TOP 25  BUDGETID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODDT, PERIODID, BUDGETAMT, ACCATNUM, ACTINDX, YEAR1, DEX_ROW_TS, DEX_ROW_ID FROM .GL00201 ORDER BY BUDGETID DESC, ACTINDX DESC, PERIODID DESC, DEX_ROW_ID DESC END ELSE IF @BUDGETID_RS = @BUDGETID_RE BEGIN SELECT TOP 25  BUDGETID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODDT, PERIODID, BUDGETAMT, ACCATNUM, ACTINDX, YEAR1, DEX_ROW_TS, DEX_ROW_ID FROM .GL00201 WHERE BUDGETID = @BUDGETID_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY BUDGETID DESC, ACTINDX DESC, PERIODID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BUDGETID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODDT, PERIODID, BUDGETAMT, ACCATNUM, ACTINDX, YEAR1, DEX_ROW_TS, DEX_ROW_ID FROM .GL00201 WHERE BUDGETID BETWEEN @BUDGETID_RS AND @BUDGETID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY BUDGETID DESC, ACTINDX DESC, PERIODID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00201L_5] TO [DYNGRP]
GO
