SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[glCalcOffsetAmountForJE] (  @I_iJENumber int,  @I_sTrxType smallint = 0,  @I_sAmountType smallint,   @I_cBusinessForm char(15) ) RETURNS numeric(19, 5) AS BEGIN  DECLARE  @nOffsetAmt numeric(19, 5),  @nCreditSum numeric(19, 5),  @nDebitSum numeric(19, 5)  set @nCreditSum = 0 set @nDebitSum = 0  if @I_sTrxType = 2   select @nCreditSum = isnull(sum(TRXAMNT), 0)  from GL10101   where BSNSFMID = @I_cBusinessForm and JRNENTRY = @I_iJENumber and TRXAMNT < 0.0   select @nDebitSum = isnull(sum(TRXAMNT), 0)  from GL10101   where BSNSFMID = @I_cBusinessForm and JRNENTRY = @I_iJENumber and TRXAMNT > 0.0  set @nOffsetAmt = abs(@nCreditSum) - abs(@nDebitSum)  if @I_sAmountType = 0  and @nOffsetAmt < 0.0  set @nOffsetAmt = 0.0  if @I_sAmountType = 1  and @nOffsetAmt > 0.0  set @nOffsetAmt = 0.0  return abs(@nOffsetAmt) END   
GO
GRANT EXECUTE ON  [dbo].[glCalcOffsetAmountForJE] TO [DYNGRP]
GO
