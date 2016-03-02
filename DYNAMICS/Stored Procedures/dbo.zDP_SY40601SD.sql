SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40601SD] (@CMPANYID smallint, @CmdDictID smallint, @CmdFormID smallint, @CmdID smallint, @TYPEID smallint, @AssignedUserID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY40601 WHERE CMPANYID = @CMPANYID AND CmdDictID = @CmdDictID AND CmdFormID = @CmdFormID AND CmdID = @CmdID AND TYPEID = @TYPEID AND AssignedUserID = @AssignedUserID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY40601 WHERE CMPANYID = @CMPANYID AND CmdDictID = @CmdDictID AND CmdFormID = @CmdFormID AND CmdID = @CmdID AND TYPEID = @TYPEID AND AssignedUserID = @AssignedUserID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40601SD] TO [DYNGRP]
GO
