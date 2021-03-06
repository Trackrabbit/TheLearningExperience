SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00200N_1] (@BS int, @BUDGETID char(15), @BUDGETID_RS char(15), @BUDGETID_RE char(15)) AS  set nocount on IF @BUDGETID_RS IS NULL BEGIN SELECT TOP 25  BUDGETID, BUDCOMNT, BUDPWRD, YEAR1, Based_On, From_Date, TODATE, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL00200 WHERE ( BUDGETID > @BUDGETID ) ORDER BY BUDGETID ASC END ELSE IF @BUDGETID_RS = @BUDGETID_RE BEGIN SELECT TOP 25  BUDGETID, BUDCOMNT, BUDPWRD, YEAR1, Based_On, From_Date, TODATE, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL00200 WHERE BUDGETID = @BUDGETID_RS AND ( BUDGETID > @BUDGETID ) ORDER BY BUDGETID ASC END ELSE BEGIN SELECT TOP 25  BUDGETID, BUDCOMNT, BUDPWRD, YEAR1, Based_On, From_Date, TODATE, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL00200 WHERE BUDGETID BETWEEN @BUDGETID_RS AND @BUDGETID_RE AND ( BUDGETID > @BUDGETID ) ORDER BY BUDGETID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00200N_1] TO [DYNGRP]
GO
