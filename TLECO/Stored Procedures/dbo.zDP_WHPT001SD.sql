SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WHPT001SD] (@WH_PT_Option_ID char(31), @WH_Cube char(51), @WH_Type smallint, @SEQNUMBR int, @WH_Property char(51), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .WHPT001 WHERE WH_PT_Option_ID = @WH_PT_Option_ID AND WH_Cube = @WH_Cube AND WH_Type = @WH_Type AND SEQNUMBR = @SEQNUMBR AND WH_Property = @WH_Property AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WHPT001 WHERE WH_PT_Option_ID = @WH_PT_Option_ID AND WH_Cube = @WH_Cube AND WH_Type = @WH_Type AND SEQNUMBR = @SEQNUMBR AND WH_Property = @WH_Property SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WHPT001SD] TO [DYNGRP]
GO
