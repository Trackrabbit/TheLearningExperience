SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqRecvDocHeader] AS 
select 
	1 "TrxState", -- WORK 
	RM10301.RMDTYPAL, 
	RMDNUMWK "DOCNUMBR", 
	DOCDESCR, 
	RM10301.DOCDATE, 
	BACHNUMB, 
	BCHSOURC,	 
	(SELECT CREATDDT FROM SY00500 WHERE RM10301.BACHNUMB = SY00500.BACHNUMB AND RM10301.BCHSOURC = SY00500.BCHSOURC) AS BatchCreatedDate, 
	(SELECT TIME1 FROM SY00500 WHERE RM10301.BACHNUMB = SY00500.BACHNUMB AND RM10301.BCHSOURC = SY00500.BCHSOURC) AS BatchCreatedTime, 
	RM10301.CUSTNMBR, 
	ADRSCODE, 
	SLPRSNID, 
	SALSTERR, 
	SHIPMTHD, 
	CSTPONBR, 
	CUSTNAME, 
	TAXSCHID, 
	SLSCHDID, 
	FRTSCHID, 
	MSCSCHID, 
	COSTAMNT, 
	MC020102.ORCSTAMT, 
	SLSAMNT, 
	MC020102.ORSLSAMT, 
	TRDISAMT, 
	ORTDISAM, 
	FRTAMNT, 
	MC020102.ORFRTAMT, 
	MISCAMNT, 
	MC020102.ORMISCAMT, 
	TAXAMNT, 
	MC020102.ORTAXAMT, 
	RM10301.CURNCYID, 
	GLPOSTDT, 
	POSTEDDT, 
	PTDUSRID, 
	Electronic, 
	ECTRX, 
	DIRECTDEBIT, 
	MC020102.XCHGRATE, 
	MC020102.EXCHDATE, 
	DOCAMNT "ORTRXAMT", 
	MC020102.ORORGTRX, 
	0 "CURTRXAM", 
	MC020102.ORCTRXAM, 
	PYMTRMID, 
	DUEDATE, 
	DISCDATE, 
	'' "CPRCSTNM", 
	'' "TRXSORCE", 
	'' "DINVPDOF", 
	0 "DELETE1", 
	0 "VOIDSTTS", 
	'1900-01-01 00:00:00.000' "VOIDDATE", 
	RM10301.DEX_ROW_TS, 
	LSTUSRED, 
 
	-- The following columns are for Receivables Debit Document and Return 
	CASHAMNT, 
	MC020102.ORCASAMT, 
	CBKIDCSH,  
	CASHDATE,                                           
	DCNUMCSH,               
	CHEKAMNT, 
	MC020102.ORCHKAMT, 
	CBKIDCHK, 
	CBKIDCRD, 
	CHEKNMBR,  
	CHEKDATE,                                           
	DCNUMCHK,               
	CRCRDAMT, 
	MC020102.ORCCDAMT, 
	CRCRDNAM,        
	RCTNCCRD,               
	CRCARDDT,                                               
	DCNUMCRD,  
 
	-- Debit Document Only, not used for return 
	DISTKNAM,   
	MC020102.ORDISTKN, 
	DISAVTKN, 
	MC020102.ORDATKN, 
	WROFAMNT,  
	MC020102.ORWROFAM, 
	GSTDSAMT, 
	-- Already referenced PYMTRMID,  
	DISAVAMT, 
	MC020102.ORDAVAMT, 
	-- Already referenced DISCDATE,  
	-- Already referenced DUEDATE,   
	DSCPCTAM, 
	DSCDLRAM,  
	MC020102.ORDDLRAT, 
 
	-- The following columns are for Receivables Invoice/Receivables Debit Memo/Service Repair/Return 
	COMAPPTO, 
	COMDLRAM, 
	MC020102.ORCOMAMT, 
 
	-- The following columns are for Receivables Credit Document 
	DISCRTND, 
	MC020102.ORDISRTD, 
	RM10301.DEX_ROW_ID 
from  
	RM10301 left outer join MC020102 on (	RM10301.RMDTYPAL = MC020102.RMDTYPAL and  
						RM10301.RMDNUMWK = MC020102.DOCNUMBR) 
 
