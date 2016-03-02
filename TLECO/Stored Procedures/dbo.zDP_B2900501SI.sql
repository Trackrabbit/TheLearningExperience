SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900501SI] (@BSSI_Lease_Loan_Number char(17), @SCHEDULE_NUMBER char(21), @LNSEQNBR numeric(19,5), @BSSI_Recognition_Type smallint, @BSSI_Recog_Frequency smallint, @BSSI_Recog_Length_Period int, @BSSI_Recog_Length_Months numeric(19,5), @STRTDATE datetime, @ENDDATE datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900501 (BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, LNSEQNBR, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE) VALUES ( @BSSI_Lease_Loan_Number, @SCHEDULE_NUMBER, @LNSEQNBR, @BSSI_Recognition_Type, @BSSI_Recog_Frequency, @BSSI_Recog_Length_Period, @BSSI_Recog_Length_Months, @STRTDATE, @ENDDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900501SI] TO [DYNGRP]
GO
