SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqPurRecptLineSerNum] AS 
select 
	POPRCTNM, 
	SERLTNUM, 
	RCPTLNNM, 
	BIN, 
	QTYTYPE, 
	SLTSQNUM, 
	UNITCOST 
from  
	POP10330 
where 
	ITMTRKOP = 2 
 
union all 
 
select 
	POPRCTNM, 
	SERLTNUM, 
	RCPTLNNM, 
	BIN, 
	QTYTYPE, 
	SLTSQNUM, 
	UNITCOST 
from  
	POP30330 join  IV00101 on (IV00101.ITEMNMBR = POP30330.ITEMNMBR and IV00101.ITMTRKOP = 2) 
GO
GRANT SELECT ON  [dbo].[ReqPurRecptLineSerNum] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPurRecptLineSerNum] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPurRecptLineSerNum] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPurRecptLineSerNum] TO [DYNGRP]
GO
