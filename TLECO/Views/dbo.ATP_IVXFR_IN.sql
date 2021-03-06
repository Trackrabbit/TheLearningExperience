SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[ATP_IVXFR_IN] AS  SELECT IV00101.ITEMNMBR,   SVC00701.TRNSTLOC AS LOCNCODE,   case   when SVC00700.ETADTE = convert(char(11), '1900/01/01', 100) then SVC00700.ORDRDATE  else SVC00700.ETADTE  end  AS EXPDATE,  9 AS TABLETYPE,  0 AS SOPTYPE,  3 AS DOCTYPE,  SVC00701.ORDDOCID AS DOCNUMBER,  SVC00701.LNITMSEQ,  'Transfer' AS DBCRID,  'Transfer' AS DBCRNAME,  QUANTITY = SVC00701.QTYSHPPD - SVC00701.QTYRECVD,  BACKORDER = 0,  ALLOCATED = 0,  SVC00701.UOFM,  SVC00701.QTYBSUOM,  0 AS BALANCE,  'IVT' AS TYPE  FROM IV00101 LEFT OUTER JOIN SVC00700  INNER JOIN SVC00701 ON SVC00700.ORDDOCID = SVC00701.ORDDOCID   ON IV00101.ITEMNMBR = SVC00701.ITEMNMBR  WHERE SVC00701.QTYSHPPD - SVC00701.QTYRECVD > 0    
GO
GRANT SELECT ON  [dbo].[ATP_IVXFR_IN] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ATP_IVXFR_IN] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ATP_IVXFR_IN] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ATP_IVXFR_IN] TO [DYNGRP]
GO
