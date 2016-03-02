SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create view [dbo].[SVC_ABCD] as SELECT distinct  RTV_Number = SVC_RTV_MSTR.RTV_Number,  VendorRMA = SVC_RTV_MSTR.VRMA_Document_ID,   ItemDesc = SVC_RTV_MSTR.ITEMDESC,   VendorItem = SVC_RTV_MSTR.VNDITNUM,   VendorName = SVC_RTV_MSTR.Ship_Address_Name,   PO_Number = SVC_RTV_MSTR.PONMBRSTR,  Name = SVC_Service_MSTR.CUSTNAME,  Address = SVC_Service_MSTR.ADDRESS1,   City = SVC_Service_MSTR.CITY,   State = SVC_Service_MSTR.STATE,   Zip = SVC_Service_MSTR.ZIP,   Contact = SVC_Service_MSTR.CNTCPRSN,   Phone = SVC_Service_MSTR.PHONE1,   DateFailed = SVC_Service_MSTR.ENTDTE,   DateRequested = SVC_Service_MSTR.ETADTE,   DateServiced = SVC_Service_MSTR.COMPDTE,  RepairTime = SVC_Service_MSTR_Line.TRANSTME,  TechName = SVC_Tech_MSTR.NAME,  Failure = SVC_Codes_Problem.DSCRIPTN,  CorrectiveAction = SVC_Codes_Repair.DSCRIPTN,  ItemNumber = SVC_RTV_MSTR.ITEMNMBR FROM  dbo.SVC05601 SVC_RTV_MSTR,  dbo.SVC00200 SVC_Service_MSTR,  dbo.SVC00201 SVC_Service_MSTR_Codes,  dbo.SVC00202 SVC_Service_MSTR_Equipment,  dbo.SVC00203 SVC_Service_MSTR_Line,  dbo.SVC00100 SVC_Tech_MSTR,  dbo.SVC00907 SVC_Codes_Problem,  dbo.SVC00908 SVC_Codes_Repair WHERE  SVC_RTV_MSTR.CALLNBR = SVC_Service_MSTR.CALLNBR AND  SVC_Service_MSTR.SRVRECTYPE = SVC_Service_MSTR_Codes.SRVRECTYPE AND  SVC_Service_MSTR.CALLNBR = SVC_Service_MSTR_Codes.CALLNBR AND  SVC_Service_MSTR.SRVRECTYPE = SVC_Service_MSTR_Equipment.SRVRECTYPE AND  SVC_Service_MSTR.CALLNBR = SVC_Service_MSTR_Equipment.CALLNBR AND  SVC_Service_MSTR.SRVRECTYPE = SVC_Service_MSTR_Line.SRVRECTYPE AND  SVC_Service_MSTR.CALLNBR = SVC_Service_MSTR_Line.CALLNBR AND  SVC_Service_MSTR_Line.TECHID = SVC_Tech_MSTR.TECHID AND  SVC_Service_MSTR_Codes.PROBCDE = SVC_Codes_Problem.PROBCDE AND  SVC_Service_MSTR_Codes.RPRCODE = SVC_Codes_Repair.RPRCODE AND  SVC_Service_MSTR_Line.ITEMUSETYPE = 'R'    
GO
GRANT SELECT ON  [dbo].[SVC_ABCD] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC_ABCD] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC_ABCD] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC_ABCD] TO [DYNGRP]
GO
