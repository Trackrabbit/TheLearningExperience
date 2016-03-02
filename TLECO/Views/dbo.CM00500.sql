SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[CM00500] (CHEKBKID, DSCRIPTN, CURNCYID, INACTIVE, CURRBLNC, BANKID, CMUSRDF1, CMUSRDF2,  Last_Reconciled_Balance, Last_Reconciled_Date,CURRNIDX, DEX_ROW_ID)   AS    SELECT CM00100.CHEKBKID, CM00100.DSCRIPTN, CM00100.CURNCYID, CM00100.INACTIVE, CM00100.CURRBLNC,  CM00100.BANKID, CM00100.CMUSRDF1, CM00100.CMUSRDF2, CM00100.Last_Reconciled_Balance, CM00100.Last_Reconciled_Date,  DYNAMICS..MC40200.CURRNIDX, CM00100.DEX_ROW_ID   FROM CM00100 LEFT OUTER JOIN DYNAMICS..MC40200 ON  ( CM00100.CURNCYID = DYNAMICS..MC40200.CURNCYID )     
GO
GRANT SELECT ON  [dbo].[CM00500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM00500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM00500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM00500] TO [DYNGRP]
GO