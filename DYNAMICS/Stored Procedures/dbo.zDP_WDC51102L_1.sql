SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51102L_1] (@CmdParentDictID_RS smallint, @CmdParentFormID_RS smallint, @CmdParentCmdID_RS smallint, @CmdParentDictID_RE smallint, @CmdParentFormID_RE smallint, @CmdParentCmdID_RE smallint) AS  set nocount on IF @CmdParentDictID_RS IS NULL BEGIN SELECT TOP 25  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 ORDER BY CmdParentDictID DESC, CmdParentFormID DESC, CmdParentCmdID DESC END ELSE IF @CmdParentDictID_RS = @CmdParentDictID_RE BEGIN SELECT TOP 25  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 WHERE CmdParentDictID = @CmdParentDictID_RS AND CmdParentFormID BETWEEN @CmdParentFormID_RS AND @CmdParentFormID_RE AND CmdParentCmdID BETWEEN @CmdParentCmdID_RS AND @CmdParentCmdID_RE ORDER BY CmdParentDictID DESC, CmdParentFormID DESC, CmdParentCmdID DESC END ELSE BEGIN SELECT TOP 25  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 WHERE CmdParentDictID BETWEEN @CmdParentDictID_RS AND @CmdParentDictID_RE AND CmdParentFormID BETWEEN @CmdParentFormID_RS AND @CmdParentFormID_RE AND CmdParentCmdID BETWEEN @CmdParentCmdID_RS AND @CmdParentCmdID_RE ORDER BY CmdParentDictID DESC, CmdParentFormID DESC, CmdParentCmdID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51102L_1] TO [DYNGRP]
GO
