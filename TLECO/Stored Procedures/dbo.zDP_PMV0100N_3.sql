SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PMV0100N_3] (@BS int, @VENDORID char(15), @SCHEDULE_NUMBER char(21), @DEX_ROW_ID int, @VENDORID_RS char(15), @SCHEDULE_NUMBER_RS char(21), @VENDORID_RE char(15), @SCHEDULE_NUMBER_RE char(21)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, VADCDTRO, DEX_ROW_ID FROM .PMV0100 WHERE ( VENDORID = @VENDORID AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DEX_ROW_ID > @DEX_ROW_ID OR VENDORID = @VENDORID AND SCHEDULE_NUMBER > @SCHEDULE_NUMBER OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, VADCDTRO, DEX_ROW_ID FROM .PMV0100 WHERE VENDORID = @VENDORID_RS AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND ( VENDORID = @VENDORID AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DEX_ROW_ID > @DEX_ROW_ID OR VENDORID = @VENDORID AND SCHEDULE_NUMBER > @SCHEDULE_NUMBER OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VENDNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, VADCDTRO, DEX_ROW_ID FROM .PMV0100 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE AND ( VENDORID = @VENDORID AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER AND DEX_ROW_ID > @DEX_ROW_ID OR VENDORID = @VENDORID AND SCHEDULE_NUMBER > @SCHEDULE_NUMBER OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PMV0100N_3] TO [DYNGRP]
GO