SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[SVC_Get_QtyInBase] (  @Item char(31),  @UOM char(8),  @Type smallint,    @QtyInBase numeric(19,5) output ) as declare @UOMSchedule char(11),@BaseUOM char(8) select @UOMSchedule=UOMSCHDL,@BaseUOM = SELNGUOM from IV00101 where ITEMNMBR = @Item select @BaseUOM = BASEUOFM from IV40201 where UOMSCHDL = @UOMSchedule select @QtyInBase = QTYBSUOM from IV40202 where   UOMSCHDL = @UOMSchedule and UOFM = @UOM and EQUIVUOM = @BaseUOM if @QtyInBase = 0.0 or @QtyInBase is null  select @QtyInBase = 1.0 return   
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_QtyInBase] TO [DYNGRP]
GO
