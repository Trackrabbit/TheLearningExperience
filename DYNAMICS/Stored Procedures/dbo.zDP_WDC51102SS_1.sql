SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51102SS_1] (@CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint) AS  set nocount on SELECT TOP 1  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 WHERE CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID = @CmdParentCmdID ORDER BY CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51102SS_1] TO [DYNGRP]
GO
