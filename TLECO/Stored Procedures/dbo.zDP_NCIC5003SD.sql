SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5003SD] (@Remote_Company_ID char(5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .NCIC5003 WHERE Remote_Company_ID = @Remote_Company_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NCIC5003 WHERE Remote_Company_ID = @Remote_Company_ID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5003SD] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5003SD] TO [public]
GO
