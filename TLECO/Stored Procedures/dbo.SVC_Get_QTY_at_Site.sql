SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Get_QTY_at_Site](@ItemNumber char(31),   @LocationCode char(11),   @UOM char(8),  @QTY numeric(19,5) output) as declare @QtyInBase numeric(19,5) exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  if @QtyInBase  = 0 select @QtyInBase = 1.0 select @QTY = (QTYONHND - ATYALLOC) / @QtyInBase  from IV00102  where ITEMNMBR = @ItemNumber and  LOCNCODE = @LocationCode and  RCRDTYPE = 2    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_QTY_at_Site] TO [DYNGRP]
GO
