SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM20400SS_2] (@VENDORID char(15), @SCHEDULE_NUMBER char(21)) AS  set nocount on SELECT TOP 1  SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, ORIG_VOUCHER_NUM, VENDORID, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, NOTEINDX, Status, CREDIT_MEMO_DOC_NUM, VADCDTRO, DEX_ROW_ID FROM .PM20400 WHERE VENDORID = @VENDORID AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER ORDER BY VENDORID ASC, SCHEDULE_NUMBER ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM20400SS_2] TO [DYNGRP]
GO
