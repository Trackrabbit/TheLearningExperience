SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51102N_1] (@BS int, @CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdParentDictID_RS smallint, @CmdParentFormID_RS smallint, @CmdParentCmdID_RS smallint, @CmdParentDictID_RE smallint, @CmdParentFormID_RE smallint, @CmdParentCmdID_RE smallint) AS  set nocount on IF @CmdParentDictID_RS IS NULL BEGIN SELECT TOP 25  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 WHERE ( CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID > @CmdParentCmdID OR CmdParentDictID = @CmdParentDictID AND CmdParentFormID > @CmdParentFormID OR CmdParentDictID > @CmdParentDictID ) ORDER BY CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC END ELSE IF @CmdParentDictID_RS = @CmdParentDictID_RE BEGIN SELECT TOP 25  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 WHERE CmdParentDictID = @CmdParentDictID_RS AND CmdParentFormID BETWEEN @CmdParentFormID_RS AND @CmdParentFormID_RE AND CmdParentCmdID BETWEEN @CmdParentCmdID_RS AND @CmdParentCmdID_RE AND ( CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID > @CmdParentCmdID OR CmdParentDictID = @CmdParentDictID AND CmdParentFormID > @CmdParentFormID OR CmdParentDictID > @CmdParentDictID ) ORDER BY CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC END ELSE BEGIN SELECT TOP 25  CmdParentDictID, CmdParentFormID, CmdParentCmdID, Node_Data, DEX_ROW_ID FROM .WDC51102 WHERE CmdParentDictID BETWEEN @CmdParentDictID_RS AND @CmdParentDictID_RE AND CmdParentFormID BETWEEN @CmdParentFormID_RS AND @CmdParentFormID_RE AND CmdParentCmdID BETWEEN @CmdParentCmdID_RS AND @CmdParentCmdID_RE AND ( CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID > @CmdParentCmdID OR CmdParentDictID = @CmdParentDictID AND CmdParentFormID > @CmdParentFormID OR CmdParentDictID > @CmdParentDictID ) ORDER BY CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51102N_1] TO [DYNGRP]
GO