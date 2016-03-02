SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB12100SD] (@Group_Report_ID char(15), @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .ERB12100 WHERE Group_Report_ID = @Group_Report_ID AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ERB12100 WHERE Group_Report_ID = @Group_Report_ID AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB12100SD] TO [DYNGRP]
GO