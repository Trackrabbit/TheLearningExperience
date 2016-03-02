SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699716F_2] (@BSSI_Lease_Origin_RS smallint, @BSSI_Reminder_LeaseType_RS smallint, @BSSI_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_Charge_ID_RS char(25), @LNSEQNBR_RS numeric(19,5), @BSSI_Lease_Origin_RE smallint, @BSSI_Reminder_LeaseType_RE smallint, @BSSI_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_Charge_ID_RE char(25), @LNSEQNBR_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @BSSI_Lease_Origin_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Origin, BSSI_Reminder_LeaseType, BSSI_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_ReminderSent_Date, USERID, DEX_ROW_ID FROM .B4699716 ORDER BY BSSI_Lease_Origin ASC, BSSI_Reminder_LeaseType ASC, BSSI_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Lease_Origin_RS = @BSSI_Lease_Origin_RE BEGIN SELECT TOP 25  BSSI_Lease_Origin, BSSI_Reminder_LeaseType, BSSI_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_ReminderSent_Date, USERID, DEX_ROW_ID FROM .B4699716 WHERE BSSI_Lease_Origin = @BSSI_Lease_Origin_RS AND BSSI_Reminder_LeaseType BETWEEN @BSSI_Reminder_LeaseType_RS AND @BSSI_Reminder_LeaseType_RE AND BSSI_Lease_Number BETWEEN @BSSI_Lease_Number_RS AND @BSSI_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Lease_Origin ASC, BSSI_Reminder_LeaseType ASC, BSSI_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Origin, BSSI_Reminder_LeaseType, BSSI_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_ReminderSent_Date, USERID, DEX_ROW_ID FROM .B4699716 WHERE BSSI_Lease_Origin BETWEEN @BSSI_Lease_Origin_RS AND @BSSI_Lease_Origin_RE AND BSSI_Reminder_LeaseType BETWEEN @BSSI_Reminder_LeaseType_RS AND @BSSI_Reminder_LeaseType_RE AND BSSI_Lease_Number BETWEEN @BSSI_Lease_Number_RS AND @BSSI_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Lease_Origin ASC, BSSI_Reminder_LeaseType ASC, BSSI_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699716F_2] TO [DYNGRP]
GO
