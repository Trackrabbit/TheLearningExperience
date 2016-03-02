SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Allocate_Quantity](@ItemNumber char(31),@LocationCode char(11),@Quantity numeric(19,5)) as update IV00102 set ATYALLOC = ATYALLOC + @Quantity  where ITEMNMBR = @ItemNumber and  LOCNCODE = @LocationCode and  RCRDTYPE = 2 update IV00102 set ATYALLOC = ATYALLOC + @Quantity  where ITEMNMBR = @ItemNumber and  RCRDTYPE = 1    
GO
GRANT EXECUTE ON  [dbo].[SVC_Allocate_Quantity] TO [DYNGRP]
GO
