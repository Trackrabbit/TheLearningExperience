SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Service Quote Distribution Line view joining SVC00230 and SVC003230. Also aggregating values from SY03900, GL00105 tables. 
 
CREATE VIEW [dbo].[ReqServiceQuoteDistributions] AS 
SELECT CALLNBR      
	,SEQNUMBR     
	,SVC_Distribution_Type  
	,(select ACTNUMST from [GL00105] where [GL00105].ACTINDX = [SVC00230].ACTINDX) "ACTNUMST" 
	,DEBITAMT               
	,ORDBTAMT               
	,CRDTAMNT               
	,ORCRDAMT               
	,POSTED  
	,POSTEDDT  
	,DistRef 
  FROM [SVC00230] 
  WHERE SRVRECTYPE = 1 -- QUOTE 
 
UNION ALL 
 
SELECT CALLNBR      
	,SEQNUMBR     
	,SVC_Distribution_Type  
	,(select ACTNUMST from [GL00105] where [GL00105].ACTINDX = [SVC30230].ACTINDX) "ACTNUMST" 
	,DEBITAMT               
	,ORDBTAMT               
	,CRDTAMNT               
	,ORCRDAMT               
	,POSTED  
	,POSTEDDT  
	,DistRef 
  FROM [SVC30230] 
  WHERE SRVRECTYPE = 1 -- QUOTE 
  
 
GO
GRANT SELECT ON  [dbo].[ReqServiceQuoteDistributions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceQuoteDistributions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceQuoteDistributions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceQuoteDistributions] TO [DYNGRP]
GO
