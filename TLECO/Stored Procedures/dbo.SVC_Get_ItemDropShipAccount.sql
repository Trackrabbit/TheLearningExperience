SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_ItemDropShipAccount]  @ItemNumber char(31),  @AccountIndex integer OUTPUT  AS declare @InvAccount integer  select @AccountIndex = DPSHPIDX, @InvAccount = IVIVINDX from IV00101 where ITEMNMBR = @ItemNumber if @AccountIndex = 0   select @AccountIndex = ACTINDX from SY01100 where SERIES = 5 and SEQNUMBR = 1100 if @AccountIndex = 0   select @AccountIndex = @InvAccount return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_ItemDropShipAccount] TO [DYNGRP]
GO
