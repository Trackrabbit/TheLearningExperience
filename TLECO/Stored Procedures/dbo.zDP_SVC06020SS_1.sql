SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06020SS_1] (@WOTYPE char(11)) AS  set nocount on SELECT TOP 1  WOTYPE, DSCRIPTN, WOSTAT, ROUTEID, WIPINV, WIPLABOR, SVC_Do_Expense, SVC_Expense_Index, DEX_ROW_ID FROM .SVC06020 WHERE WOTYPE = @WOTYPE ORDER BY WOTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06020SS_1] TO [DYNGRP]
GO
