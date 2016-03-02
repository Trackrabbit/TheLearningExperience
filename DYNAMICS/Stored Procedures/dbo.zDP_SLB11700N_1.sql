SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11700N_1] (@BS int, @SmartList_ID char(15), @SmartList_ID_RS char(15), @SmartList_ID_RE char(15)) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, PRODID, Series_Number, DEX_ROW_ID FROM .SLB11700 WHERE ( SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, PRODID, Series_Number, DEX_ROW_ID FROM .SLB11700 WHERE SmartList_ID = @SmartList_ID_RS AND ( SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, PRODID, Series_Number, DEX_ROW_ID FROM .SLB11700 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND ( SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11700N_1] TO [DYNGRP]
GO
