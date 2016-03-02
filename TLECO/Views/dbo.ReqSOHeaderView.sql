SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- SO Header View unioning SOP10100 and SOP30200 
 
CREATE VIEW [dbo].[ReqSOHeaderView] AS 
select  
	1 "TrxState", -- Set to 1 for Work 
	SOP10100.SOPTYPE, 
	DOCID, 
	-- Fields Added for CRM Integration 
	isnull(ORIGTYPE,0) as ORIGTYPE,									-- Original Transaction Type before migration 
	isnull(ORIGNUMB,'') as ORIGNUMB,									-- Original Document Number before migration 
	-- End Integration Fields 
	SOP10100.SOPNUMBE, 
	TAXSCHID, 
	FRTSCHID, 
	MSCSCHID, 
	SHIPMTHD, 
	TAXAMNT, 
	ORTAXAMT, 
	LOCNCODE, 
	DOCDATE, 
	FRTAMNT, 
	ORFRTAMT, 
	MISCAMNT, 
	ORMISCAMT, 
	TRDISAMT, 
	ORTDISAM, 
	TRDISPCT, 
	MRKDNAMT, 
	ORMRKDAM, 
	CUSTNMBR, 
	CUSTNAME, 
	CSTPONBR, 
	PROSPECT, 
	ShipToName, 
	ADDRESS1, 
	ADDRESS2, 
	ADDRESS3, 
	CNTCPRSN, 
	FAXNUMBR, 
	CITY, 
	STATE, 
	ZIPCODE, 
	COUNTRY, 
	CCode, 
	PHNUMBR1, 
	PHNUMBR2, 
	PHONE3, 
	SUBTOTAL, 
	ORSUBTOT, 
	DOCAMNT, 
	ORDOCAMT, 
	PYMTRCVD, 
	ORPMTRVD, 
	DEPRECVD, 
	ORDEPRVD, 
	SALSTERR, 
	SLPRSNID, 
	UPSZONE, 
	USER2ENT, 
	CREATDDT, 
	SOP10100.DEX_ROW_TS, 
	BACHNUMB, 
	BCHSOURC, 
	(SELECT CREATDDT FROM SY00500 WHERE SOP10100.BACHNUMB = SY00500.BACHNUMB AND SOP10100.BCHSOURC = SY00500.BCHSOURC) AS BatchCreatedDate, 
	(SELECT TIME1 FROM SY00500 WHERE SOP10100.BACHNUMB = SY00500.BACHNUMB AND SOP10100.BCHSOURC = SY00500.BCHSOURC) AS BatchCreatedTime, 
	PRBTADCD, 
	PRSTADCD, 
	FRTTXAMT, 
	ORFRTTAX, 
	MSCTXAMT, 
	ORMSCTAX, 
	MSTRNUMB, 
	PYMTRMID, 
	COMAPPTO, 
	COMMAMNT, 
	OCOMMAMT, 
	CMMSLAMT, 
	ORCOSAMT, 
	CURNCYID, 
	XCHGRATE, 
	EXCHDATE, 
	FRGTTXBL, 
	MISCTXBL, 
	COMMNTID, 
	ReqShipDate, 
	ACTLSHIP, 
	FUFILDAT, 
	QUOEXPDA, 
	QUOTEDAT, 
	SOP10106.CMMTTEXT, 
	PRCLEVEL, 
	TAXEXMT1, 
	TAXEXMT2, 
	TXRGNNUM, 
	TRXSORCE, 
	ECTRX, 
	VOIDSTTS, 
	REFRENCE, 
	SHIPCOMPLETE, 
	SY03900.TXTFIELD, 
	GPSFOINTEGRATIONID, 
	INTEGRATIONSOURCE, 
	INTEGRATIONID, 
	INVODATE, 
	BACKDATE, 
	RETUDATE, 
 
-- The following columns only apply to Sales Order   
	REPTING, 
	TRXFREQU, 
	TIMETREP, 
	DYSTINCR, 
	SOPSTATUS, 
-- End of Sales Order 
 
-- The following columns only apply to Sales Invoice 
	DISTKNAM, 
	ORDISTKN, 
	DUEDATE, 
	DISCDATE, 
 	DISAVAMT, 
	ORDAVAMT, 
	DSCDLRAM, 
	ORDDLRAT, 
	DSCPCTAM, 
  	GLPOSTDT, 
	POSTEDDT, 
	PTDUSRID, 
	DIRECTDEBIT, 
-- End of Sales Invoice 
 
-- The following columns only apply to Sales Return 
	DISCRTND, 
	ORDISRTD, 
-- End of Sales Return 
 
-- Workflow fields 
	CASE  
		WHEN SOP10100.SOPTYPE=1 THEN 
			WorkflowPriorityQuote  
		ELSE 
			WorkflowPriorityCreditLm 
		END AS WorkflowPriority, 
	CASE 
		WHEN SOP10100.SOPTYPE=1 THEN 
			WorkflowApprStatusQuote 
		ELSE 
			WorkflowApprStatCreditLm 
		END AS ApprovalWorkflowStatus, 
-- End Workflow fields 
	 
	SOP10100.DEX_ROW_ID 
