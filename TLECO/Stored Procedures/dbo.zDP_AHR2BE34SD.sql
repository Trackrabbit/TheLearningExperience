SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2BE34SD] (@EMPID_I char(15), @I1_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AHR2BE34 WHERE EMPID_I = @EMPID_I AND I1_I = @I1_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AHR2BE34 WHERE EMPID_I = @EMPID_I AND I1_I = @I1_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2BE34SD] TO [DYNGRP]
GO
