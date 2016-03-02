SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[CFM20102] AS SELECT     RM20101.CUSTNMBR, RM20101.DOCNUMBR, RM20101.RMDTYPAL, DATEADD(dd, RM00103.AVDTPLIF, RM20101.DOCDATE) AS DUEDATE,   RM20101.DOCDATE, RM20101.ORTRXAMT * CASE WHEN RMDTYPAL = 7 THEN - 1 ELSE 1 END AS ORTRXAMT,   RM20101.CURTRXAM * CASE WHEN RMDTYPAL = 7 THEN - 1 ELSE 1 END AS CURTRXAM, RM20101.TRXSORCE AS TRXDSCRN,   RM20101.DEX_ROW_ID FROM         dbo.RM20101 INNER JOIN  dbo.RM00103 ON RM20101.CUSTNMBR = RM00103.CUSTNMBR WHERE     (RM20101.CURTRXAM > 0.00) AND (RM20101.RMDTYPAL < 7) AND (RMDTYPAL <> 2) UNION ALL SELECT     RM20401.CUSTNMBR, DOCNUMBR, 2 AS RMDTYPAL, DATEADD(dd, dbo.RM00103.AVDTPLIF, dbo.RM20401.DOCDATE) AS DUEDATE, DOCDATE,   RM20401.PAYMENT_AMOUNT AS ORTRXAMT, RM20401.PAYMENT_AMOUNT AS CURTRXAM, RM20401.SCHEDULE_NUMBER AS TRXDSCRN,   RM20401.DEX_ROW_ID FROM         dbo.RM20400 INNER JOIN  dbo.RM20401 ON RM20400.SCHEDULE_NUMBER = RM20401.SCHEDULE_NUMBER INNER JOIN  dbo.RM00103 ON RM20401.CUSTNMBR = dbo.RM00103.CUSTNMBR WHERE     (RM20400.Status = 1) AND (RM20401.Status <> 1)    
GO
GRANT SELECT ON  [dbo].[CFM20102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM20102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM20102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM20102] TO [DYNGRP]
GO
