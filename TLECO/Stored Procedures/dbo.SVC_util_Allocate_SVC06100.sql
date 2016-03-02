SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_util_Allocate_SVC06100] as declare @WONumber char(11) declare @RMA char(15) declare @Bin char(21) declare @Line numeric(19,5) declare @Item char(31) declare @Serial char(21) declare @LocationCode char(11) declare @Qty numeric(19,5) declare @CustomerOwned tinyint  declare WO_Item cursor for select WORKORDNUM, LOCNCODE, IBITEMNUM, IBSERIAL, BIN,  QUANTITY, RETDOCID, LNSEQNBR from SVC06100 where WORECTYPE = 2 and CUSTOWN = 0  open WO_Item   fetch next from WO_Item into @WONumber, @LocationCode, @Item, @Serial, @Bin, @Qty, @RMA, @Line  while @@FETCH_STATUS = 0  Begin  if (@RMA > '' and (select Received from SVC05200 where RETDOCID = @RMA and Return_Record_Type = 1 and LNSEQNBR = @Line) = 1)  or @RMA is null or @RMA = ''  begin  exec SVC_Allocate_Quantity @Item, @LocationCode, @Qty  if @Serial > ''  update IV00200 set SERLNSLD  = 1 where ITEMNMBR = @Item and SERLNMBR = @Serial  else if (select ENABLEMULTIBIN from IV40100) = 1  update IV00112 set ATYALLOC = ATYALLOC + @Qty where  ITEMNMBR = @Item and LOCNCODE =@LocationCode and BIN = @Bin and QTYTYPE = 1  end   fetch next from WO_Item into @WONumber, @LocationCode, @Item, @Serial, @Bin, @Qty, @RMA, @Line  End  deallocate WO_Item   return    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_Allocate_SVC06100] TO [DYNGRP]
GO