union all 
 
select 
	2 "TrxState", -- OPEN 
	RM20101.RMDTYPAL, 
	RM20101.DOCNUMBR, 
	TRXDSCRN "DOCDESCR", 
	RM20101.DOCDATE, 
	BACHNUMB, 
	BCHSOURC, 
	'', --BatchCreatedDate 
	'', --BatchCreatedTime 
	RM20101.CUSTNMBR, 
	'' "ADRSCODE", 
	SLPRSNID, 
	SLSTERCD "SALSTERR", 
	SHIPMTHD, 
	CSPORNBR "CSTPONBR", 
	(select CUSTNAME from RM00101 where RM00101.CUSTNMBR = RM20101.CUSTNMBR) "CUSTNAME", 
	TAXSCHID, 
	SLSCHDID, 
	FRTSCHID, 
	MSCSCHID, 
	COSTAMNT, 
	MC020102.ORCSTAMT, 
	SLSAMNT, 
	MC020102.ORSLSAMT, 
	TRDISAMT, 
	ORTDISAM, 
	FRTAMNT, 
	MC020102.ORFRTAMT, 
	MISCAMNT, 
	MC020102.ORMISCAMT, 
	TAXAMNT, 
	MC020102.ORTAXAMT, 
	RM20101.CURNCYID, 
	GLPOSTDT, 
	POSTDATE "POSTEDDT", 
	PSTUSRID "PTDUSRID", 
	Electronic, 
	ECTRX, 
	DIRECTDEBIT, 
	MC020102.XCHGRATE, 
	MC020102.EXCHDATE, 
	ORTRXAMT, 
	MC020102.ORORGTRX, 
	CURTRXAM, 
	MC020102.ORCTRXAM, 
	PYMTRMID, 
	DUEDATE, 
	DISCDATE, 
	CPRCSTNM, 
	RM20101.TRXSORCE, 
	DINVPDOF, 
	DELETE1, 
	VOIDSTTS, 
	VOIDDATE, 
	RM20101.DEX_ROW_TS, 
	LSTUSRED, 
 
	-- The following columns are for Receivables Debit Document and Return 
	CASHAMNT,  
	MC020102.ORCASAMT, 
	CBKIDCSH,  
	'1900-01-01 00:00:00.000' "CASHDATE",                                          
	'' "DCNUMCSH",     	       
	0.00 "CHEKAMNT",  
	MC020102.ORCHKAMT, 
	CBKIDCHK,  
	CBKIDCRD, 
	CHEKNMBR,  
	'1900-01-01 00:00:00.000' "CHEKDATE",                                       
	'' "DCNUMCHK",             
	0.00 "CRCRDAMT",             
	MC020102.ORCCDAMT, 
	'' "CRCRDNAM",      
	'' "RCTNCCRD",             
	'1900-01-01 00:00:00.000' "CRCARDDT",                                           
	'' "DCNUMCRD", 
 
	-- Debit Document Only, not used for return 
	DISTKNAM, 
	MC020102.ORDISTKN, 
	DISAVTKN, 
	MC020102.ORDATKN, 
	WROFAMNT,    
	MC020102.ORWROFAM, 
	GSTDSAMT, 
	-- Already referenced PYMTRMID,  
	DISAVAMT, 
	MC020102.ORDAVAMT, 
	-- Already referenced DISCDATE,  
	-- Already referenced DUEDATE,   
	DSCPCTAM, 
	DSCDLRAM, 
	MC020102.ORDDLRAT, 
 
	-- The following columns are for Receivables Invoice/Receivables Debit Memo/Service Repair/Return 
	0 "COMAPPTO", 
	COMDLRAM, 
	MC020102.ORCOMAMT, 
 
	-- The following columns are for Receivables Credit Document 
	DISCRTND, 
	MC020102.ORDISRTD, 
	RM20101.DEX_ROW_ID 
 
from  
	RM20101 left outer join MC020102 on (	RM20101.RMDTYPAL = MC020102.RMDTYPAL and  
						RM20101.DOCNUMBR = MC020102.DOCNUMBR) 
 
union all 
 
