SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Transfer_Table] (@TransferNumber char(15),  @TableType smallint output) As if (exists(select * from SVC00700 where ORDDOCID = @TransferNumber))  select @TableType = 1 else if (exists(select * from SVC30700 where ORDDOCID = @TransferNumber))  select @TableType = 2 else  select @TableType = 0  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Transfer_Table] TO [DYNGRP]
GO
