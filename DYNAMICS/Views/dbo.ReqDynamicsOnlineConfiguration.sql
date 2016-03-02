SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqDynamicsOnlineConfiguration] AS 
Select	DO40100.CMPANYID,  
		DO40100.WINDLIVEID,                                                                                                                                                                                                                                                       
		DO40100.WINLIVEPASSWORD,                                      
		DO40100.COMMERCEACCTNUM,                                      
		DO40100.COMMERCEORG,                                          
		DO40100.ECOMMORDID,       
		DO40100.ECOMMINVID,       
		DO40100.CUSTNMBR,         
		DO40100.OCSACTIVE,  
		DO40100.PSACTIVE,  
		DO40100.PMTSERVCID,                                           
		DO40100.CARDNAME,     
		DO40100.ONLINECERTIFICATE,   
		SY01500.CMPNYNAM,   
		DO40100.DEX_ROW_ID 
From 
		DO40100 JOIN SY01500 ON DO40100.CMPANYID = SY01500.CMPANYID 
GO
GRANT SELECT ON  [dbo].[ReqDynamicsOnlineConfiguration] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqDynamicsOnlineConfiguration] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqDynamicsOnlineConfiguration] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqDynamicsOnlineConfiguration] TO [DYNGRP]
GO
