SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273527SD] (@CUSTNMBR char(15), @MSO_CardNumberPABP char(165), @MSO_CardExpDate char(5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273527 WHERE CUSTNMBR = @CUSTNMBR AND MSO_CardNumberPABP = @MSO_CardNumberPABP AND MSO_CardExpDate = @MSO_CardExpDate AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273527 WHERE CUSTNMBR = @CUSTNMBR AND MSO_CardNumberPABP = @MSO_CardNumberPABP AND MSO_CardExpDate = @MSO_CardExpDate SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273527SD] TO [DYNGRP]
GO
