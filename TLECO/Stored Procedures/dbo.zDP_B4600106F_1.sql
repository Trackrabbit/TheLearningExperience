SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600106F_1] (@BSSI_Lease_Origin_RS smallint, @BSSI_Reminder_LeaseType_RS smallint, @BSSI_Lease_Origin_RE smallint, @BSSI_Reminder_LeaseType_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @BSSI_Lease_Origin_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Origin, BSSI_Reminder_LeaseType, BSSI_EmailSubject, BSSI_SendReminder, DEX_ROW_ID, BSSI_EmailBody FROM .B4600106 ORDER BY BSSI_Lease_Origin ASC, BSSI_Reminder_LeaseType ASC END ELSE IF @BSSI_Lease_Origin_RS = @BSSI_Lease_Origin_RE BEGIN SELECT TOP 25  BSSI_Lease_Origin, BSSI_Reminder_LeaseType, BSSI_EmailSubject, BSSI_SendReminder, DEX_ROW_ID, BSSI_EmailBody FROM .B4600106 WHERE BSSI_Lease_Origin = @BSSI_Lease_Origin_RS AND BSSI_Reminder_LeaseType BETWEEN @BSSI_Reminder_LeaseType_RS AND @BSSI_Reminder_LeaseType_RE ORDER BY BSSI_Lease_Origin ASC, BSSI_Reminder_LeaseType ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Origin, BSSI_Reminder_LeaseType, BSSI_EmailSubject, BSSI_SendReminder, DEX_ROW_ID, BSSI_EmailBody FROM .B4600106 WHERE BSSI_Lease_Origin BETWEEN @BSSI_Lease_Origin_RS AND @BSSI_Lease_Origin_RE AND BSSI_Reminder_LeaseType BETWEEN @BSSI_Reminder_LeaseType_RS AND @BSSI_Reminder_LeaseType_RE ORDER BY BSSI_Lease_Origin ASC, BSSI_Reminder_LeaseType ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600106F_1] TO [DYNGRP]
GO
