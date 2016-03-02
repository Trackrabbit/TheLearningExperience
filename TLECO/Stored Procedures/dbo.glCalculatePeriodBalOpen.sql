SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glCalculatePeriodBalOpen]  @iAccountIndex int,  @iPeriodStartDate datetime,  @iReconcileStartDate datetime,  @oCreditAmt money OUTPUT,  @oDebitAmt money OUTPUT  as  declare  @lSQLError int  SELECT  @oCreditAmt = SUM(CRDTAMNT),  @oDebitAmt = SUM(DEBITAMT) FROM  GL20000 WHERE  ACTINDX = @iAccountIndex AND  SOURCDOC <> 'BBF' AND  VOIDED = 0  AND  TRXDATE BETWEEN @iPeriodStartDate AND @iReconcileStartDate  RETURN (@lSQLError)    
GO
GRANT EXECUTE ON  [dbo].[glCalculatePeriodBalOpen] TO [DYNGRP]
GO
