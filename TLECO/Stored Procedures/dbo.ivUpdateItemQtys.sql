SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ivUpdateItemQtys]  @iIncrease tinyint = NULL, @iItem char(31) = NULL, @iLocation char(11) = NULL, @iQtyAllocated numeric(19,5)=NULL, @iQtySoldOrReturned numeric(19,5)=NULL, @iQtyDamaged numeric(19,5)=NULL, @iQtyInService numeric(19,5)=NULL, @iQtyInUse numeric(19,5)=NULL, @iQtyOnHand numeric(19,5)=NULL, @iQtyReturned numeric(19,5)=NULL, @oErrorState int=NULL output AS declare @tTransaction tinyint  set nocount on select @oErrorState = 0  if @iIncrease = NULL or @iItem = NULL or @iLocation = NULL or @iQtyAllocated = NULL or @iQtySoldOrReturned = NULL or @iQtyDamaged = NULL or @iQtyInService = NULL or   @iQtyInUse = NULL or @iQtyOnHand  = NULL or @iQtyReturned = NULL or @iQtySoldOrReturned = NULL begin  select @oErrorState = 21036 end  if @@trancount = 0 begin   select @tTransaction = 1   begin transaction  end   if @iIncrease > 0  begin   UPDATE .IV00102 SET QTYDMGED = QTYDMGED + @iQtyDamaged,   QTYINSVC = QTYINSVC + @iQtyInService,  QTYINUSE = QTYINUSE + @iQtyInUse,  QTYONHND = QTYONHND + @iQtyOnHand,  QTYRTRND = QTYRTRND + @iQtyReturned,  QTYSOLD  = QTYSOLD  - @iQtySoldOrReturned  WHERE ITEMNMBR = @iItem AND (RCRDTYPE = 1 OR (LOCNCODE = @iLocation AND RCRDTYPE = 2) ) end else begin  UPDATE .IV00102 SET QTYDMGED = QTYDMGED - @iQtyDamaged,   QTYINSVC = QTYINSVC - @iQtyInService,  QTYINUSE = QTYINUSE - @iQtyInUse,  QTYONHND = QTYONHND - @iQtyOnHand,  QTYRTRND = QTYRTRND - @iQtyReturned,  ATYALLOC = ATYALLOC - @iQtyAllocated,  QTYSOLD  = QTYSOLD  + @iQtySoldOrReturned  WHERE ITEMNMBR = @iItem AND (RCRDTYPE = 1 OR (LOCNCODE = @iLocation AND RCRDTYPE = 2) ) end  if @tTransaction = 1   commit transaction  return   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[ivUpdateItemQtys] TO [DYNGRP]
GO
