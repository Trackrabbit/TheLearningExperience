SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Service Call Part Serial Line view joining SVC00250 and SVC30250 
 
CREATE VIEW [dbo].[ReqServiceCallPartsSerial] AS 
SELECT  
	CALLNBR      
	,SRVRECTYPE  
	,LNITMSEQ     
	,SLTSQNUM     
	,QTYTYPE  
	,SERLTNUM               
	,SERLTQTY               
	,DATERECD                                                
	,DTSEQNUM               
	,UNITCOST               
	,TRXSORCE       
	,POSTED  
	,(select SERLNMBR from [SVC00300] where [SVC00300].EQUIPID = [SVC00250].EQUIPID) "EquipmentID" 
	,BIN 
  FROM [SVC00250] 
	join  IV00101 on ([IV00101].ITEMNMBR = [SVC00250].ITEMNMBR and IV00101.ITMTRKOP = 2) 
  WHERE  
	SRVRECTYPE = 2		-- Open call 
	OR SRVRECTYPE = 3	-- Invoiced 
 
UNION ALL 
 
SELECT  
	CALLNBR      
	,SRVRECTYPE  
	,LNITMSEQ     
	,SLTSQNUM     
	,QTYTYPE  
	,SERLTNUM               
	,SERLTQTY               
	,DATERECD                                                
	,DTSEQNUM               
	,UNITCOST               
	,TRXSORCE       
	,POSTED  
	,(select SERLNMBR from [SVC00300] where [SVC00300].EQUIPID = [SVC30250].EQUIPID) "EquipmentID" 
	,BIN 
  FROM [SVC30250] 
	join  IV00101 on ([IV00101].ITEMNMBR = [SVC30250].ITEMNMBR and IV00101.ITMTRKOP = 2) 
  WHERE  
	SRVRECTYPE = 2		-- Open call 
	OR SRVRECTYPE = 3	-- Invoiced 
 
 
GO
GRANT SELECT ON  [dbo].[ReqServiceCallPartsSerial] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceCallPartsSerial] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceCallPartsSerial] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceCallPartsSerial] TO [DYNGRP]
GO
