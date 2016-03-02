SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51102SD] (@CmdParentDictID smallint, @CmdParentFormID smallint, @CmdParentCmdID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .WDC51102 WHERE CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID = @CmdParentCmdID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WDC51102 WHERE CmdParentDictID = @CmdParentDictID AND CmdParentFormID = @CmdParentFormID AND CmdParentCmdID = @CmdParentCmdID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51102SD] TO [DYNGRP]
GO
