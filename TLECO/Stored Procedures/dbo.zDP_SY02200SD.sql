SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY02200SD] (@SERIES smallint, @TRXSOURC char(25), @PTGRPTNM char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY02200 WHERE SERIES = @SERIES AND TRXSOURC = @TRXSOURC AND PTGRPTNM = @PTGRPTNM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY02200 WHERE SERIES = @SERIES AND TRXSOURC = @TRXSOURC AND PTGRPTNM = @PTGRPTNM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02200SD] TO [DYNGRP]
GO
