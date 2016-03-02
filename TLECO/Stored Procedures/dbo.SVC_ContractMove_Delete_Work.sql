SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_ContractMove_Delete_Work] (@UserID char(20)) AS  delete from SVC00670 where USERID =  @UserID  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_ContractMove_Delete_Work] TO [DYNGRP]
GO
