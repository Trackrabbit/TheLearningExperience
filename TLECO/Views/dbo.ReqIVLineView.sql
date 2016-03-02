SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqIVLineView] AS 
select 
	1 "TrxState", -- WORK 
	IVDOCNBR, 
	ITEMNMBR, 
	LNSEQNBR, 
	UOFM, 
	TRXQTY, 
	UNITCOST, 
	TRXLOCTN, 
	TRNSTLOC, 
	TRFQTYTY, 
	TRTQTYTY, 
	(select ACTNUMST from GL00105 where IVIVINDX = ACTINDX) "InventoryAccount", 
	(select ACTNUMST from GL00105 where IVIVOFIX = ACTINDX) "InventoryAccountOffset", 
	IVDOCTYP, 
	DECPLQTY, 
	DECPLCUR 
from 
	IV10001 
 
union all 
 
select 
	3 "TrxState", -- HISTORY 
	DOCNUMBR, 
	ITEMNMBR, 
	LNSEQNBR, 
	UOFM, 
	TRXQTY, 
	UNITCOST, 
	TRXLOCTN, 
	TRNSTLOC, 
	TRFQTYTY, 
	TRTQTYTY, 
	(select ACTNUMST from GL00105 where IVIVINDX = ACTINDX) "InventoryAccount", 
	(select ACTNUMST from GL00105 where IVIVOFIX = ACTINDX) "InventoryAccountOffset", 
	DOCTYPE, 
	DECPLQTY, 
	DECPLCUR 
from 
	IV30300 
GO
GRANT SELECT ON  [dbo].[ReqIVLineView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqIVLineView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqIVLineView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqIVLineView] TO [DYNGRP]
GO
