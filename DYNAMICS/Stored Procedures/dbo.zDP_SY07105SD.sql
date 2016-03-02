SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07105SD] (@USERID char(15), @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY07105 WHERE USERID = @USERID AND CmdDictID = @CmdDictID AND CmdFormID = @CmdFormID AND CmdID = @CmdID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY07105 WHERE USERID = @USERID AND CmdDictID = @CmdDictID AND CmdFormID = @CmdFormID AND CmdID = @CmdID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07105SD] TO [DYNGRP]
GO
