SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- RMA Audit view joining SVC05020 and SVC35020 
 
CREATE VIEW [dbo].[ReqRmaAudit] AS 
SELECT  
	RETDOCID 
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,LNITMSEQ 
	,SVCFRMSTAT 
	,SVCTOSTAT 
	,DSCRPTION 
	,USERID 
	,CREATDDT 
	,CREATETIME 
FROM 
	[SVC05020] 
 
UNION ALL 
 
SELECT  
	RETDOCID 
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,LNITMSEQ 
	,SVCFRMSTAT 
	,SVCTOSTAT 
	,DSCRPTION 
	,USERID 
	,CREATDDT 
	,CREATETIME 
FROM 
	[SVC35020] 
  
 
GO
GRANT SELECT ON  [dbo].[ReqRmaAudit] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRmaAudit] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRmaAudit] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRmaAudit] TO [DYNGRP]
GO
