SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07240SS_1] (@ListDictID smallint, @ListID smallint, @ViewID int, @CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdSequence smallint) AS  set nocount on SELECT TOP 1  ListDictID, ListID, ViewID, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID, Priority, ButtonSize, CmdCaption, Visible, DEX_ROW_ID FROM .SY07240 WHERE ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID = @CmdParentCmdID AND CmdSequence = @CmdSequence ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC, CmdSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07240SS_1] TO [DYNGRP]
GO
