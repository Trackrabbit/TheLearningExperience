SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB20000L_1] (@SmartList_ID_RS char(15), @SmartList_Change_Type_RS smallint, @SmartList_ID_RE char(15), @SmartList_Change_Type_RE smallint) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, SmartList_Change_Type, DEX_ROW_ID FROM .SLB20000 ORDER BY SmartList_ID DESC, SmartList_Change_Type DESC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Change_Type, DEX_ROW_ID FROM .SLB20000 WHERE SmartList_ID = @SmartList_ID_RS AND SmartList_Change_Type BETWEEN @SmartList_Change_Type_RS AND @SmartList_Change_Type_RE ORDER BY SmartList_ID DESC, SmartList_Change_Type DESC END ELSE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Change_Type, DEX_ROW_ID FROM .SLB20000 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND SmartList_Change_Type BETWEEN @SmartList_Change_Type_RS AND @SmartList_Change_Type_RE ORDER BY SmartList_ID DESC, SmartList_Change_Type DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB20000L_1] TO [DYNGRP]
GO
