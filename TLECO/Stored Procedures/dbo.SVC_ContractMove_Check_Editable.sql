SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_ContractMove_Check_Editable] (@UserID char(20), @Exist tinyint output) AS  select @Exist = 0 if exists(select * from SVC00670 where USERID <>  @UserID)  select @Exist = 1  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_ContractMove_Check_Editable] TO [DYNGRP]
GO
