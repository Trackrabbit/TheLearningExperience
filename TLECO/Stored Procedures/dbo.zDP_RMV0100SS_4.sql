SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RMV0100SS_4] (@SCH_DOC_DATE datetime, @SCHEDULE_NUMBER char(21)) AS  set nocount on SELECT TOP 1  CUSTNAME, SCHEDULE_NUMBER, SCHEDULE_DESC, ORIG_DOC_NUMBER, ORIG_DOC_TYPE, CUSTNMBR, SCH_DOC_DATE, SCHEDULE_AMOUNT, FuncSchAmnt, CURNCYID, SCHEDULE_INT_TYPE1, SCHEDULE_INT_RATE, NUM_PAYMENTS, PYMNT_FREQUENCY, PAYMENT_AMOUNT, FIRST_INV_DOC_DATE, FIRST_INV_DUE_DATE, REC_ACCT_IDX, REC_OFFSET_ACCT_IDX, INT_INCOME_ACCT_IDX, CREDIT_MEMO_DOC_NUM, Status, NOTEINDX, DEX_ROW_ID FROM .RMV0100 WHERE SCH_DOC_DATE = @SCH_DOC_DATE AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER ORDER BY SCH_DOC_DATE ASC, SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RMV0100SS_4] TO [DYNGRP]
GO
