SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqPurInvLineView] AS  
select  
	POP10310.POPRCTNM,  
	POP10310.PONUMBER,  
	POP10310.RCPTLNNM,  
	POP10310.ITEMNMBR,  
	QTYINVCD, 
	VNDITNUM,  
	VNDITDSC,  
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP10310.PURPVIDX) "ACTNUMST",  
	POP10310.UOFM,  
	UNITCOST,  
	ORUNTCST,  
	EXTDCOST,  
	POP10310.OREXTCST,  
	NONINVEN,  
	Purchase_IV_Item_Taxable, 
	Purchase_Item_Tax_Schedu, 
	Purchase_Site_Tax_Schedu, 
	TAXAMNT, 
	ORTAXAMT, 
	BCKTXAMT, 
	OBTAXAMT, 
	POLNENUM,  
	Landed_Cost, 
	ProjNum, 
	CostCatID, 
	DECPLCUR, 
	ODECPLCU,  
	DECPLQTY  
from   
	POP10310 join POP10500 on (	POP10310.POPRCTNM = POP10500.POPRCTNM and   
					POP10310.RCPTLNNM = POP10500.RCPTLNNM)  
  
union all  
  
select  
	POP30310.POPRCTNM,  
	POP30310.PONUMBER,  
	POP30310.RCPTLNNM,  
	POP30310.ITEMNMBR,  
	QTYINVCD, 
	VNDITNUM,  
	VNDITDSC,  
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP30310.PURPVIDX) "ACTNUMST",  
	POP30310.UOFM,  
	UNITCOST,  
	ORUNTCST,  
	EXTDCOST,  
	POP30310.OREXTCST,  
	NONINVEN,  
	Purchase_IV_Item_Taxable, 
	Purchase_Item_Tax_Schedu, 
	Purchase_Site_Tax_Schedu, 
	TAXAMNT, 
	ORTAXAMT, 
	BCKTXAMT, 
	OBTAXAMT, 
	POLNENUM,  
	Landed_Cost, 
	ProjNum, 
	CostCatID, 
	DECPLCUR,  
	ODECPLCU,  
	DECPLQTY  
from   
	POP30310  join POP10500 on (	POP30310.POPRCTNM = POP10500.POPRCTNM and   
					POP30310.RCPTLNNM = POP10500.RCPTLNNM)  
 
 
GO
GRANT SELECT ON  [dbo].[ReqPurInvLineView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPurInvLineView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPurInvLineView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPurInvLineView] TO [DYNGRP]
GO
