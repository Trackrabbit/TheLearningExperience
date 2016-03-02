SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00200SS_2] (@BUDCOMNT char(31), @BUDGETID char(15)) AS  set nocount on SELECT TOP 1  BUDGETID, BUDCOMNT, BUDPWRD, YEAR1, Based_On, From_Date, TODATE, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL00200 WHERE BUDCOMNT = @BUDCOMNT AND BUDGETID = @BUDGETID ORDER BY BUDCOMNT ASC, BUDGETID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00200SS_2] TO [DYNGRP]
GO