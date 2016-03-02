SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07110SI] (@USERID char(15), @CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdSequence smallint, @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07110 (USERID, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID) VALUES ( @USERID, @CmdParentDictID, @CmdParentFormID, @CmdParentCmdID, @CmdSequence, @CmdDictID, @CmdFormID, @CmdID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07110SI] TO [DYNGRP]
GO
