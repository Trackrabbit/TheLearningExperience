SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40600SS_1] (@CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdSequence smallint) AS  set nocount on SELECT TOP 1  CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID, WinTechName, Optional, HelpChmFile, HelpTopic, DEX_ROW_ID FROM .SY40600 WHERE CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID = @CmdParentCmdID AND CmdSequence = @CmdSequence ORDER BY CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC, CmdSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40600SS_1] TO [DYNGRP]
GO
