SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[SVC36031V] AS  SELECT CONTNBR, CONSTS, SVC_Contract_Version, SUM(DOCAMNT) AS DOCAMNT,   SUM(PSTDAMNT) AS PSTDAMNT,   SUM(SVC_Invoice_Credit_Amoun)   AS SVC_Invoice_Credit_Amoun, SUM(ORDOCAMT)   AS ORDOCAMT, SUM(ORIGPSTDAMNT) AS ORIGPSTDAMNT,   SUM(OrigInvCreditAmt) AS OrigInvCreditAmt, INVODATE,   POSTED, MAX(DEX_ROW_ID) AS DEX_ROW_ID FROM SVC30603 WHERE (POSTED = 1) GROUP BY CONTNBR, CONSTS, SVC_Contract_Version, INVODATE, POSTED    
GO
GRANT SELECT ON  [dbo].[SVC36031V] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC36031V] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC36031V] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC36031V] TO [DYNGRP]
GO