SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10420SD] (@Navigation_ID char(15), @Ribbon_Command_Group smallint, @Command_Number smallint, @Task_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .NLB10420 WHERE Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number = @Command_Number AND Task_Number = @Task_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NLB10420 WHERE Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number = @Command_Number AND Task_Number = @Task_Number SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10420SD] TO [DYNGRP]
GO
