SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK020230SD] (@Query_Index smallint, @SKILLNUMBER_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SK020230 WHERE Query_Index = @Query_Index AND SKILLNUMBER_I = @SKILLNUMBER_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SK020230 WHERE Query_Index = @Query_Index AND SKILLNUMBER_I = @SKILLNUMBER_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK020230SD] TO [DYNGRP]
GO
