SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GOTO100SS_1] (@SmartList_ID char(15), @GoTo_Number smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SmartList_ID, GoTo_Number, GoTo_Description, GoTo_Type, DEX_ROW_ID FROM .GOTO100 WHERE SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number ORDER BY SmartList_ID ASC, GoTo_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GOTO100SS_1] TO [DYNGRP]
GO
