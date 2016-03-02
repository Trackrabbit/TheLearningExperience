SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51102L_2] (@Node_Data_RS int, @Node_Data_RE int) AS  set nocount on IF @Node_Data_RS IS NULL BEGIN SELECT TOP 25  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 ORDER BY Node_Data DESC END ELSE IF @Node_Data_RS = @Node_Data_RE BEGIN SELECT TOP 25  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 WHERE Node_Data = @Node_Data_RS ORDER BY Node_Data DESC END ELSE BEGIN SELECT TOP 25  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 WHERE Node_Data BETWEEN @Node_Data_RS AND @Node_Data_RE ORDER BY Node_Data DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51102L_2] TO [DYNGRP]
GO
