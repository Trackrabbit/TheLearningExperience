SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11700SD] (@Excel_Report_ID char(15), @CMPANYID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .ERB11700 WHERE Excel_Report_ID = @Excel_Report_ID AND CMPANYID = @CMPANYID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ERB11700 WHERE Excel_Report_ID = @Excel_Report_ID AND CMPANYID = @CMPANYID SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11700SD] TO [DYNGRP]
GO
