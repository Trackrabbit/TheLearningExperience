SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RMV0100N_4] (@BS int, @SCH_DOC_DATE datetime, @SCHEDULE_NUMBER char(21), @DEX_ROW_ID int, @SCH_DOC_DATE_RS datetime, @SCHEDULE_NUMBER_RS char(21), @SCH_DOC_DATE_RE datetime, @SCHEDULE_NUMBER_RE char(21)) AS  set nocount on IF @SCH_DOC_DATE_RS IS NULL BEGIN SELECT TOP 25  CUSTNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, CUSTNMBR, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, DEX_ROW_ID FROM .RMV0100 WHERE ( SCH_DOC_DATE = @SCH_DOC_DATE AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DEX_ROW_ID > @DEX_ROW_ID OR SCH_DOC_DATE = @SCH_DOC_DATE AND SCHEDULE_NUMBER > @SCHEDULE_NUMBER OR SCH_DOC_DATE > @SCH_DOC_DATE ) ORDER BY SCH_DOC_DATE ASC, SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC END ELSE IF @SCH_DOC_DATE_RS = @SCH_DOC_DATE_RE BEGIN SELECT TOP 25  CUSTNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, CUSTNMBR, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, DEX_ROW_ID FROM .RMV0100 WHERE SCH_DOC_DATE = @SCH_DOC_DATE_RS AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND ( SCH_DOC_DATE = @SCH_DOC_DATE AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DEX_ROW_ID > @DEX_ROW_ID OR SCH_DOC_DATE = @SCH_DOC_DATE AND SCHEDULE_NUMBER > @SCHEDULE_NUMBER OR SCH_DOC_DATE > @SCH_DOC_DATE ) ORDER BY SCH_DOC_DATE ASC, SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, CUSTNMBR, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, DEX_ROW_ID FROM .RMV0100 WHERE SCH_DOC_DATE BETWEEN @SCH_DOC_DATE_RS AND @SCH_DOC_DATE_RE AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND ( SCH_DOC_DATE = @SCH_DOC_DATE AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DEX_ROW_ID > @DEX_ROW_ID OR SCH_DOC_DATE = @SCH_DOC_DATE AND SCHEDULE_NUMBER > @SCHEDULE_NUMBER OR SCH_DOC_DATE > @SCH_DOC_DATE ) ORDER BY SCH_DOC_DATE ASC, SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RMV0100N_4] TO [DYNGRP]
GO
