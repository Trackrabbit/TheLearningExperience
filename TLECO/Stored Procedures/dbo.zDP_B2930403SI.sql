SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930403SI] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @LNSEQNBR numeric(19,5), @BSSI_Lease_Loan_Number char(17), @BSSI_Recog_Frequency smallint, @STRTDATE datetime, @ENDDATE datetime, @PAYMENT_AMOUNT numeric(19,5), @CHRGAMNT numeric(19,5), @MKTOPROC tinyint, @BACHNUMB char(15), @TTLPYMTS numeric(19,5), @BSSI_Processed tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2930403 (SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, MKTOPROC, BACHNUMB, TTLPYMTS, BSSI_Processed) VALUES ( @SCHEDULE_NUMBER, @Schedule_Payment_Number, @LNSEQNBR, @BSSI_Lease_Loan_Number, @BSSI_Recog_Frequency, @STRTDATE, @ENDDATE, @PAYMENT_AMOUNT, @CHRGAMNT, @MKTOPROC, @BACHNUMB, @TTLPYMTS, @BSSI_Processed) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930403SI] TO [DYNGRP]
GO
