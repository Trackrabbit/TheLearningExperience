SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB12100SD] (@Navigation_ID char(15), @Fact_Box_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .NLB12100 WHERE Navigation_ID = @Navigation_ID AND Fact_Box_Number = @Fact_Box_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NLB12100 WHERE Navigation_ID = @Navigation_ID AND Fact_Box_Number = @Fact_Box_Number SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB12100SD] TO [DYNGRP]
GO
