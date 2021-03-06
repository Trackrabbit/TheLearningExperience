SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[CAM10100V] as  SELECT 'Open' as DOCTYPE, RM00401.DOCNUMBR, RM00401.CUSTNMBR, CURTRXAM, ORTRXAMT,RM20101.RMDTYPAL  FROM RM00401   INNER JOIN RM20101   ON RM00401.DOCNUMBR=RM20101.DOCNUMBR AND RM00401.RMDTYPAL=RM20101.RMDTYPAL   WHERE RM00401.DCSTATUS >= 2   AND RM20101.CURTRXAM > 0   AND NOT (RM20101.RMDTYPAL=9 AND RM20101.CURTRXAM = RM20101.ORTRXAMT)  UNION ALL SELECT 'History' as DOCTYPE, DOCNUMBR, CUSTNMBR, CURTRXAM, ORTRXAMT,RM30101.RMDTYPAL  FROM RM30101  WHERE DOCNUMBR in (select APFRDCNM from RM20201 UNION ALL SELECT APTODCNM FROM RM20201)   UNION ALL SELECT 'Open', RMO.DOCNUMBR , RMO.CUSTNMBR, RMO.CURTRXAM, RMO.ORTRXAMT, RMO.RMDTYPAL   FROM RM20101 as RMO  inner join (select APFRDCNM as Doc1, APTODCNM as Doc2 from  RM20201  union all  select APTODCNM, APFRDCNM from  RM20201) as RMA  on RMA.Doc1 = RMO.DOCNUMBR  inner join RM20101 as RMO2  on RMA.Doc2 = RMO2.DOCNUMBR  WHERE RMO.CURTRXAM = 0 and RMO2.CURTRXAM > 0   GROUP BY RMO.DOCNUMBR, RMO.CUSTNMBR, RMO.CURTRXAM, RMO.ORTRXAMT, RMO.RMDTYPAL    
GO
GRANT SELECT ON  [dbo].[CAM10100V] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CAM10100V] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CAM10100V] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CAM10100V] TO [DYNGRP]
GO
