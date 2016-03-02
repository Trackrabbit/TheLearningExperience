SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqEmployeePayCode] AS 
SELECT 
	EMPLOYID, 
	PAYRCORD,  
	INACTIVE,   
	PAYTYPE, 
	BSPAYRCD,   
	PAYRTAMT,                                  
	PAYUNIT,                    
	PAYUNPER,   
	PAYPRPRD,                                  
	PAYPEROD, 
	MXPYPPER,                                  
	TipType, 
	PAYADVNC,                                  
	RPTASWGS,   
	W2BXNMBR,   
	W2BXLABL,   
	TAXABLE,  
	SBJTFDTX,   
	SBJTSSEC,   
	SBJTMCAR,   
	SBJTSTTX,   
	SBJTLTAX,   
	SBJTFUTA,   
	SBJTSUTA,   
	SUTASTAT, 
	FFEDTXRT,   
	FLSTTXRT,   
	ACRUVACN,   
	ACRUSTIM,   
	ISNULL(SY03900.TXTFIELD, '') AS NOTES,                                  
	DATAENTDFLT,  
	SHFTCODE,  
	PAYFACTR,                              
	BSDONRTE,                              
	WRKRCOMP, 
	PYADVTKN, 
	PYSTPTBLID, 
	Base_Step_Increased_On, 
	Step, 
	Step_Effective_Date, 
	Step_FTE, 
	W2BXNMBR2, 
	W2BXLABL2, 
	W2BXNMBR3, 
	W2BXLABL3, 
	W2BXNMBR4, 
	W2BXLABL4, 
	Case 
		When Exists(Select 1 from ReqEmployee where Primary_Pay_Record = UPR00400.PAYRCORD and EMPLOYID = UPR00400.EMPLOYID) THEN 1 
		ELSE 0 
	End as PrimaryPayRecord, 
	UPR00400.DEX_ROW_ID 
FROM 
	UPR00400 
	LEFT OUTER JOIN SY03900 
		ON UPR00400.NOTEINDX = SY03900.NOTEINDX 
		 
GO
GRANT SELECT ON  [dbo].[ReqEmployeePayCode] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqEmployeePayCode] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqEmployeePayCode] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqEmployeePayCode] TO [DYNGRP]
GO
