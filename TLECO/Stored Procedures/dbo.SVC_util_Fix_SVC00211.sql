SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_Fix_SVC00211] AS begin transaction  update SVC00211 set SRVRECTYPE = 3 where CALLNBR not in (select CALLNBR from SVC00200 where SRVRECTYPE = 2)  if @@error <> 0 goto badentry COMMIT TRANSACTION return(0) badentry:  rollback transaction  return (99)    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_Fix_SVC00211] TO [DYNGRP]
GO
