SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP60F_2] (@ASI_Favorite_Dict_ID_RS smallint, @ASI_Favorite_Type_RS smallint, @ASI_GoTo_Value_RS int, @ASI_Favorite_Dict_ID_RE smallint, @ASI_Favorite_Type_RE smallint, @ASI_GoTo_Value_RE int) AS /* 14.00.0084.000 */ set nocount on IF @ASI_Favorite_Dict_ID_RS IS NULL BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Goto_Sequence, ASI_Goto_Prompt, ASI_GoTo_Value, ASI_GoTo_Default, DEX_ROW_ID FROM .ASIEXP60 ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_GoTo_Value ASC END ELSE IF @ASI_Favorite_Dict_ID_RS = @ASI_Favorite_Dict_ID_RE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Goto_Sequence, ASI_Goto_Prompt, ASI_GoTo_Value, ASI_GoTo_Default, DEX_ROW_ID FROM .ASIEXP60 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID_RS AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE AND ASI_GoTo_Value BETWEEN @ASI_GoTo_Value_RS AND @ASI_GoTo_Value_RE ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_GoTo_Value ASC END ELSE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Goto_Sequence, ASI_Goto_Prompt, ASI_GoTo_Value, ASI_GoTo_Default, DEX_ROW_ID FROM .ASIEXP60 WHERE ASI_Favorite_Dict_ID BETWEEN @ASI_Favorite_Dict_ID_RS AND @ASI_Favorite_Dict_ID_RE AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE AND ASI_GoTo_Value BETWEEN @ASI_GoTo_Value_RS AND @ASI_GoTo_Value_RE ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_GoTo_Value ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP60F_2] TO [DYNGRP]
GO