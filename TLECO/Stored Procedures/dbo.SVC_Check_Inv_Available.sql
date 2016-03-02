SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_Inv_Available] (  @USERID char(15),  @LocationCode char(11),  @ItemNumber char(31),  @Qty numeric(19,5) OUTPUT ) As set nocount on declare @TransQty numeric(19,5) declare @UOM char(9),@QtyInBase numeric(19,5)  declare Inv_Req_Avail cursor for select TRNSFQTY,UOFM from SVC00710   where TRNSFLOC = @LocationCode and ITEMNMBR = @ItemNumber and TRNFLAG = 1 select @Qty = 0.0 open Inv_Req_Avail Fetch Next from Inv_Req_Avail into @TransQty,@UOM  while @@FETCH_STATUS = 0  BEGIN  exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @Qty = @Qty + @TransQty * @QtyInBase  Fetch Next from Inv_Req_Avail into @TransQty,@UOM  END deallocate Inv_Req_Avail set nocount off return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Inv_Available] TO [DYNGRP]
GO
