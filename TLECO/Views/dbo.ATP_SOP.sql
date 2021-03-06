SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[ATP_SOP] AS  SELECT IV00101.ITEMNMBR,   SOP10200.LOCNCODE,   SOP10200.ReqShipDate AS EXPDATE,  1 AS TABLETYPE,  SOP10200.SOPTYPE AS SOPTYPE,  0 AS DOCTYPE,  SOP10200.SOPNUMBE AS DOCNUMBER,  SOP10200.LNITMSEQ,  SOP10100.CUSTNMBR AS DBCRID,  SOP10100.CUSTNAME AS DBCRNAME,  QUANTITY =  CASE SOP10200.SOPTYPE  WHEN 4  THEN QTYONHND  ELSE  SOP10200.QTYREMAI   END,   BACKORDER =   CASE SOP10200.SOPTYPE  WHEN 2  THEN QTYTBAOR  WHEN 3  THEN QTYTBAOR  WHEN 4  THEN 0  WHEN 5  THEN QTYTOINV + QTYTORDR  WHEN 6  THEN QTYTBAOR  END,  ALLOCATED =  CASE SOP10200.SOPTYPE  WHEN 4   THEN 0  ELSE  SOP10200.ATYALLOC  END,  SOP10200.UOFM,  SOP10200.QTYBSUOM,  0 AS BALANCE,  '' AS TYPE  FROM IV00101 LEFT OUTER JOIN  SOP10100 INNER JOIN  SOP10200 ON   SOP10100.SOPTYPE = SOP10200.SOPTYPE AND   SOP10100.SOPNUMBE = SOP10200.SOPNUMBE ON   IV00101.ITEMNMBR = SOP10200.ITEMNMBR  WHERE (SOP10200.SOPTYPE = 2 OR  SOP10200.SOPTYPE = 3 OR  (SOP10200.SOPTYPE = 4 AND QTYONHND > 0) OR  SOP10200.SOPTYPE = 5 or  SOP10200.SOPTYPE = 6)  AND (SOP10200.DROPSHIP <> 1)    
GO
GRANT SELECT ON  [dbo].[ATP_SOP] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ATP_SOP] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ATP_SOP] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ATP_SOP] TO [DYNGRP]
GO
