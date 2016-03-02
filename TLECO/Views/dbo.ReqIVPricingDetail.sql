SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqIVPricingDetail] AS 
select  
	IV00108.ITEMNMBR, 
	PRICMTHD, 
	CURNCYID, 
	IV00108.PRCLEVEL, 
	UOFM, 
	TOQTY, 
	DECPLQTY, 
	UOMPRICE, 
	IV00108.DEX_ROW_TS 
from 
	IV00108 join IV00101 on (IV00108.ITEMNMBR = IV00101.ITEMNMBR) 
GO
GRANT SELECT ON  [dbo].[ReqIVPricingDetail] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqIVPricingDetail] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqIVPricingDetail] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqIVPricingDetail] TO [DYNGRP]
GO