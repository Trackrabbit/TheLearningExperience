SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[ATP_STK_IN] AS  SELECT IV00101.ITEMNMBR,  LOCNCODE =   CASE IV10001.IVDOCTYP  WHEN 1  THEN TRXLOCTN  WHEN 2  THEN TRXLOCTN  WHEN 3  THEN TRNSTLOC  END,  IV10000.DOCDATE AS EXPDATE,  6 AS TABLETYPE,  0 AS SOPTYPE,  IV10001.IVDOCTYP AS DOCTYPE,  IV10001.IVDOCNBR AS DOCNUMBER,  IV10001.LNSEQNBR AS LNITMSEQ,  DBCRID =  CASE IV10001.IVDOCTYP  WHEN 1  THEN 'Adjustment'  WHEN 2  THEN 'Variance'  WHEN 3  THEN 'Transfer'  END,  '   ' AS DBCRNAME,  IV10001.TRXQTY AS QUANTITY,  0 AS BACKORDER,  0 AS ALLOCATED,  IV10001.UOFM,  IV10001.QTYBSUOM,  0 AS BALANCE,  '' AS TYPE  FROM IV00101  INNER JOIN IV10001 ON   IV00101.ITEMNMBR = IV10001.ITEMNMBR  INNER JOIN  IV10000 ON (IV10001.IVDOCNBR = IV10000.IVDOCNBR) AND   (IV10001.IVDOCTYP = IV10000.IVDOCTYP)  WHERE (IV10001.IVDOCTYP = 1 AND IV10001.TRXQTY > 0) OR  (IV10001.IVDOCTYP = 2 AND IV10001.TRXQTY > 0) OR  (IV10001.IVDOCTYP = 3 AND IV10001.TRXQTY > 0 AND IV10001.TRTQTYTY = 1)    
GO
GRANT SELECT ON  [dbo].[ATP_STK_IN] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ATP_STK_IN] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ATP_STK_IN] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ATP_STK_IN] TO [DYNGRP]
GO
