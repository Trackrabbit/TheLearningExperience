SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000402SD] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B9000402 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B9000402 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND Schedule_Payment_Number = @Schedule_Payment_Number AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000402SD] TO [DYNGRP]
GO
