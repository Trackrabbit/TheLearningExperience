SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[CPO10113] AS  SELECT  HDR.JRNENTRY,  HDR.SQNCLINE,  HDR.DTAControlNum,  HDR.DTATRXType,  LINE.ACTINDX,  LINE.DEBITAMT,  LINE.CRDTAMNT,  HDR.TRXDATE,  PERIOD.YEAR1,  PERIOD.PERIODID,  HDR.BACHNUMB,  HDR.BCHSOURC,  HDR.SOURCDOC,  HDR.REFRENCE,  LINE.DEX_ROW_ID FROM  GL10000 AS HDR  LEFT JOIN(  SELECT  PERIODID,  PERIODDT,  PERDENDT,  YEAR1,  PERNAME,  SERIES  FROM  SY40100  ) AS PERIOD ON  HDR.TRXDATE>=PERIOD.PERIODDT AND HDR.TRXDATE<=PERIOD.PERDENDT  RIGHT JOIN(  SELECT  DEBITAMT,  CRDTAMNT,  JRNENTRY,  ACTINDX,  DEX_ROW_ID  FROM  GL10001  ) AS LINE ON  HDR.JRNENTRY=LINE.JRNENTRY WHERE  PERIOD.PERIODID!=0 AND PERIOD.SERIES=0   
GO
GRANT SELECT ON  [dbo].[CPO10113] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CPO10113] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CPO10113] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CPO10113] TO [DYNGRP]
GO
