SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Service Quote Audit Line view joining SVC00230 and SVC003230. Also aggregating values from SY03900, GL00105 tables. 
 
CREATE VIEW [dbo].[ReqServiceQuoteAudit] AS 
SELECT CALLNBR 
	,LNITMSEQ 
	,FRMSTAT 
	,TOSTAT 
	,TECHID 
	,DSCRIPTN 
	,USERID 
	,CREATDDT 
	,CREATETIME 
  FROM [SVC00210] 
  WHERE SRVRECTYPE = 1 -- QUOTE 
 
UNION ALL 
 
SELECT CALLNBR      
	,LNITMSEQ 
	,FRMSTAT 
	,TOSTAT 
	,TECHID 
	,DSCRIPTN 
	,USERID 
	,CREATDDT 
	,CREATETIME 
  FROM [SVC30210] 
  WHERE SRVRECTYPE = 1 -- QUOTE 
  
 
GO
GRANT SELECT ON  [dbo].[ReqServiceQuoteAudit] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceQuoteAudit] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceQuoteAudit] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceQuoteAudit] TO [DYNGRP]
GO
