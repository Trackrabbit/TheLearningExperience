SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07125SI] (@USERID char(15), @CmdBarDictID smallint, @CmdBarFormID smallint, @CmdBarWindowID smallint, @CmdSequence smallint, @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07125 (USERID, CmdBarDictID, CmdBarFormID, CmdBarWindowID, CmdSequence, CmdDictID, CmdFormID, CmdID) VALUES ( @USERID, @CmdBarDictID, @CmdBarFormID, @CmdBarWindowID, @CmdSequence, @CmdDictID, @CmdFormID, @CmdID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07125SI] TO [DYNGRP]
GO
