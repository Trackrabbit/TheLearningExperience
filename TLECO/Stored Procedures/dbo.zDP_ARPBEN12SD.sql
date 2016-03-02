SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ARPBEN12SD] (@EMPID_I char(15), @BENEFIT char(7), @COPAYCODE_I char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .ARPBEN12 WHERE EMPID_I = @EMPID_I AND BENEFIT = @BENEFIT AND COPAYCODE_I = @COPAYCODE_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ARPBEN12 WHERE EMPID_I = @EMPID_I AND BENEFIT = @BENEFIT AND COPAYCODE_I = @COPAYCODE_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ARPBEN12SD] TO [DYNGRP]
GO