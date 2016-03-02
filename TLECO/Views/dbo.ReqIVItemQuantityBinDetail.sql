SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqIVItemQuantityBinDetail] AS 
select  
	ITEMNMBR,  
	LOCNCODE, 
	BIN,  
	(select QUANTITY from IV00112 where QTYTYPE = 1 and  
			Master.LOCNCODE = LOCNCODE and Master.ITEMNMBR = ITEMNMBR and Master.BIN = BIN) "QTYONHND", 
	(select ATYALLOC from IV00112 where QTYTYPE = 1 and  
			Master.LOCNCODE = LOCNCODE and Master.ITEMNMBR = ITEMNMBR and Master.BIN = BIN) "ATYALLOC", 
	(select QUANTITY from IV00112 where QTYTYPE = 2 and  
			Master.LOCNCODE = LOCNCODE and Master.ITEMNMBR = ITEMNMBR and Master.BIN = BIN) "QTYRTRND", 
	(select QUANTITY from IV00112 where QTYTYPE = 3 and  
			Master.LOCNCODE = LOCNCODE and Master.ITEMNMBR = ITEMNMBR and Master.BIN = BIN) "QTYINUSE", 
	(select QUANTITY from IV00112 where QTYTYPE = 4 and  
			Master.LOCNCODE = LOCNCODE and Master.ITEMNMBR = ITEMNMBR and Master.BIN = BIN) "QTYINSVC", 
	(select QUANTITY from IV00112 where QTYTYPE = 5 and  
			Master.LOCNCODE = LOCNCODE and Master.ITEMNMBR = ITEMNMBR and Master.BIN = BIN) "QTYDMGED" 
from  
	IV00112 Master 
group by BIN, ITEMNMBR, LOCNCODE 
GO
GRANT SELECT ON  [dbo].[ReqIVItemQuantityBinDetail] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqIVItemQuantityBinDetail] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqIVItemQuantityBinDetail] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqIVItemQuantityBinDetail] TO [DYNGRP]
GO
