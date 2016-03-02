SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB11000SD] (@Navigation_ID char(15), @Table_Number smallint, @Additional_Table_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .NLB11000 WHERE Navigation_ID = @Navigation_ID AND Table_Number = @Table_Number AND Additional_Table_Number = @Additional_Table_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NLB11000 WHERE Navigation_ID = @Navigation_ID AND Table_Number = @Table_Number AND Additional_Table_Number = @Additional_Table_Number SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB11000SD] TO [DYNGRP]
GO
