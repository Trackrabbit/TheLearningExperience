SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07121SS_1] (@USERID char(15), @CmdBarDictID smallint, @CmdBarFormID smallint, @CmdBarWindowID smallint) AS  set nocount on SELECT TOP 1  USERID, CmdBarDictID, CmdBarFormID, CmdBarWindowID, Visible, ROWNMBR, RowSequence, DEX_ROW_ID FROM .SY07121 WHERE USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID = @CmdBarFormID AND CmdBarWindowID = @CmdBarWindowID ORDER BY USERID ASC, CmdBarDictID ASC, CmdBarFormID ASC, CmdBarWindowID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07121SS_1] TO [DYNGRP]
GO
