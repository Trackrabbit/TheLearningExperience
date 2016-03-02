SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RMV0100L_2] (@SCHEDULE_DESC_RS char(31), @CUSTNMBR_RS char(15), @SCHEDULE_DESC_RE char(31), @CUSTNMBR_RE char(15)) AS  set nocount on IF @SCHEDULE_DESC_RS IS NULL BEGIN SELECT TOP 25  CUSTNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, CUSTNMBR, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, DEX_ROW_ID FROM .RMV0100 ORDER BY SCHEDULE_DESC DESC, CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE IF @SCHEDULE_DESC_RS = @SCHEDULE_DESC_RE BEGIN SELECT TOP 25  CUSTNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, CUSTNMBR, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, DEX_ROW_ID FROM .RMV0100 WHERE SCHEDULE_DESC = @SCHEDULE_DESC_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY SCHEDULE_DESC DESC, CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CUSTNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, CUSTNMBR, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, DEX_ROW_ID FROM .RMV0100 WHERE SCHEDULE_DESC BETWEEN @SCHEDULE_DESC_RS AND @SCHEDULE_DESC_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY SCHEDULE_DESC DESC, CUSTNMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RMV0100L_2] TO [DYNGRP]
GO
