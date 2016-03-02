SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_Fix_SVC00220] AS begin transaction  update SVC00220 set SRVRECTYPE = 3  if @@error <> 0 goto badentry delete from SVC00220 where CALLNBR not in (select CALLNBR from SVC00200 where SRVRECTYPE = 3)  if @@error <> 0 goto badentry COMMIT TRANSACTION return(0) badentry:  rollback transaction  return (99)    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_Fix_SVC00220] TO [DYNGRP]
GO
