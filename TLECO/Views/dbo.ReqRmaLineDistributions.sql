SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- RMA Line Distribution Line view joining SVC05030 and SVC35030. Also aggregating values from GL00105 tables. 
 
CREATE VIEW [dbo].[ReqRmaLineDistributions] AS 
SELECT 
	RETDOCID         
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,SEQNUMBR     
	,Return_Record_Type  
	,LINITMTYP  
	,SVC_Distribution_Type                           
	,DistRef 
	,(select ACTNUMST from [GL00105] where [GL00105].ACTINDX = [SVC05030].ACTINDX) "ACTNUMST" 
	,DEBITAMT               
	,ORDBTAMT               
	,CRDTAMNT               
	,ORCRDAMT               
	,POSTED  
	,POSTEDDT 
FROM 
	[SVC05030] 
 
UNION ALL 
 
SELECT 
	RETDOCID         
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,SEQNUMBR     
	,Return_Record_Type  
	,LINITMTYP  
	,SVC_Distribution_Type                           
	,DistRef 
	,(select ACTNUMST from [GL00105] where [GL00105].ACTINDX = [SVC35030].ACTINDX) "ACTNUMST" 
	,DEBITAMT               
	,ORDBTAMT               
	,CRDTAMNT               
	,ORCRDAMT               
	,POSTED  
	,POSTEDDT 
FROM 
	[SVC35030] 
 
 
GO
GRANT SELECT ON  [dbo].[ReqRmaLineDistributions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRmaLineDistributions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRmaLineDistributions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRmaLineDistributions] TO [DYNGRP]
GO
