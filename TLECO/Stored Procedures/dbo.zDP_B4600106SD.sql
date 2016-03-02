SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600106SD] (@BSSI_Lease_Origin smallint, @BSSI_Reminder_LeaseType smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4600106 WHERE BSSI_Lease_Origin = @BSSI_Lease_Origin AND BSSI_Reminder_LeaseType = @BSSI_Reminder_LeaseType AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4600106 WHERE BSSI_Lease_Origin = @BSSI_Lease_Origin AND BSSI_Reminder_LeaseType = @BSSI_Reminder_LeaseType SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600106SD] TO [DYNGRP]
GO
