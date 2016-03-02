SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB13000SD] (@ERB_Type smallint, @Excel_Report_ID char(15), @Excel_Report_Role char(51), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .ERB13000 WHERE ERB_Type = @ERB_Type AND Excel_Report_ID = @Excel_Report_ID AND Excel_Report_Role = @Excel_Report_Role AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ERB13000 WHERE ERB_Type = @ERB_Type AND Excel_Report_ID = @Excel_Report_ID AND Excel_Report_Role = @Excel_Report_Role SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB13000SD] TO [DYNGRP]
GO
