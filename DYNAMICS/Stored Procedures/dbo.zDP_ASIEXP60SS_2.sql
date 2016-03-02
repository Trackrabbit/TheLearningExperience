SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP60SS_2] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_GoTo_Value int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Goto_Sequence, ASI_Goto_Prompt, ASI_GoTo_Value, ASI_GoTo_Default, DEX_ROW_ID FROM .ASIEXP60 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_GoTo_Value = @ASI_GoTo_Value ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_GoTo_Value ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP60SS_2] TO [DYNGRP]
GO
