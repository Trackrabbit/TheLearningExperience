SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51102SS_2] (@Node_Data int) AS  set nocount on SELECT TOP 1  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 WHERE Node_Data = @Node_Data ORDER BY Node_Data ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51102SS_2] TO [DYNGRP]
GO
