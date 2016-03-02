SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PMV0100L_3] (@VENDORID_RS char(15), @SCHEDULE_NUMBER_RS char(21), @VENDORID_RE char(15), @SCHEDULE_NUMBER_RE char(21)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, VADCDTRO, DEX_ROW_ID FROM .PMV0100 ORDER BY VENDORID DESC, SCHEDULE_NUMBER DESC, DEX_ROW_ID DESC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, VADCDTRO, DEX_ROW_ID FROM .PMV0100 WHERE VENDORID = @VENDORID_RS AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE ORDER BY VENDORID DESC, SCHEDULE_NUMBER DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  VENDNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, VADCDTRO, DEX_ROW_ID FROM .PMV0100 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE ORDER BY VENDORID DESC, SCHEDULE_NUMBER DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PMV0100L_3] TO [DYNGRP]
GO
