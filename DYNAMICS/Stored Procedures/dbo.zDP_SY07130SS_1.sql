SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07130SS_1] (@USERID char(15), @CmdSequence smallint) AS  set nocount on SELECT TOP 1  USERID, CmdSequence, Visible, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdDictID, CmdFormID, CmdID, DEX_ROW_ID FROM .SY07130 WHERE USERID = @USERID AND CmdSequence = @CmdSequence ORDER BY USERID ASC, CmdSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07130SS_1] TO [DYNGRP]
GO
