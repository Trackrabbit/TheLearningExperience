SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM10101SD] (@depositnumber char(21), @CHEKBKID char(15), @CURNCYID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .CM10101 WHERE depositnumber = @depositnumber AND CHEKBKID = @CHEKBKID AND CURNCYID = @CURNCYID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CM10101 WHERE depositnumber = @depositnumber AND CHEKBKID = @CHEKBKID AND CURNCYID = @CURNCYID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM10101SD] TO [DYNGRP]
GO