SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PMV0100F_6] (@VENDNAME_RS char(65), @VENDORID_RS char(15), @VENDNAME_RE char(65), @VENDORID_RE char(15)) AS  set nocount on IF @VENDNAME_RS IS NULL BEGIN SELECT TOP 25  VENDNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, VADCDTRO, DEX_ROW_ID FROM .PMV0100 ORDER BY VENDNAME ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE IF @VENDNAME_RS = @VENDNAME_RE BEGIN SELECT TOP 25  VENDNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, VADCDTRO, DEX_ROW_ID FROM .PMV0100 WHERE VENDNAME = @VENDNAME_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY VENDNAME ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VENDNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, VADCDTRO, DEX_ROW_ID FROM .PMV0100 WHERE VENDNAME BETWEEN @VENDNAME_RS AND @VENDNAME_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY VENDNAME ASC, VENDORID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PMV0100F_6] TO [DYNGRP]
GO