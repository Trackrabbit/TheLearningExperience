SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07140SD] (@USERID char(15), @CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @CmdSequence smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY07140 WHERE USERID = @USERID AND CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID = @CmdParentCmdID AND CmdSequence = @CmdSequence AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY07140 WHERE USERID = @USERID AND CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID = @CmdParentCmdID AND CmdSequence = @CmdSequence SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07140SD] TO [DYNGRP]
GO
