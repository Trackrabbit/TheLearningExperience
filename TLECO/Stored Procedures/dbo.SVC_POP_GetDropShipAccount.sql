SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_POP_GetDropShipAccount](@Customer char(15),  @ItemNumber char(30), @AccountIndex int output) As declare @UseAccountFrom smallint  select @UseAccountFrom = USEACFRM from SOP40100  if @UseAccountFrom = 1  select @AccountIndex = RMCOSACC from RM00101 where CUSTNMBR = @Customer else  select @AccountIndex = IVCOGSIX from IV00101 where ITEMNMBR = @ItemNumber  if @AccountIndex = 0 or @AccountIndex is null   select @AccountIndex = ACTINDX from SY01100 where SERIES=5 and SEQNUMBR = 1100  return 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_POP_GetDropShipAccount] TO [DYNGRP]
GO
