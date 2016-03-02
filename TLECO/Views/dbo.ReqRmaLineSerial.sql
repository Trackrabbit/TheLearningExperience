SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- RMA Serial Line view joining SVC05255 and SVC35255 
 
CREATE VIEW [dbo].[ReqRmaLineSerial] AS 
SELECT 
	RETDOCID 
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,QTYTYPE 
	,Return_Serial_Number 
	,Return_Equipment_ID 
	,SLTSQNUM 
	,BIN 
	,RETCOST 
	,SVC_Original_Serial 
	,DATERECD 
	,DTSEQNUM 
	,TRXSORCE 
	,MARKED 
	,POSTED 
FROM 
	[SVC05255] 
	join  IV00101 on ([IV00101].ITEMNMBR = [SVC05255].Return_Item_Number and IV00101.ITMTRKOP = 2) 
 
UNION ALL 
 
SELECT 
	RETDOCID 
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,QTYTYPE 
	,Return_Serial_Number 
	,Return_Equipment_ID 
	,SLTSQNUM 
	,BIN 
	,RETCOST 
	,SVC_Original_Serial 
	,DATERECD 
	,DTSEQNUM 
	,TRXSORCE 
	,MARKED 
	,POSTED 
FROM 
	[SVC35255] 
	join  IV00101 on ([IV00101].ITEMNMBR = [SVC35255].Return_Item_Number and IV00101.ITMTRKOP = 2) 
 
 
GO
GRANT SELECT ON  [dbo].[ReqRmaLineSerial] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRmaLineSerial] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRmaLineSerial] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRmaLineSerial] TO [DYNGRP]
GO
