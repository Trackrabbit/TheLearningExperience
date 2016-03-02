SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- RMA Lot Line view joining SVC05255 and SVC35255 
 
CREATE VIEW [dbo].[ReqRmaLineLot] AS 
SELECT 
	RETDOCID 
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,QTYTYPE 
	,SERLTQTY 
	, Return_Serial_Number "Return_Lot_Number" 
	,SLTSQNUM 
	,BIN 
	,RETCOST 
	, SVC_Original_Serial "SVC_Original_Lot" 
	,DATERECD 
	,DTSEQNUM 
	,TRXSORCE 
	,MARKED 
	,POSTED 
	,MFGDATE 
	,EXPNDATE 
FROM 
	[SVC05255] 
	join  IV00101 on ([IV00101].ITEMNMBR = [SVC05255].Return_Item_Number and IV00101.ITMTRKOP = 3) 
 
UNION ALL 
 
SELECT 
	RETDOCID 
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,QTYTYPE 
	,SERLTQTY 
	, Return_Serial_Number "Return_Lot_Number" 
	,SLTSQNUM 
	,BIN 
	,RETCOST 
	, SVC_Original_Serial "SVC_Original_Lot" 
	,DATERECD 
	,DTSEQNUM 
	,TRXSORCE 
	,MARKED 
	,POSTED 
	,MFGDATE 
	,EXPNDATE 
FROM 
	[SVC35255] 
	join  IV00101 on ([IV00101].ITEMNMBR = [SVC35255].Return_Item_Number and IV00101.ITMTRKOP = 3) 
 
 
GO
GRANT SELECT ON  [dbo].[ReqRmaLineLot] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRmaLineLot] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRmaLineLot] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRmaLineLot] TO [DYNGRP]
GO
