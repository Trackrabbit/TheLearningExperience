SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqServiceCallEquipmentCodes] AS 
-- Service Call Equipment Code Line view joining SVC00201, SVC30201 and aggregating data from SVC00202 and SVC30202 
SELECT SVC00201.CALLNBR  
      ,SVC00201.SRVRECTYPE  
      ,SVC00201.LNITMSEQ  
      ,isnull((select SERLNMBR from SVC00300 where SVC00300.EQUIPID = SVC00201.EQUIPID),'') "SERLNMBR"  
      ,SVC00201.ITEMNMBR  
      ,PROBCDE  
      ,CAUSECDE  
      ,RPRCODE  
      ,isnull(SVC00202.EQPLINE,'') "EQPLINE" 
      ,isnull(SVC00202.PMPERF,'') "PMPERF" 
  FROM SVC00201  
      left outer join SVC00202 on (  
            SVC00201.CALLNBR = SVC00202.CALLNBR and   
            SVC00201.EQUIPID = SVC00202.EQUIPID and   
            SVC00201.ITEMNMBR = SVC00202.ITEMNMBR            
            )  
  WHERE   
      SVC00201.SRVRECTYPE = 2 OR SVC00201.SRVRECTYPE = 3-- Open and invoice calls  
  
union all  
  
SELECT SVC30201.CALLNBR  
      ,SVC30201.SRVRECTYPE  
      ,SVC30201.LNITMSEQ  
      ,isnull((select SERLNMBR from SVC00300 where SVC00300.EQUIPID = SVC30201.EQUIPID),'') "SERLNMBR"  
      ,SVC30201.ITEMNMBR  
      ,PROBCDE  
      ,CAUSECDE  
      ,RPRCODE  
      ,isnull(SVC30202.EQPLINE,'') "EQPLINE" 
      ,isnull(SVC30202.PMPERF,'') "PMPERF" 
  FROM SVC30201  
      left outer join SVC30202 on (  
            SVC30201.CALLNBR = SVC30202.CALLNBR and   
            SVC30201.EQUIPID = SVC30202.EQUIPID and   
            SVC30201.ITEMNMBR = SVC30202.ITEMNMBR            
            )  
  WHERE   
      SVC30201.SRVRECTYPE = 2 OR SVC30201.SRVRECTYPE = 3-- Open and invoice calls 
 
 
GO
GRANT SELECT ON  [dbo].[ReqServiceCallEquipmentCodes] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceCallEquipmentCodes] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceCallEquipmentCodes] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceCallEquipmentCodes] TO [DYNGRP]
GO