from  
	SOP10100 (nolock)left outer join SOP10106 on (SOP10100.SOPNUMBE = SOP10106.SOPNUMBE and SOP10100.SOPTYPE = SOP10106.SOPTYPE) 
	left outer join SY03900 on (SOP10100.NOTEINDX = SY03900.NOTEINDX) 
 
 
 
union all 
 
 
select  
	3 "TrxState", -- Set to 3 for History 
	SOP30200.SOPTYPE, 
	DOCID, 
	-- Fields Added for CRM Integration 
	isnull(SOP30200.ORIGTYPE,0) as ORIGTYPE,									-- Original Transaction Type before migration 
	isnull(SOP30200.ORIGNUMB,'') as ORIGNUMB,									-- Original Document Number before migration 
	-- End Integration Fields 
	SOP30200.SOPNUMBE, 
	TAXSCHID, 
	FRTSCHID, 
	MSCSCHID, 
	SHIPMTHD, 
	TAXAMNT, 
	ORTAXAMT, 
	LOCNCODE, 
	DOCDATE, 
	FRTAMNT, 
	ORFRTAMT, 
	MISCAMNT, 
	ORMISCAMT, 
	TRDISAMT, 
	ORTDISAM, 
	TRDISPCT, 
	MRKDNAMT, 
	ORMRKDAM, 
	CUSTNMBR, 
	CUSTNAME, 
	CSTPONBR, 
	PROSPECT, 
	ShipToName, 
	ADDRESS1, 
	ADDRESS2, 
	ADDRESS3, 
	CNTCPRSN, 
	FAXNUMBR, 
	CITY, 
	STATE, 
	ZIPCODE, 
	COUNTRY, 
	CCode, 
	PHNUMBR1, 
	PHNUMBR2, 
	PHONE3, 
	SUBTOTAL, 
	ORSUBTOT, 
	DOCAMNT, 
	ORDOCAMT, 
	PYMTRCVD, 
	ORPMTRVD, 
	DEPRECVD, 
	ORDEPRVD, 
	SALSTERR, 
	SLPRSNID, 
	UPSZONE, 
	USER2ENT, 
	CREATDDT, 
	SOP30200.DEX_ROW_TS, 
	BACHNUMB, 
	BCHSOURC, 
	'', --BatchCreatedDate 
	'', --BatchCreatedTime 
	PRBTADCD, 
	PRSTADCD, 
	FRTTXAMT, 
	ORFRTTAX, 
	MSCTXAMT, 
	ORMSCTAX, 
	MSTRNUMB, 
	PYMTRMID, 
	COMAPPTO, 
	COMMAMNT, 
	OCOMMAMT, 
	CMMSLAMT, 
	ORCOSAMT, 
	CURNCYID, 
	XCHGRATE, 
	EXCHDATE, 
	FRGTTXBL, 
	MISCTXBL, 
	COMMNTID, 
	ReqShipDate, 
	ACTLSHIP, 
	FUFILDAT, 
	QUOEXPDA, 
	QUOTEDAT, 
	SOP10106.CMMTTEXT, 
	PRCLEVEL, 
	TAXEXMT1, 
	TAXEXMT2, 
	TXRGNNUM, 
	TRXSORCE, 
	ECTRX, 
	VOIDSTTS, 
	REFRENCE, 
	SHIPCOMPLETE, 
	SY03900.TXTFIELD, 
	'', 			-- GPSFOINTEGRATIONID, 
	0, 			-- INTEGRATIONSOURCE, 
	'',			-- INTEGRATIONID, 
	INVODATE, 
	BACKDATE, 
	RETUDATE, 
 
 
-- The following columns only apply to Sales Order 
	REPTING, 
	TRXFREQU, 
	TIMETREP, 
	DYSTINCR, 
	SOPSTATUS, 
-- End of Sales Order 
 
-- The following columns only apply to Sales Invoice 
	DISTKNAM, 
	ORDISTKN, 
	DUEDATE, 
	DISCDATE, 
 	DISAVAMT, 
	ORDAVAMT, 
	DSCDLRAM, 
	ORDDLRAT, 
	DSCPCTAM, 
  	GLPOSTDT, 
	POSTEDDT, 
	PTDUSRID, 
	DIRECTDEBIT, 
-- End of Sales Invoice 
 
-- The following columns only apply to Sales Return 
	DISCRTND, 
	ORDISRTD, 
-- End of Sales Return 
 
-- Workflow fields 
	CASE  
		WHEN SOP30200.SOPTYPE=1 THEN 
			WorkflowPriorityQuote  
		ELSE 
			WorkflowPriorityCreditLm 
		END, 
	CASE 
		WHEN SOP30200.SOPTYPE=1 THEN 
			WorkflowApprStatusQuote 
		ELSE 
			WorkflowApprStatCreditLm 
		END, 
-- End Workflow fields 
 
	SOP30200.DEX_ROW_ID 
from  
	SOP30200 (nolock)left outer join SOP10106 on (SOP30200.SOPNUMBE = SOP10106.SOPNUMBE and SOP30200.SOPTYPE = SOP10106.SOPTYPE) 
	left outer join SY03900 on (SOP30200.NOTEINDX = SY03900.NOTEINDX) 
 
 
GO
GRANT SELECT ON  [dbo].[ReqSOHeaderView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqSOHeaderView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqSOHeaderView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqSOHeaderView] TO [DYNGRP]
GO
