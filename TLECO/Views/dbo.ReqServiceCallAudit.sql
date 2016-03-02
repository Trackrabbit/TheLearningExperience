SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Service Call Audit Line view joining SVC00230 and SVC003230. Also aggregating values from SY03900, GL00105 tables. 
 
CREATE VIEW [dbo].[ReqServiceCallAudit] AS 
SELECT CALLNBR 
	,SRVRECTYPE 
	,LNITMSEQ 
	,FRMSTAT 
	,TOSTAT 
	,TECHID 
	,DSCRIPTN 
	,USERID 
	,CREATDDT 
	,CREATETIME 
  FROM [SVC00210] 
  WHERE  
	SRVRECTYPE = 2 OR SRVRECTYPE = 3 -- open and invoiced call 
 
UNION ALL 
 
SELECT CALLNBR      
	,SRVRECTYPE 
	,LNITMSEQ 
	,FRMSTAT 
	,TOSTAT 
	,TECHID 
	,DSCRIPTN 
	,USERID 
	,CREATDDT 
	,CREATETIME 
  FROM [SVC30210] 
  WHERE  
	SRVRECTYPE = 2 OR SRVRECTYPE = 3 -- open and invoiced call 
  
 
GO
GRANT SELECT ON  [dbo].[ReqServiceCallAudit] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceCallAudit] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceCallAudit] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceCallAudit] TO [DYNGRP]
GO
