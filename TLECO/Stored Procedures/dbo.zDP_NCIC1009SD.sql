SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC1009SD] (@NC_Trigger_Account_Index int, @SOURCDOC char(11), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .NCIC1009 WHERE NC_Trigger_Account_Index = @NC_Trigger_Account_Index AND SOURCDOC = @SOURCDOC AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NCIC1009 WHERE NC_Trigger_Account_Index = @NC_Trigger_Account_Index AND SOURCDOC = @SOURCDOC SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1009SD] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1009SD] TO [public]
GO
