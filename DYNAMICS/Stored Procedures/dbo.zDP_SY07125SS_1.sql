SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07125SS_1] (@USERID char(15), @CmdBarDictID smallint, @CmdBarFormID smallint, @CmdBarWindowID smallint, @CmdSequence smallint) AS  set nocount on SELECT TOP 1  USERID, CmdBarDictID, CmdBarFormID, CmdBarWindowID, CmdSequence, CmdDictID, CmdFormID, CmdID, DEX_ROW_ID FROM .SY07125 WHERE USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID = @CmdBarFormID AND CmdBarWindowID = @CmdBarWindowID AND CmdSequence = @CmdSequence ORDER BY USERID ASC, CmdBarDictID ASC, CmdBarFormID ASC, CmdBarWindowID ASC, CmdSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07125SS_1] TO [DYNGRP]
GO
