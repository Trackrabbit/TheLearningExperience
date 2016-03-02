SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[SVC_Inv_Pivot] AS select T.TECHID,  I.ITEMNMBR,  ITEMTYPE = min(IV.ITEMTYPE),  ITEMDESC = min(IV.ITEMDESC),  ITMSHNAM = min(IV.ITMSHNAM),  LISTPRCE = min(IP.LISTPRCE),  ITMTRKOP = min(IV.ITMTRKOP),  RTRNABLE = min(H.RTRNABLE),  METERED = min(H.METERED),  RCRDTYPE=min(I.RCRDTYPE),   GOODQTY=sum(I.QTYONHND*charindex(ltrim(rtrim(I.LOCNCODE)),T.LOCNCODE)),  BADQTY=sum(I.QTYONHND*charindex(ltrim(rtrim(I.LOCNCODE)),T.LOCCODEB)),   GOODATYALLOC=sum(I.ATYALLOC*charindex(ltrim(rtrim(I.LOCNCODE)),T.LOCNCODE)),  BADATYALLOC=sum(I.ATYALLOC*charindex(ltrim(rtrim(I.LOCNCODE)),T.LOCCODEB))   from IV00102 I, IV00101 IV, SVC00951 H , SVC00100 T, IV00105 IP, MC40000 MC  where (I.LOCNCODE = T.LOCNCODE or I.LOCNCODE = T.LOCCODEB) and H.ITEMNMBR = IV.ITEMNMBR  and IV.ITEMNMBR = I.ITEMNMBR and IP.ITEMNMBR = I.ITEMNMBR  and (MC.FUNLCURR = IP.CURNCYID or IP.CURRNIDX = 0)  group by T.TECHID,I.ITEMNMBR    
GO
GRANT SELECT ON  [dbo].[SVC_Inv_Pivot] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC_Inv_Pivot] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC_Inv_Pivot] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC_Inv_Pivot] TO [DYNGRP]
GO
