SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO40002F_2] (@CMPANYID_RS smallint, @BUDGETID_RS char(15), @CMPANYID_RE smallint, @BUDGETID_RE char(15)) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, BUDGETID, YEAR1, DEX_ROW_ID FROM .CPO40002 ORDER BY CMPANYID ASC, BUDGETID ASC, DEX_ROW_ID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, BUDGETID, YEAR1, DEX_ROW_ID FROM .CPO40002 WHERE CMPANYID = @CMPANYID_RS AND BUDGETID BETWEEN @BUDGETID_RS AND @BUDGETID_RE ORDER BY CMPANYID ASC, BUDGETID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, BUDGETID, YEAR1, DEX_ROW_ID FROM .CPO40002 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND BUDGETID BETWEEN @BUDGETID_RS AND @BUDGETID_RE ORDER BY CMPANYID ASC, BUDGETID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO40002F_2] TO [DYNGRP]
GO
