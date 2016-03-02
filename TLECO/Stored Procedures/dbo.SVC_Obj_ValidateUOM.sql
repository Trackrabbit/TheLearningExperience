SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Obj_ValidateUOM] ( @ItemNumber char(30), @UOM char(9), @Valid tinyint output ) As declare @UOMSchedule char(11), @ItemPriceLevel char(11)  select @UOMSchedule = UOMSCHDL from IV00101 where ITEMNMBR = @ItemNumber if exists(select * from IV40202 where UOMSCHDL = @UOMSchedule and UOFM = @UOM)  select @Valid = 1 else  select @Valid = 0  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Obj_ValidateUOM] TO [DYNGRP]
GO
