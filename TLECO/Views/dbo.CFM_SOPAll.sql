SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[CFM_SOPAll] AS SELECT SOP10100.CUSTNMBR, SOPNUMBE, SOPTYPE, DOCDATE,  CASE WHEN SOP10100.PYMTRMID = ' ' THEN RM00101.PYMTRMID ELSE SOP10100.PYMTRMID END AS PYMTRMID,  CASE WHEN ReqShipDate = '01/01/1900' THEN DOCDATE ELSE ReqShipDate   END  AS DATE,  (-TRDISAMT + FRTAMNT + MISCAMNT + TAXAMNT - PYMTRCVD - DEPRECVD) * CASE WHEN SOPTYPE = 4 THEN -1 ELSE 1 END AS Amount,  (PYMTRCVD + DEPRECVD) * CASE WHEN SOPTYPE = 4 THEN -1 ELSE 1 END AS AMNTPAID,  SOP10100.DEX_ROW_ID  FROM SOP10100 INNER JOIN RM00101 ON RM00101.CUSTNMBR = SOP10100.CUSTNMBR WHERE  ((-TRDISAMT + FRTAMNT + MISCAMNT + TAXAMNT - PYMTRCVD - DEPRECVD) <> 0  OR (-TRDISAMT + FRTAMNT + MISCAMNT + TAXAMNT) <> 0)  AND (SOPTYPE >= 2 OR (SOPTYPE = 1 AND DATEDIFF(dd, GetDate(), CASE WHEN  QUOEXPDA = '01/01/1900' THEN GetDate() ELSE QUOEXPDA END ) >= 0)) UNION ALL SELECT SOP10100.CUSTNMBR, SOP10200.SOPNUMBE, SOP10200.SOPTYPE, SOP10100.DOCDATE,  CASE WHEN SOP10100.PYMTRMID = ' ' THEN RM00101.PYMTRMID ELSE SOP10100.PYMTRMID END AS PYMTRMID,  (CASE WHEN SOP10200.ReqShipDate = '01/01/1900' THEN SOP10100.DOCDATE ELSE SOP10200.ReqShipDate  END),  SOP10200.XTNDPRCE * CASE WHEN SOP10200.SOPTYPE = 4 THEN -1 ELSE 1 END,  0, SOP10200.DEX_ROW_ID  FROM SOP10200 INNER JOIN SOP10100 ON SOP10100.SOPNUMBE = SOP10200.SOPNUMBE INNER JOIN  RM00101 ON RM00101.CUSTNMBR = SOP10100.CUSTNMBR WHERE (SOP10200.SOPTYPE >= 2 OR (SOP10200.SOPTYPE = 1 AND DATEDIFF(dd, GetDate(), CASE WHEN  QUOEXPDA = '01/01/1900' THEN GetDate() ELSE QUOEXPDA END ) >= 0))     
GO
GRANT SELECT ON  [dbo].[CFM_SOPAll] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM_SOPAll] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM_SOPAll] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM_SOPAll] TO [DYNGRP]
GO
