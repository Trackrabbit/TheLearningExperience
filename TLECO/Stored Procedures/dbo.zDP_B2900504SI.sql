SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900504SI] (@BSSI_Lease_Loan_Number char(17), @PRINCIPAL_AMOUNT numeric(19,5), @PAYMENT_AMOUNT numeric(19,5), @SCHEDULE_INT_RATE int, @BSSI_Recognition_Type smallint, @BSSI_Recog_Frequency smallint, @BSSI_Recog_Length_Period int, @STRTDATE datetime, @BSSI_Recalculate tinyint, @LNITMSEQ int, @BSSI_LeaseID char(17), @BSSI_EnableMinTerm tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900504 (BSSI_Lease_Loan_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, STRTDATE, BSSI_Recalculate, LNITMSEQ, BSSI_LeaseID, BSSI_EnableMinTerm) VALUES ( @BSSI_Lease_Loan_Number, @PRINCIPAL_AMOUNT, @PAYMENT_AMOUNT, @SCHEDULE_INT_RATE, @BSSI_Recognition_Type, @BSSI_Recog_Frequency, @BSSI_Recog_Length_Period, @STRTDATE, @BSSI_Recalculate, @LNITMSEQ, @BSSI_LeaseID, @BSSI_EnableMinTerm) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900504SI] TO [DYNGRP]
GO
