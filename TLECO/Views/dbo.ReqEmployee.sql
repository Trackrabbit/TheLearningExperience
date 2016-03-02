SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Employee View on table UPR00100.  
 
CREATE VIEW [dbo].[ReqEmployee] AS 
select 
 
	EMPLOYID,         
	EMPLCLAS,         
	INACTIVE,  
	LASTNAME,              
	FRSTNAME,        
	MIDLNAME,        
	ADRSCODE,    
	SOCSCNUM,        
	BRTHDATE,                
	GENDER, 
	ETHNORGN,  
	Calc_Min_Wage_Bal,  
	DIVISIONCODE_I, 
	DEPRTMNT,  
	JOBTITLE,  
	SUPERVISORCODE_I,  
	LOCATNID,         
	WCACFPAY, 
	(select ACTNUMST from GL00105 where ACTINDX = UPR00100.ACTINDX) "ACTINDX", 
	WKHRPRYR,  
	STRTDATE,                 
	DEMPINAC,                 
	RSNEMPIN,                         
	MINETPAY,                                 
	SUTASTAT,  
	WRKRCOMP,  
	ATACRVAC,  
	VACCRAMT,     
	VACCRMTH,  
	VACAPRYR,     
	VACAVLBL,     
	WRNVCNFLSBLWZR,  
	ATACRSTM,  
	STMACMTH,  
	SKTMACAM,     
	SIKTIMAV,     
	SKTMHPYR,     
	WRNSTFLSBLWZR,  
	USERDEF1,               
	USERDEF2,               
	EMPLOYMENTTYPE,  
	MARITALSTATUS,  
	BENADJDATE,               
	LASTDAYWORKED_I,          
	BIRTHDAY,  
	BIRTHMONTH,  
	SPOUSE,           
	SPOUSESSN,        
	NICKNAME,               
	ALTERNATENAME,          
	HRSTATUS,  
	DATEOFLASTREVIEW_I,       
	DATEOFNEXTREVIEW_I,       
	HANDICAPPED,  
	VETERAN,  
	VIETNAMVETERAN,  
	DISABLEDVETERAN,  
	UNIONEMPLOYEE,  
	SMOKER_I,  
	CITIZEN,  
	VERIFIED,  
	I9RENEW,                  
	Primary_Pay_Record,  
	CHANGEBY_I,       
	DEX_ROW_TS,             
	UNIONCD,  
	OTHERVET,  
	Military_Discharge_Date, 
	EMPLSUFF, 
	DEX_ROW_ID, 
	BENEFITEXPIRE_I, 
	RATECLSS, 
	FEDCLSSCD, 
	STATUSCD 
from  
	UPR00100 
GO
GRANT SELECT ON  [dbo].[ReqEmployee] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqEmployee] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqEmployee] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqEmployee] TO [DYNGRP]
GO
