SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[ATP_POP_REC] AS  SELECT IV00101.ITEMNMBR,  REC.TRXLOCTN AS LOCNCODE,  POP10300.receiptdate AS EXPDATE,  7 AS TABLETYPE,  0 AS SOPTYPE,  POP10300.POPTYPE AS DOCTYPE,  REC.POPRCTNM AS DOCNUMBER,  REC.RCPTLNNM AS LNITMSEQ,  POP10300.VENDORID AS DBCRID,  POP10300.VENDNAME AS DBCRNAME,  REC.QTYSHPPD as QUANTITY,  0 AS BACKORDER,  0 AS ALLOCATED,  REC.UOFM,  REC.UMQTYINB AS QTYBSUOM,  0 AS BALANCE,  '' AS TYPE  FROM IV00101 LEFT OUTER JOIN  POP10300 INNER JOIN  POP10500 as REC ON  (POP10300.POPRCTNM = REC.POPRCTNM) AND  (POP10300.POPTYPE = REC.POPTYPE) ON   IV00101.ITEMNMBR = REC.ITEMNMBR  WHERE  (REC.QTYSHPPD > 0) AND  (Status = 0)    
GO
GRANT SELECT ON  [dbo].[ATP_POP_REC] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ATP_POP_REC] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ATP_POP_REC] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ATP_POP_REC] TO [DYNGRP]
GO
