SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601000SD] (@BSSI_Site_TypeID char(25), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4601000 WHERE BSSI_Site_TypeID = @BSSI_Site_TypeID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4601000 WHERE BSSI_Site_TypeID = @BSSI_Site_TypeID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601000SD] TO [DYNGRP]
GO
