SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07125SD] (@USERID char(15), @CmdBarDictID smallint, @CmdBarFormID smallint, @CmdBarWindowID smallint, @CmdSequence smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY07125 WHERE USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID = @CmdBarFormID AND CmdBarWindowID = @CmdBarWindowID AND CmdSequence = @CmdSequence AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY07125 WHERE USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID = @CmdBarFormID AND CmdBarWindowID = @CmdBarWindowID AND CmdSequence = @CmdSequence SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07125SD] TO [DYNGRP]
GO
