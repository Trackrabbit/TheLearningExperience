SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273517SD] (@MSO_Doc_Number char(21), @MSO_Doc_Type smallint, @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273517 WHERE MSO_Doc_Number = @MSO_Doc_Number AND MSO_Doc_Type = @MSO_Doc_Type AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273517 WHERE MSO_Doc_Number = @MSO_Doc_Number AND MSO_Doc_Type = @MSO_Doc_Type AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273517SD] TO [DYNGRP]
GO
