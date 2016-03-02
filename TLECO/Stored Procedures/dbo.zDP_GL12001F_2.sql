SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL12001F_2] (@BACHNUMB_RS char(15), @BUDGETID_RS char(15), @BACHNUMB_RE char(15), @BUDGETID_RE char(15)) AS  set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, BUDGETID, YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, GLLINVAL, DEX_ROW_TS, DEX_ROW_ID FROM .GL12001 ORDER BY BACHNUMB ASC, BUDGETID ASC, DEX_ROW_ID ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, BUDGETID, YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, GLLINVAL, DEX_ROW_TS, DEX_ROW_ID FROM .GL12001 WHERE BACHNUMB = @BACHNUMB_RS AND BUDGETID BETWEEN @BUDGETID_RS AND @BUDGETID_RE ORDER BY BACHNUMB ASC, BUDGETID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, BUDGETID, YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, GLLINVAL, DEX_ROW_TS, DEX_ROW_ID FROM .GL12001 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BUDGETID BETWEEN @BUDGETID_RS AND @BUDGETID_RE ORDER BY BACHNUMB ASC, BUDGETID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL12001F_2] TO [DYNGRP]
GO
