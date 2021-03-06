SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00501SD] (@EMPLOYID char(15), @DEDUCTON char(7), @BSDONCDE char(7), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR00501 WHERE EMPLOYID = @EMPLOYID AND DEDUCTON = @DEDUCTON AND BSDONCDE = @BSDONCDE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR00501 WHERE EMPLOYID = @EMPLOYID AND DEDUCTON = @DEDUCTON AND BSDONCDE = @BSDONCDE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00501SD] TO [DYNGRP]
GO
