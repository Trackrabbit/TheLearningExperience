SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00200SD] (@EMPLOYID char(15), @Time_on_Behalf_Code char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR00200 WHERE EMPLOYID = @EMPLOYID AND Time_on_Behalf_Code = @Time_on_Behalf_Code AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR00200 WHERE EMPLOYID = @EMPLOYID AND Time_on_Behalf_Code = @Time_on_Behalf_Code SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00200SD] TO [DYNGRP]
GO
