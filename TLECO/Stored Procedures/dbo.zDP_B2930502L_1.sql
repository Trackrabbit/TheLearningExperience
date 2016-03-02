SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930502L_1] (@BSSI_LeaseID_RS char(17), @LNITMSEQ_RS int, @BSSI_LeaseID_RE char(17), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_LeaseID_RS IS NULL BEGIN SELECT TOP 25  BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, SLSAMNT, BSSI_DownPayment, PAYMENT_AMOUNT, PYMNT_FREQUENCY, NUM_PAYMENTS, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, LNITMSEQ, BSSI_Import_Log, SCHEDULE_NUMBER, BSSI_ImportPhase, ORIG_DOC_NUMBER, BSSI_ImportDate, BSSI_CRM_IntRate, BSSI_CRM_PymtAmt, DEX_ROW_ID FROM .B2930502 ORDER BY BSSI_LeaseID DESC, LNITMSEQ DESC END ELSE IF @BSSI_LeaseID_RS = @BSSI_LeaseID_RE BEGIN SELECT TOP 25  BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, SLSAMNT, BSSI_DownPayment, PAYMENT_AMOUNT, PYMNT_FREQUENCY, NUM_PAYMENTS, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, LNITMSEQ, BSSI_Import_Log, SCHEDULE_NUMBER, BSSI_ImportPhase, ORIG_DOC_NUMBER, BSSI_ImportDate, BSSI_CRM_IntRate, BSSI_CRM_PymtAmt, DEX_ROW_ID FROM .B2930502 WHERE BSSI_LeaseID = @BSSI_LeaseID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_LeaseID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, SLSAMNT, BSSI_DownPayment, PAYMENT_AMOUNT, PYMNT_FREQUENCY, NUM_PAYMENTS, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, LNITMSEQ, BSSI_Import_Log, SCHEDULE_NUMBER, BSSI_ImportPhase, ORIG_DOC_NUMBER, BSSI_ImportDate, BSSI_CRM_IntRate, BSSI_CRM_PymtAmt, DEX_ROW_ID FROM .B2930502 WHERE BSSI_LeaseID BETWEEN @BSSI_LeaseID_RS AND @BSSI_LeaseID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_LeaseID DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930502L_1] TO [DYNGRP]
GO
