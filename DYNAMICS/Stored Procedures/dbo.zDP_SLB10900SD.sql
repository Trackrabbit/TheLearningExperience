SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10900SD] (@SmartList_ID char(15), @GoTo_Number smallint, @Parameter_Name char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .SLB10900 WHERE SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Parameter_Name = @Parameter_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SLB10900 WHERE SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Parameter_Name = @Parameter_Name SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10900SD] TO [DYNGRP]
GO
