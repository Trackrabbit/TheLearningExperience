SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB20100SD] (@Excel_Report_ID char(15), @LNITMSEQ int, @Drill_Down_Parameter_Num smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .ERB20100 WHERE Excel_Report_ID = @Excel_Report_ID AND LNITMSEQ = @LNITMSEQ AND Drill_Down_Parameter_Num = @Drill_Down_Parameter_Num AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ERB20100 WHERE Excel_Report_ID = @Excel_Report_ID AND LNITMSEQ = @LNITMSEQ AND Drill_Down_Parameter_Num = @Drill_Down_Parameter_Num SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB20100SD] TO [DYNGRP]
GO
