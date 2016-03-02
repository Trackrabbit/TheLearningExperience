SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY06000SD] (@CustomerVendor_ID char(15), @ADRSCODE char(15), @SERIES smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY06000 WHERE CustomerVendor_ID = @CustomerVendor_ID AND ADRSCODE = @ADRSCODE AND SERIES = @SERIES AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY06000 WHERE CustomerVendor_ID = @CustomerVendor_ID AND ADRSCODE = @ADRSCODE AND SERIES = @SERIES SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY06000SD] TO [DYNGRP]
GO
