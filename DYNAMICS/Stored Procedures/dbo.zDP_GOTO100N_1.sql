SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GOTO100N_1] (@BS int, @SmartList_ID char(15), @GoTo_Number smallint, @SmartList_ID_RS char(15), @GoTo_Number_RS smallint, @SmartList_ID_RE char(15), @GoTo_Number_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, GoTo_Description, GoTo_Type, DEX_ROW_ID FROM .GOTO100 WHERE ( SmartList_ID = @SmartList_ID AND GoTo_Number > @GoTo_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, GoTo_Number ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, GoTo_Description, GoTo_Type, DEX_ROW_ID FROM .GOTO100 WHERE SmartList_ID = @SmartList_ID_RS AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND ( SmartList_ID = @SmartList_ID AND GoTo_Number > @GoTo_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, GoTo_Number ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, GoTo_Description, GoTo_Type, DEX_ROW_ID FROM .GOTO100 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND ( SmartList_ID = @SmartList_ID AND GoTo_Number > @GoTo_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, GoTo_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GOTO100N_1] TO [DYNGRP]
GO
