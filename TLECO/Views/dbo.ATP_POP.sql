SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[ATP_POP] AS  SELECT IV00101.ITEMNMBR,  POP10110.LOCNCODE,  POP10110.PRMDATE AS EXPDATE,  2 AS TABLETYPE,  0 AS SOPTYPE,  POP10110.POTYPE AS DOCTYPE,  POP10110.PONUMBER AS DOCNUMBER,  POP10110.ORD AS LNITMSEQ,  POP10100.VENDORID AS DBCRID,  POP10100.VENDNAME AS DBCRNAME,  QUANTITY = (QTYCMTBASE + QTYUNCMTBASE) - sum(isnull(POP10500.QTYSHPPD, 0)),  0 AS BACKORDER,  0 AS ALLOCATED,  POP10110.UOFM,  1 AS QTYBSUOM,  0 AS BALANCE,  '' AS TYPE FROM POP10100 INNER JOIN   POP10110 ON   POP10100.PONUMBER = POP10110.PONUMBER  RIGHT OUTER JOIN   IV00101 ON POP10110.ITEMNMBR = IV00101.ITEMNMBR  LEFT OUTER JOIN   POP10500 ON POP10500.PONUMBER = POP10110.PONUMBER  and POP10500.POLNENUM = POP10110.ORD and POP10500.POPTYPE in (1,3)   and POP10500.Status = 0 WHERE ((POP10110.QTYUNCMTBASE >0) OR (POP10110.QTYCMTBASE > 0))  AND  ((POP10110.POLNESTA = 2) OR (POP10110.POLNESTA = 3)) AND   (POP10110.POTYPE <> 2) AND (POP10110.PONUMBER <> '') group by POP10110.PONUMBER, POP10110.POTYPE, IV00101.ITEMNMBR, POP10110.LOCNCODE, POP10110.PRMDATE,  POP10110.ORD, POP10100.VENDORID, POP10100.VENDNAME, POP10110.UOFM,   POP10110.QTYCMTBASE,POP10110.QTYUNCMTBASE    
GO
GRANT SELECT ON  [dbo].[ATP_POP] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ATP_POP] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ATP_POP] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ATP_POP] TO [DYNGRP]
GO
