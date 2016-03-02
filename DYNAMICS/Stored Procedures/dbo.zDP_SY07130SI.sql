SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07130SI] (@USERID char(15), @CmdSequence smallint, @Visible tinyint, @CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07130 (USERID, CmdSequence, Visible, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdDictID, CmdFormID, CmdID) VALUES ( @USERID, @CmdSequence, @Visible, @CmdParentDictID, @CmdParentFormID, @CmdParentCmdID, @CmdDictID, @CmdFormID, @CmdID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07130SI] TO [DYNGRP]
GO
