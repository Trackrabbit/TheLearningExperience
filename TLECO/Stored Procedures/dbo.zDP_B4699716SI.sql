SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699716SI] (@BSSI_Lease_Origin smallint, @BSSI_Reminder_LeaseType smallint, @BSSI_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @BSSI_Charge_ID char(25), @BSSI_ReminderSent_Date datetime, @USERID char(15), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .B4699716 (BSSI_Lease_Origin, BSSI_Reminder_LeaseType, BSSI_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_ReminderSent_Date, USERID) VALUES ( @BSSI_Lease_Origin, @BSSI_Reminder_LeaseType, @BSSI_Lease_Number, @LOCNCODE, @LNITMSEQ, @LNSEQNBR, @BSSI_Charge_ID, @BSSI_ReminderSent_Date, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699716SI] TO [DYNGRP]
GO
