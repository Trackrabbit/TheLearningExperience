SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO40002SS_2] (@CMPANYID smallint, @BUDGETID char(15)) AS  set nocount on SELECT TOP 1  CMPANYID, BUDGETID, YEAR1, DEX_ROW_ID FROM .CPO40002 WHERE CMPANYID = @CMPANYID AND BUDGETID = @BUDGETID ORDER BY CMPANYID ASC, BUDGETID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO40002SS_2] TO [DYNGRP]
GO