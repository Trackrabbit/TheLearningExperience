SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[CFM10301] AS SELECT CUSTNMBR, DOCNUMBR, RMDTYPAL, DUEDATE, DOCDATE, DOCAMNT, ACCTAMNT, DOCDESCR AS TRXDSCRN, DEX_ROW_ID FROM RM10301 WHERE (ACCTAMNT > 0.00) AND (RMDTYPAL < 7) AND (RM10301.PSTGSTUS <> 40)    
GO
GRANT SELECT ON  [dbo].[CFM10301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM10301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM10301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM10301] TO [DYNGRP]
GO
