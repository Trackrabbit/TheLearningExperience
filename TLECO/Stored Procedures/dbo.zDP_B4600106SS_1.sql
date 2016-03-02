SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600106SS_1] (@BSSI_Lease_Origin smallint, @BSSI_Reminder_LeaseType smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Origin, BSSI_Reminder_LeaseType, BSSI_EmailSubject, BSSI_SendReminder, DEX_ROW_ID, BSSI_EmailBody FROM .B4600106 WHERE BSSI_Lease_Origin = @BSSI_Lease_Origin AND BSSI_Reminder_LeaseType = @BSSI_Reminder_LeaseType ORDER BY BSSI_Lease_Origin ASC, BSSI_Reminder_LeaseType ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600106SS_1] TO [DYNGRP]
GO
