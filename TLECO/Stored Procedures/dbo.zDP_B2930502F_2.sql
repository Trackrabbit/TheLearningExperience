SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930502F_2] (@CUSTNMBR_RS char(15), @CUSTNMBR_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, SLSAMNT, BSSI_DownPayment, PAYMENT_AMOUNT, PYMNT_FREQUENCY, NUM_PAYMENTS, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, LNITMSEQ, BSSI_Import_Log, SCHEDULE_NUMBER, BSSI_ImportPhase, ORIG_DOC_NUMBER, BSSI_ImportDate, BSSI_CRM_IntRate, BSSI_CRM_PymtAmt, DEX_ROW_ID FROM .B2930502 ORDER BY CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, SLSAMNT, BSSI_DownPayment, PAYMENT_AMOUNT, PYMNT_FREQUENCY, NUM_PAYMENTS, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, LNITMSEQ, BSSI_Import_Log, SCHEDULE_NUMBER, BSSI_ImportPhase, ORIG_DOC_NUMBER, BSSI_ImportDate, BSSI_CRM_IntRate, BSSI_CRM_PymtAmt, DEX_ROW_ID FROM .B2930502 WHERE CUSTNMBR = @CUSTNMBR_RS ORDER BY CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_LeaseID, CUSTNMBR, DOCDATE, FIRST_INV_DUE_DATE, SLSAMNT, BSSI_DownPayment, PAYMENT_AMOUNT, PYMNT_FREQUENCY, NUM_PAYMENTS, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, LNITMSEQ, BSSI_Import_Log, SCHEDULE_NUMBER, BSSI_ImportPhase, ORIG_DOC_NUMBER, BSSI_ImportDate, BSSI_CRM_IntRate, BSSI_CRM_PymtAmt, DEX_ROW_ID FROM .B2930502 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY CUSTNMBR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930502F_2] TO [DYNGRP]
GO
