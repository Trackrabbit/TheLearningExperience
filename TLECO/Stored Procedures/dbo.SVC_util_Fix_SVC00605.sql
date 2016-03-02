SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_Fix_SVC00605] AS begin transaction   update SVC00605 set CONSTS =4   where CONTNBR in (select CONTNBR from SVC00600 where CONSTS = 4 )  if @@error <> 0 goto badentry COMMIT TRANSACTION return(0) badentry:  rollback transaction  return (99)    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_Fix_SVC00605] TO [DYNGRP]
GO
