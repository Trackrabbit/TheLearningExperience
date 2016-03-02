SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PO Line View unioning POP10110 and POP30110 
 
CREATE VIEW [dbo].[ReqPOLineView] AS 
select  
	poLine.PONUMBER, 
	poLine.LOCNCODE, 
	poLine.VNDITNUM, 
	poLine.ITEMNMBR, 
	poLine.QTYORDER, 
	poLine.QTYCANCE, 
	poLine.FREEONBOARD, 
	poLine.REQSTDBY, 
	poLine.COMMNTID, 
	poLine.REQDATE, 
	poLine.RELEASEBYDATE, 
	poLine.PRMDATE, 
	poLine.PRMSHPDTE, 
	poLine.NONINVEN, 
	GL00105.ACTNUMST, 
	poLine.ITEMDESC, 
	poLine.UNITCOST, 
	poLine.VNDITDSC, 
	poLine.UOFM, 
	poLine.JOBNUMBR, 
	poLine.LINEORIGIN, 
	poLine.Capital_Item, 
	poLine.Purchase_IV_Item_Taxable, 
	poLine.Purchase_Item_Tax_Schedu, 
	poLine.Purchase_Site_Tax_Schedu, 
	poLine.TAXAMNT, 
	poLine.BCKTXAMT, 
	poLine.Landed_Cost_Group_ID, 
	poLine.SHIPMTHD, 
	poLine.POLNESTA, 
	POP10150.CMMTTEXT, 
	poLine.ORD, 
	poLine.ADRSCODE, 
	poLine.CMPNYNAM, 
	poLine.CONTACT, 
	poLine.ADDRESS1, 
	poLine.ADDRESS2, 
	poLine.ADDRESS3, 
	poLine.CITY, 
	poLine.STATE, 
	poLine.ZIPCODE, 
	poLine.CCode, 
	poLine.COUNTRY, 
	poLine.PHONE1, 
	poLine.PHONE2, 
	poLine.PHONE3, 
	poLine.FAX, 
	poLine.EXTDCOST, 
	poLine.ORUNTCST, 
	poLine.OREXTCST, 
	poLine.Source_Document_Number, 
	poLine.Source_Document_Line_Num, 
	poLine.Released_Date, 
	poLine.ORTAXAMT, 
	poLine.OBTAXAMT, 
	poLine.DECPLCUR,  
	poLine.ODECPLCU,  
	poLine.DECPLQTY, 
	poLine.ProjNum, 
	poLine.CostCatID, 
	poHead.DOCDATE 
 
 
from  
	POP10110 as poLine left outer join POP10150 on (poLine.PONUMBER = POP10150.POPNUMBE) 
		 left outer join GL00105 on (poLine.INVINDX = GL00105.ACTINDX) 
		 left join POP10100 as poHead on poHead.PONUMBER = poLine.PONUMBER 
 
union all 
 
select  
	PONUMBER, 
	LOCNCODE, 
	VNDITNUM, 
	ITEMNMBR, 
	QTYORDER, 
	QTYCANCE, 
	FREEONBOARD, 
	REQSTDBY, 
	POP30110.COMMNTID, 
	REQDATE, 
	RELEASEBYDATE, 
	PRMDATE, 
	PRMSHPDTE, 
	NONINVEN, 
	GL00105.ACTNUMST, 
	ITEMDESC, 
	UNITCOST, 
	VNDITDSC, 
	UOFM, 
	JOBNUMBR, 
	LINEORIGIN, 
	3, --Capital_Item does not exist in history 
	Purchase_IV_Item_Taxable, 
	Purchase_Item_Tax_Schedu, 
	Purchase_Site_Tax_Schedu, 
	TAXAMNT, 
	BCKTXAMT, 
	Landed_Cost_Group_ID, 
	SHIPMTHD, 
	POLNESTA, 
	POP10150.CMMTTEXT, 
	ORD, 
	ADRSCODE, 
	CMPNYNAM, 
	CONTACT, 
	ADDRESS1, 
	ADDRESS2, 
	ADDRESS3, 
	CITY, 
	STATE, 
	ZIPCODE, 
	CCode, 
	COUNTRY, 
	PHONE1, 
	PHONE2, 
	PHONE3, 
	FAX, 
	EXTDCOST, 
	ORUNTCST, 
	OREXTCST, 
	Source_Document_Number, 
	Source_Document_Line_Num, 
	Released_Date, 
	ORTAXAMT, 
	OBTAXAMT, 
	DECPLCUR,  
	ODECPLCU,  
	DECPLQTY, 
	ProjNum, 
	CostCatID, 
	GETDATE() 
from  
	 
	POP30110 left outer join POP10150 on (POP30110.PONUMBER = POP10150.POPNUMBE) 
		 left outer join GL00105 on (POP30110.INVINDX = GL00105.ACTINDX) 
 
 
GO
GRANT SELECT ON  [dbo].[ReqPOLineView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPOLineView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPOLineView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPOLineView] TO [DYNGRP]
GO
