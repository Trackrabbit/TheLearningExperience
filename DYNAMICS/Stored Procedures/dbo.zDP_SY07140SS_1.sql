SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07140SS_1] (@USERID char(15), @CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdSequence smallint) AS  set nocount on SELECT TOP 1  USERID, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID, Visible, Mode, Selected, COLNUMBR, DEX_ROW_ID FROM .SY07140 WHERE USERID = @USERID AND CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID = @CmdParentCmdID AND CmdSequence = @CmdSequence ORDER BY USERID ASC, CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC, CmdSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07140SS_1] TO [DYNGRP]
GO
