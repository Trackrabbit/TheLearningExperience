SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07105SS_1] (@USERID char(15), @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint) AS  set nocount on SELECT TOP 1  USERID, CmdDictID, CmdFormID, CmdID, CmdCaption, CmdTooltip, CmdNormalImageType, CmdNormalImageDictID, CmdNormalImageResID, CmdCheckedImageType, CmdCheckedImageDictID, CmdCheckedImageResID, CmdMenuDisplayOption, CmdButtonDisplayOption, DEX_ROW_ID FROM .SY07105 WHERE USERID = @USERID AND CmdDictID = @CmdDictID AND CmdFormID = @CmdFormID AND CmdID = @CmdID ORDER BY USERID ASC, CmdDictID ASC, CmdFormID ASC, CmdID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07105SS_1] TO [DYNGRP]
GO
