SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- RMA Header View union of SVC05000 and SVC35000 
 
CREATE VIEW [dbo].[ReqRmaHeader] AS 
SELECT 
	1 "TrxState" -- Set to 1 for Work 
	,RETDOCID 
	,Return_Record_Type 
	,RMA_Status 
	,Received 
	,RETORIG 
	,RETREF 
	,RETSTAT 
	,RETTYPE 
	,ENTDTE 
	,ENTTME 
	,ETADTE 
	,ETATME 
	,RETUDATE 
	,Return_Time 
	,COMPDTE 
	,COMPTME 
	,USERID 
	,OFFID 
	,RTRNNAME 
	,RETADDR1 
	,RETADDR2 
	,RETADDR3 
	,RTRNCITY 
	,SVC_Return_State 
	,RTRNZIP 
	,Return_Country 
	,LOCNCODE 
	,CUSTNMBR 
	,ADRSCODE 
	,CUSTNAME 
	,CONTACT 
	,ADDRESS1 
	,ADDRESS2 
	,ADDRESS3 
	,CITY 
	,STATE 
	,ZIPCODE 
	,COUNTRY 
	,[SY03900].TXTFIELD 
	,Bill_of_Lading 
	,SHIPMTHD 
	,Bill_To_Customer 
	,SVC_Bill_To_Address_Code 
	,Commit_Date 
	,Commit_Time 
	,USERDEF1 
	,USERDEF2 
	,USRDEF03 
	,USRDEF04 
	,USRDEF05 
	,CURNCYID 
	,RATETPID 
	,XCHGRATE 
	,EXCHDATE 
	,CSTPONBR 
	,SVC_RMA_Reason_Code 
	,SVC_RMA_Reason_Code_Desc 
	,SVC_RMA_From_Service 
	,SVC_FO_ID 
	,[SVC05000].DEX_ROW_ID 
FROM 
	[SVC05000] 
	left outer join SY03900 on ([SVC05000].NOTEINDX = [SY03900].NOTEINDX) 
 
UNION ALL 
 
SELECT 
	3 "TrxState" -- Set to 3 for history 
	,RETDOCID 
	,Return_Record_Type 
	,RMA_Status 
	,Received 
	,RETORIG 
	,RETREF 
	,RETSTAT 
	,RETTYPE 
	,ENTDTE 
	,ENTTME 
	,ETADTE 
	,ETATME 
	,RETUDATE 
	,Return_Time 
	,COMPDTE 
	,COMPTME 
	,USERID 
	,OFFID 
	,RTRNNAME 
	,RETADDR1 
	,RETADDR2 
	,RETADDR3 
	,RTRNCITY 
	,SVC_Return_State 
	,RTRNZIP 
	,Return_Country 
	,LOCNCODE 
	,CUSTNMBR 
	,ADRSCODE 
	,CUSTNAME 
	,CONTACT 
	,ADDRESS1 
	,ADDRESS2 
	,ADDRESS3 
	,CITY 
	,STATE 
	,ZIPCODE 
	,COUNTRY 
	,[SY03900].TXTFIELD 
	,Bill_of_Lading 
	,SHIPMTHD 
	,Bill_To_Customer 
	,SVC_Bill_To_Address_Code 
	,Commit_Date 
	,Commit_Time 
	,USERDEF1 
	,USERDEF2 
	,USRDEF03 
	,USRDEF04 
	,USRDEF05 
	,CURNCYID 
	,RATETPID 
	,XCHGRATE 
	,EXCHDATE 
	,CSTPONBR 
	,SVC_RMA_Reason_Code 
	,SVC_RMA_Reason_Code_Desc 
	,SVC_RMA_From_Service 
	,SVC_FO_ID 
	,[SVC35000].DEX_ROW_ID 
FROM 
	[SVC35000] 
	left outer join SY03900 on ([SVC35000].NOTEINDX = [SY03900].NOTEINDX) 
 
 
GO
GRANT SELECT ON  [dbo].[ReqRmaHeader] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRmaHeader] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRmaHeader] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRmaHeader] TO [DYNGRP]
GO
