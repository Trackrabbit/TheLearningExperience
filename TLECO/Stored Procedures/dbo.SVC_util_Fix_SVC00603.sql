SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_Fix_SVC00603] AS  update SVC00603 with (rowlock)  set PSTDAMNT = DOCAMNT-SVC_Invoice_Credit_Amoun - DSCDLRAM,  ORIGPSTDAMNT = ORDOCAMT -OrigInvCreditAmt - ORDDLRAT where  CONSTS = 2 and POSTED = 1  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_Fix_SVC00603] TO [DYNGRP]
GO