SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Employee Address on table UPR00102.  
 
CREATE VIEW [dbo].[ReqEmployeeAddress] AS 
select  
	EMPLOYID, 
	UPR00102.ADRSCODE, 
	ADDRESS1, 
	ADDRESS2, 
	ADDRESS3, 
	CITY, 
	STATE, 
	ZIPCODE, 
	COUNTY, 
	COUNTRY, 
	PHONE1, 
	PHONE2, 
	PHONE3, 
	FAX, 
	CCode, 
	UPR00102.DEX_ROW_ID   
 
from  
	UPR00102 
GO
GRANT SELECT ON  [dbo].[ReqEmployeeAddress] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqEmployeeAddress] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqEmployeeAddress] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqEmployeeAddress] TO [DYNGRP]
GO
