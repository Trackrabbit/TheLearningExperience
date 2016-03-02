SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273520SD] (@MSO_Import_Setup_ID char(15), @MSO_Import_Seq_Num int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273520 WHERE MSO_Import_Setup_ID = @MSO_Import_Setup_ID AND MSO_Import_Seq_Num = @MSO_Import_Seq_Num AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273520 WHERE MSO_Import_Setup_ID = @MSO_Import_Setup_ID AND MSO_Import_Seq_Num = @MSO_Import_Seq_Num SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273520SD] TO [DYNGRP]
GO
