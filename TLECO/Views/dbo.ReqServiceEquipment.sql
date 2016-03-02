SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- SVC Service Equipment on table SVC00300.  
 
CREATE VIEW [dbo].[ReqServiceEquipment] AS 
SELECT      
	SERLNMBR, 
	ITEMNMBR, 
	REFRENCE, 
	Version, 
	SRLSTAT, 
	INSTDTE,  
    CUSTNMBR, 
    ADRSCODE, 
    ADDRESS1, 
    ADDRESS2, 
    CITY, 
    STATE, 
    ZIP "ZIPCODE", 
    COUNTRY, 
    CNTCPRSN, 
    LSTPMDTE, 
    LSTSRVDTE, 
    TECHID, 
    OFFID, 
    SVCAREA, 
    TIMEZONE, 
    WARRCDE, 
    WARREND, 
    WARRSTART, 
    SLRWARR, 
    SLRWEND, 
    SLRWSTART, 
    SY03900.TXTFIELD, 
    Last_Calc_Date, 
    SVC_PM_Date, 
    SVC_PM_Day, 
    VENDORID, 
    ADDRESS3, 
    USERDEF1, 
    USERDEF2, 
    USRDEF03, 
    USRDEF04, 
    USRDEF05, 
    SVC_Serial_ID, 
    QUANTITY, 
    SVC_Asset_Tag, 
    Shipped_Date, 
    SVC_Register_Date, 
   	SVC00300.DEX_ROW_ID 
FROM  
        SVC00300 LEFT OUTER JOIN SY03900 ON (SVC00300.NOTEINDX = SY03900.NOTEINDX) 
         
 
GO
GRANT SELECT ON  [dbo].[ReqServiceEquipment] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceEquipment] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceEquipment] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceEquipment] TO [DYNGRP]
GO
