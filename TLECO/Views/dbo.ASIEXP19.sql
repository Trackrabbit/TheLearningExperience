SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[ASIEXP19] AS  SELECT   A.IVDOCNBR as DOCNUMBR,  A.IVDOCTYP as DOCTYPE,  A.ITEMNMBR,  A.LNSEQNBR,  A.UOFM,  A.TRXQTY,  A.UNITCOST,  A.EXTDCOST,  A.TRXLOCTN,  A.TRNSTLOC,  A.TRFQTYTY,  A.TRTQTYTY,  A.IVIVINDX,  A.IVIVOFIX,  B.DOCDATE,1 as DCSTATUS,  B.BCHSOURC,  B.GLPOSTDT,  B.NOTEINDX,  B.SRCRFRNCNMBR,  B.SOURCEINDICATOR FROM IV10001 A INNER JOIN IV10000 B ON A.IVDOCNBR = B.IVDOCNBR and A.IVDOCTYP = B.IVDOCTYP  UNION ALL  SELECT   A.DOCNUMBR,  A.DOCTYPE,  A.ITEMNMBR,  A.LNSEQNBR,  A.UOFM,  A.TRXQTY,  A.UNITCOST,  A.EXTDCOST,  A.TRXLOCTN,  A.TRNSTLOC,  A.TRFQTYTY,  A.TRTQTYTY,  A.IVIVINDX,  A.IVIVOFIX,  A.DOCDATE,  3 as DCSTATUS,  B.BCHSOURC,  B.GLPOSTDT,  B.NOTEINDX,  B.SRCRFRNCNMBR,  B.SOURCEINDICATOR FROM IV30300 A INNER JOIN IV30200 B ON A.DOCNUMBR = B.DOCNUMBR and A.DOCTYPE = B.IVDOCTYP   
GO
GRANT SELECT ON  [dbo].[ASIEXP19] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ASIEXP19] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ASIEXP19] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ASIEXP19] TO [DYNGRP]
GO