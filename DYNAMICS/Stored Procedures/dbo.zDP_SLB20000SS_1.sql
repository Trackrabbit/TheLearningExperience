SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB20000SS_1] (@SmartList_ID char(15), @SmartList_Change_Type smallint) AS set nocount on SELECT TOP 1  SmartList_ID, SmartList_Change_Type, DEX_ROW_ID FROM .SLB20000 WHERE SmartList_ID = @SmartList_ID AND SmartList_Change_Type = @SmartList_Change_Type ORDER BY SmartList_ID ASC, SmartList_Change_Type ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB20000SS_1] TO [DYNGRP]
GO
