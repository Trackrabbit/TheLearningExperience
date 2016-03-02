SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900509SI] (@PRINCIPAL_AMOUNT numeric(19,5), @PAYMENT_AMOUNT numeric(19,5), @SCHEDULE_INT_RATE int, @SCHEDULE_INT_TYPE1 smallint, @BSSI_Recognition_Type smallint, @BSSI_Recog_Frequency smallint, @BSSI_Recog_Length_Period int, @BSSI_Recog_Length_Months numeric(19,5), @STRTDATE datetime, @BSSI_Recalculate tinyint, @BSSI_EnableMinTerm tinyint, @LNITMSEQ int, @USERID char(15), @BSSI_ImportID char(15), @ERRDESCR char(131), @BSSI_DownPayment numeric(19,5), @NUM_PAYMENTS smallint, @BSSI_EnableGracePeriod tinyint, @LASTPYDT datetime, @Remaining_Balance numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900509 (PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, BSSI_EnableMinTerm, LNITMSEQ, USERID, BSSI_ImportID, ERRDESCR, BSSI_DownPayment, NUM_PAYMENTS, BSSI_EnableGracePeriod, LASTPYDT, Remaining_Balance) VALUES ( @PRINCIPAL_AMOUNT, @PAYMENT_AMOUNT, @SCHEDULE_INT_RATE, @SCHEDULE_INT_TYPE1, @BSSI_Recognition_Type, @BSSI_Recog_Frequency, @BSSI_Recog_Length_Period, @BSSI_Recog_Length_Months, @STRTDATE, @BSSI_Recalculate, @BSSI_EnableMinTerm, @LNITMSEQ, @USERID, @BSSI_ImportID, @ERRDESCR, @BSSI_DownPayment, @NUM_PAYMENTS, @BSSI_EnableGracePeriod, @LASTPYDT, @Remaining_Balance) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900509SI] TO [DYNGRP]
GO
