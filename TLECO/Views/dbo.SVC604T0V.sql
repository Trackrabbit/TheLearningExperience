SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[SVC604T0V] AS SELECT CONTNBR, CONSTS, YEAR1, PERIODID,   SUM(Transaction_Amount - SVC_Invoice_Credit_Amoun)   AS Transaction_Amount,   SUM(OrigTransactionAmount - OrigInvCreditAmt)   AS OrigTransactionAmount,  SUM(DSCDLRAM) AS DSCDLRAM, SUM(ORDDLRAT) AS ORDDLRAT, SUM(Net_Transaction_Amount) AS Net_Transaction_Amount, SUM(OrigNetTransactionAmount) AS OrigNetTransactionAmount, SUM(PSTDAMNT) AS PSTDAMNT, SUM(Originating_PostedAmount) AS Originating_PostedAmount, MAX(DEX_ROW_ID) AS DEX_ROW_ID FROM SVC00604 WHERE (Status = 0) GROUP BY CONTNBR, CONSTS, YEAR1, PERIODID, Status    
GO
GRANT SELECT ON  [dbo].[SVC604T0V] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC604T0V] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC604T0V] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC604T0V] TO [DYNGRP]
GO
