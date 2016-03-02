SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[CFM10302] AS SELECT RM10301.CUSTNMBR, RM10301.DOCNUMBR, RM10301.RMDTYPAL, DATEADD(dd, RM00103.AVDTPLIF, RM10301.DOCDATE) AS DUEDATE, RM10301.DOCDATE, RM10301.DOCAMNT, RM10301.ACCTAMNT, RM10301.DOCDESCR AS TRXDSCRN, RM10301.DEX_ROW_ID FROM RM10301 INNER JOIN RM00103 ON RM10301.CUSTNMBR = RM00103.CUSTNMBR WHERE (RM10301.ACCTAMNT > 0.00) AND (RM10301.RMDTYPAL < 7) AND (RM10301.PSTGSTUS <> 40)    
GO
GRANT SELECT ON  [dbo].[CFM10302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM10302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM10302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM10302] TO [DYNGRP]
GO