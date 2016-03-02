SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699716SS_1] (@BSSI_Lease_Origin smallint, @BSSI_Reminder_LeaseType smallint, @BSSI_Lease_Number char(25), @LNITMSEQ int, @LNSEQNBR numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Origin, BSSI_Reminder_LeaseType, BSSI_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_ReminderSent_Date, USERID, DEX_ROW_ID FROM .B4699716 WHERE BSSI_Lease_Origin = @BSSI_Lease_Origin AND BSSI_Reminder_LeaseType = @BSSI_Reminder_LeaseType AND BSSI_Lease_Number = @BSSI_Lease_Number AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR ORDER BY BSSI_Lease_Origin ASC, BSSI_Reminder_LeaseType ASC, BSSI_Lease_Number ASC, LNITMSEQ ASC, LNSEQNBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699716SS_1] TO [DYNGRP]
GO