select 
	3 "TrxState", -- HISTORY 
	RM30101.RMDTYPAL, 
	RM30101.DOCNUMBR, 
	TRXDSCRN "DOCDESCR", 
	RM30101.DOCDATE, 
	BACHNUMB, 
	BCHSOURC, 
	'', --BatchCreatedDate 
	'', --BatchCreatedTime 
	RM30101.CUSTNMBR, 
	'' "ADRSCODE", 
	SLPRSNID, 
	SLSTERCD "SALSTERR", 
	SHIPMTHD, 
	CSPORNBR "CSTPONBR", 
	(select CUSTNAME from RM00101 where RM00101.CUSTNMBR = RM30101.CUSTNMBR) "CUSTNAME", 
	TAXSCHID, 
	SLSCHDID, 
	FRTSCHID, 
	MSCSCHID, 
	COSTAMNT, 
	MC020102.ORCSTAMT, 
	SLSAMNT, 
	MC020102.ORSLSAMT, 
	TRDISAMT, 
	ORTDISAM, 
	FRTAMNT, 
	MC020102.ORFRTAMT, 
	MISCAMNT, 
	MC020102.ORMISCAMT, 
	TAXAMNT, 
	MC020102.ORTAXAMT, 
	RM30101.CURNCYID, 
	GLPOSTDT, 
	POSTDATE "POSTEDDT", 
	PSTUSRID "PTDUSRID", 
	Electronic, 
	ECTRX, 
	DIRECTDEBIT, 
	MC020102.XCHGRATE, 
	MC020102.EXCHDATE, 
	ORTRXAMT, 
	MC020102.ORORGTRX, 
	CURTRXAM, 
	MC020102.ORCTRXAM, 
	PYMTRMID, 
	DUEDATE, 
	DISCDATE, 
	CPRCSTNM, 
	RM30101.TRXSORCE, 
	DINVPDOF, 
	DELETE1, 
	VOIDSTTS, 
	VOIDDATE, 
	RM30101.DEX_ROW_TS, 
	LSTUSRED, 
 
	-- The following columns are for Receivables Debit Document and Return 
	CASHAMNT, 
	MC020102.ORCASAMT,  
	'' "CBKIDCSH",   
	'1900-01-01 00:00:00.000' "CASHDATE",                                       
	'' "DCNUMCSH",             
	0.00 "CHEKAMNT", 	 
	MC020102.ORCHKAMT, 
	'' "CBKIDCHK",        
	'' "CBKIDCRD",  
	CHEKNMBR,  	 
	'1900-01-01 00:00:00.000' "CHEKDATE",                                        
	'' "DCNUMCHK",             
	0.00 "CRCRDAMT",             
	MC020102.ORCCDAMT, 
	'' "CRCRDNAM",      
	'' "RCTNCCRD",    
	'1900-01-01 00:00:00.000' "CRCARDDT",                                             
	'' "DCNUMCRD",           
	DISTKNAM,      
	MC020102.ORDISTKN,   
 
	-- Debit Document Only, not used for return 
	DISTKNAM "DISAVTKN", 
	MC020102.ORDATKN, 
	WROFAMNT, 
	MC020102.ORWROFAM, 
	GSTDSAMT,   
	-- Already referenced PYMTRMID,   
	DISAVAMT,  
	MC020102.ORDAVAMT, 
	-- Already referenced DISCDATE,   
	-- Already referenced DUEDATE,     
	DSCPCTAM, 
	DSCDLRAM, 
	MC020102.ORDDLRAT,   
 
	-- The following columns are for Receivables Invoice/Receivables Debit Memo/Service Repair/Return 
	0 "COMAPPTO", 
	COMDLRAM, 
	MC020102.ORCOMAMT, 
 
	-- The following columns are for Receivables Credit Document 
	DISCRTND, 
	MC020102.ORDISRTD, 
	RM30101.DEX_ROW_ID 
from  
	RM30101 left outer join MC020102 on (	RM30101.RMDTYPAL = MC020102.RMDTYPAL and  
						RM30101.DOCNUMBR = MC020102.DOCNUMBR) 
 
 
 
GO
GRANT SELECT ON  [dbo].[ReqRecvDocHeader] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRecvDocHeader] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRecvDocHeader] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRecvDocHeader] TO [DYNGRP]
GO
