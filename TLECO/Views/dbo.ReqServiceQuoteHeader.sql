SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- SO Header View unioning SVC00200 and SVC30200 
 
CREATE VIEW [dbo].[ReqServiceQuoteHeader] AS 
select  
	1 "TrxState", -- Set to 1 for Work 
	CALLNBR,      
	SRVSTAT,  
	SRVTYPE,      
	SVCDESCR,                                                       
	priorityLevel,  
	CUSTNMBR,         
	Customer_Reference,     
	ADRSCODE,         
	CUSTNAME,                                                           
	ADDRESS1,                                                       
	ADDRESS2,                                                       
	CITY,                                 
	STATE,                          
	ZIP "ZIPCODE",          
	CNTCPRSN,                                                       
	PHONE1,                 
	OFFID,        
	SVCAREA,      
	TECHID,       
	TIMEZONE,  
	ENTDTE,                                                  
	ENTTME,                                                  
	ETADTE,                                                  
	ETATME,                                                  
	Response_Date,                                           
	Response_Time,                                           
	PRICELVL,         
	PYMTRMID,               
	SLPRSNID,         
	LABSTOTPRC,             
	LABPCT,                 
	LABSTOTCST,             
	PARSTOTPRC,             
	PARTPCT,                
	PARSTOTCST,             
	MSCSTOTPRC,             
	MISCPCT,                
	MISSTOTCST,             
	TAXSCHID,         
	TAXEXMT1,                   
	TAXEXMT2,                   
	PRETAXTOT,              
	TAXAMNT,                
	TOTAL,                  
	PORDNMBR,               
	SY03900.TXTFIELD, 
	USERDEF1,               
	USERDEF2,               
	USRDEF03,               
	USRDEF04,               
	USRDEF05,               
	CONTNBR,      
	SVC_Contract_Line_SEQ,  
	ETTR,                   
	SVC_On_Hold,  
	Bill_To_Customer,  
	CURNCYID,         
	SVC_Bill_To_Address_Code,  
	RATETPID,         
	XCHGRATE,               
	EXCHDATE,                                                
	ORIGMISSTOTCST,         
	ORIGMSCSTOTPRC,         
	ORIGLABSUBTOTCOST,      
	ORIGLABSTOTPRC,         
	ORIGPARSTOTCST,         
	ORIGPARSTOTPRC,         
	ORIGPRETAXTOT,          
	ORTAXAMT,               
	ORIGTOTAL,              
	ADDRESS3,                                                       
	COUNTRY,                                                        
	SVC_FO_ID,	 
	SVC00200.DEX_ROW_ID 
from  
	SVC00200 left outer join SY03900 on (SVC00200.NOTEINDX = SY03900.NOTEINDX) 
where  
	SVC00200.SRVRECTYPE = 1 --set to 1 for quotes only 
 
union all 
 
select  
	3 "TrxState", -- Set to 3 for history 
	CALLNBR,      
	SRVSTAT,  
	SRVTYPE,      
	SVCDESCR,                                                       
	priorityLevel,  
	CUSTNMBR,         
	Customer_Reference,     
	ADRSCODE,         
	CUSTNAME,                                                           
	ADDRESS1,                                                       
	ADDRESS2,                                                       
	CITY,                                 
	STATE,                          
	ZIP "ZIPCODE",          
	CNTCPRSN,                                                       
	PHONE1,                 
	OFFID,        
	SVCAREA,      
	TECHID,       
	TIMEZONE,  
	ENTDTE,                                                  
	ENTTME,                                                  
	ETADTE,                                                  
	ETATME,                                                  
	Response_Date,                                           
	Response_Time,                                           
	PRICELVL,         
	PYMTRMID,               
	SLPRSNID,         
	LABSTOTPRC,             
	LABPCT,                 
	LABSTOTCST,             
	PARSTOTPRC,             
	PARTPCT,                
	PARSTOTCST,             
	MSCSTOTPRC,             
	MISCPCT,                
	MISSTOTCST,             
	TAXSCHID,         
	TAXEXMT1,                   
	TAXEXMT2,                   
	PRETAXTOT,              
	TAXAMNT,                
	TOTAL,                  
	PORDNMBR,               
	SY03900.TXTFIELD, 
	USERDEF1,               
	USERDEF2,               
	USRDEF03,               
	USRDEF04,               
	USRDEF05,               
	CONTNBR,      
	SVC_Contract_Line_SEQ,  
	ETTR,                   
	SVC_On_Hold,  
	Bill_To_Customer,  
	CURNCYID,         
	SVC_Bill_To_Address_Code,  
	RATETPID,         
	XCHGRATE,               
	EXCHDATE,                                                
	ORIGMISSTOTCST,         
	ORIGMSCSTOTPRC,         
	ORIGLABSUBTOTCOST,      
	ORIGLABSTOTPRC,         
	ORIGPARSTOTCST,         
	ORIGPARSTOTPRC,         
	ORIGPRETAXTOT,          
	ORTAXAMT,               
	ORIGTOTAL,              
	ADDRESS3,                                                       
	COUNTRY,                                                        
	SVC_FO_ID,	 
	SVC30200.DEX_ROW_ID 
from  
	SVC30200 left outer join SY03900 on (SVC30200.NOTEINDX = SY03900.NOTEINDX) 
where  
	SVC30200.SRVRECTYPE = 1 --set to 1 for quotes only 
 
 
 
GO
GRANT SELECT ON  [dbo].[ReqServiceQuoteHeader] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceQuoteHeader] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceQuoteHeader] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceQuoteHeader] TO [DYNGRP]
GO
