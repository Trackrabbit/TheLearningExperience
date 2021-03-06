SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[CFM20000] AS SELECT     VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, CURTRXAM, DUEDATE, DOCAMNT, VCHRNMBR, TRXSORCE, DEX_ROW_ID FROM         PM20000 WHERE     (DOCTYPE < 5) UNION ALL SELECT     PM20401.VENDORID, 7 AS DOCTYPE, DOCDATE, PM20401.SCHEDULE_NUMBER AS DOCNUMBR, PM20401.PAYMENT_AMOUNT AS CURTRXAM,   DUEDATE, PM20401.PAYMENT_AMOUNT AS DOCAMNT, VCHRNMBR, PM20401.SCHEDULE_NUMBER AS TRXSORCE, PM20401.DEX_ROW_ID FROM         PM20400 INNER JOIN  PM20401 ON PM20400.SCHEDULE_NUMBER = PM20401.SCHEDULE_NUMBER WHERE     (PM20400.Status = 1) AND (PM20401.Status <> 1)    
GO
GRANT SELECT ON  [dbo].[CFM20000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM20000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM20000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM20000] TO [DYNGRP]
GO
