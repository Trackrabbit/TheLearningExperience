SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create view [dbo].[ASIV0002] as  select   PONUMBER,  POLNENUM as ORD,  sum(QTYSHPPD) as QTYSHPPD,  sum(QTYINVCD) as QTYINVCD,  sum(QTYREJ) as QTYREJ,  max(Total_Landed_Cost_Amount) as Total_Landed_Cost_Amount,  sum(QTYRESERVED) as QTYRESERVED,  sum(QTYINVRESERVE) as QTYINVRESERVE,   sum(QTYMATCH) as QTYMATCH,   max(DEX_ROW_ID) as DEX_ROW_ID  from POP10500  where Status <> 2 group by PONUMBER,POLNENUM   
GO
GRANT SELECT ON  [dbo].[ASIV0002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ASIV0002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ASIV0002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ASIV0002] TO [DYNGRP]
GO
