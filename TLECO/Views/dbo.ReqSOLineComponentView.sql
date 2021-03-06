SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- SO Line Component View joining SOP10200 and SOP30300 
 
CREATE VIEW [dbo].[ReqSOLineComponentView] AS 
select 
	SOPTYPE, 
	SOPNUMBE, 
	LNITMSEQ, 
	CMPNTSEQ, 
	ITEMNMBR, 
	ITEMDESC, 
	NONINVEN, 
	UOFM, 
	LOCNCODE, 
	UNITCOST, 
	ORUNTCST, 
	EXTDCOST, 
	OREXTCST, 
	QUANTITY, 
	ATYALLOC, 
	QTYTBAOR, 
	QTYTOINV, 
	QTYTORDR, 
	QTYCANCE, 
	QTYFULFI, 
	PRCLEVEL, 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = CSLSINDX) "CSLSACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = DMGDINDX) "DMGDACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = INSRINDX) "INSRACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = INUSINDX) "INUSACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = INVINDX) "INVACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = MKDNINDX) "MKDNACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = RTNSINDX) "RTNSACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = SLSINDX) "SLSACTNUMST", 
	DECPLCUR, 
	ODECPLCU, 
	DECPLQTY, 
 
	-- Start of Sales Return specific columns 
	QTYINSVC, 
	QTYINUSE, 
	QTYDMGED, 
	QTYRTRND, 
	QTYONHND 
	-- End of Sales Return specific columns 
 
from  
	SOP10200 
where 
	CMPNTSEQ <> 0 
 
union all 
 
select 
	SOPTYPE, 
	SOPNUMBE, 
	LNITMSEQ, 
	CMPNTSEQ, 
	ITEMNMBR, 
	ITEMDESC, 
	NONINVEN, 
	UOFM, 
	LOCNCODE, 
	UNITCOST, 
	ORUNTCST, 
	EXTDCOST, 
	OREXTCST, 
	QUANTITY, 
	ATYALLOC, 
	QTYTBAOR, 
	QTYTOINV, 
	QTYTORDR, 
	QTYCANCE, 
	QTYFULFI, 
	PRCLEVEL, 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = CSLSINDX) "CSLSACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = DMGDINDX) "DMGDACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = INSRINDX) "INSRACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = INUSINDX) "INUSACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = INVINDX) "INVACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = MKDNINDX) "MKDNACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = RTNSINDX) "RTNSACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = SLSINDX) "SLSACTNUMST", 
	DECPLCUR, 
	ODECPLCU, 
	DECPLQTY, 
 
	-- Start of Sales Return specific columns 
	QTYINSVC, 
	QTYINUSE, 
	QTYDMGED, 
	QTYRTRND, 
	QTYONHND 
	-- End of Sales Return specific columns 
 
from  
	SOP30300 
where 
	CMPNTSEQ <> 0 
 
 
GO
GRANT SELECT ON  [dbo].[ReqSOLineComponentView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqSOLineComponentView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqSOLineComponentView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqSOLineComponentView] TO [DYNGRP]
GO
