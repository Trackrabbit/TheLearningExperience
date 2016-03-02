SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07140SI] (@USERID char(15), @CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdSequence smallint, @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @Visible tinyint, @Mode smallint, @Selected tinyint, @COLNUMBR smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07140 (USERID, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID, Visible, Mode, Selected, COLNUMBR) VALUES ( @USERID, @CmdParentDictID, @CmdParentFormID, @CmdParentCmdID, @CmdSequence, @CmdDictID, @CmdFormID, @CmdID, @Visible, @Mode, @Selected, @COLNUMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07140SI] TO [DYNGRP]
GO
