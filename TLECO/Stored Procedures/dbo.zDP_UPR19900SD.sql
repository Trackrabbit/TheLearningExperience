SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR19900SD] (@ACCTTYPE smallint, @ACTINDX int, @STATECD char(3), @PAYRCORD char(7), @ISTIPPAY tinyint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR19900 WHERE ACCTTYPE = @ACCTTYPE AND ACTINDX = @ACTINDX AND STATECD = @STATECD AND PAYRCORD = @PAYRCORD AND ISTIPPAY = @ISTIPPAY AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR19900 WHERE ACCTTYPE = @ACCTTYPE AND ACTINDX = @ACTINDX AND STATECD = @STATECD AND PAYRCORD = @PAYRCORD AND ISTIPPAY = @ISTIPPAY SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR19900SD] TO [DYNGRP]
GO
