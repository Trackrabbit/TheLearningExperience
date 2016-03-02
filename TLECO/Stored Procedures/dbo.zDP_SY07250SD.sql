SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY07250SD] (@USERID char(15), @ListDictID smallint, @ListID smallint, @ViewID int, @DATE1 datetime, @TIME1 datetime, @ActionStatusID int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY07250 WHERE USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND DATE1 = @DATE1 AND TIME1 = @TIME1 AND ActionStatusID = @ActionStatusID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY07250 WHERE USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND DATE1 = @DATE1 AND TIME1 = @TIME1 AND ActionStatusID = @ActionStatusID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07250SD] TO [DYNGRP]
GO
