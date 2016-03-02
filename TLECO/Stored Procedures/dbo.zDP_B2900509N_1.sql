SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900509N_1] (@BS int, @USERID char(15), @BSSI_ImportID char(15), @LNITMSEQ int, @USERID_RS char(15), @BSSI_ImportID_RS char(15), @LNITMSEQ_RS int, @USERID_RE char(15), @BSSI_ImportID_RE char(15), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, BSSI_EnableMinTerm, LNITMSEQ, USERID, BSSI_ImportID, ERRDESCR, BSSI_DownPayment, NUM_PAYMENTS, BSSI_EnableGracePeriod, LASTPYDT, Remaining_Balance, DEX_ROW_ID FROM .B2900509 WHERE ( USERID = @USERID AND BSSI_ImportID = @BSSI_ImportID AND LNITMSEQ > @LNITMSEQ OR USERID = @USERID AND BSSI_ImportID > @BSSI_ImportID OR USERID > @USERID ) ORDER BY USERID ASC, BSSI_ImportID ASC, LNITMSEQ ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, BSSI_EnableMinTerm, LNITMSEQ, USERID, BSSI_ImportID, ERRDESCR, BSSI_DownPayment, NUM_PAYMENTS, BSSI_EnableGracePeriod, LASTPYDT, Remaining_Balance, DEX_ROW_ID FROM .B2900509 WHERE USERID = @USERID_RS AND BSSI_ImportID BETWEEN @BSSI_ImportID_RS AND @BSSI_ImportID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( USERID = @USERID AND BSSI_ImportID = @BSSI_ImportID AND LNITMSEQ > @LNITMSEQ OR USERID = @USERID AND BSSI_ImportID > @BSSI_ImportID OR USERID > @USERID ) ORDER BY USERID ASC, BSSI_ImportID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, BSSI_EnableMinTerm, LNITMSEQ, USERID, BSSI_ImportID, ERRDESCR, BSSI_DownPayment, NUM_PAYMENTS, BSSI_EnableGracePeriod, LASTPYDT, Remaining_Balance, DEX_ROW_ID FROM .B2900509 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND BSSI_ImportID BETWEEN @BSSI_ImportID_RS AND @BSSI_ImportID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( USERID = @USERID AND BSSI_ImportID = @BSSI_ImportID AND LNITMSEQ > @LNITMSEQ OR USERID = @USERID AND BSSI_ImportID > @BSSI_ImportID OR USERID > @USERID ) ORDER BY USERID ASC, BSSI_ImportID ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900509N_1] TO [DYNGRP]
GO