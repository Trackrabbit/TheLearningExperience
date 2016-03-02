SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Bin_GetAvailBin]  @item_number char(30),   @location_code char(11),  @Bin char(15) output  As  if @Bin > ''  begin  if exists(select 1 from IV00112 where ITEMNMBR = @item_number and LOCNCODE =@location_code and BIN = @Bin and (QUANTITY - ATYALLOC) > 0)  return (0)  end select @Bin = REPAIRISSUESBIN from IV00102 where ITEMNMBR = @item_number and LOCNCODE = @location_code if not exists(select 1 from IV00112 where ITEMNMBR = @item_number and LOCNCODE =@location_code and BIN = @Bin and (QUANTITY - ATYALLOC) > 0)  begin  select @Bin = REPAIRISSUESBIN from IV40700 where LOCNCODE = @location_code  if not exists(select 1 from IV00112 where ITEMNMBR = @item_number and LOCNCODE =@location_code and BIN = @Bin and (QUANTITY - ATYALLOC) > 0)  select top 1 @Bin = BIN from IV00112 where ITEMNMBR = @item_number and LOCNCODE =@location_code and (QUANTITY - ATYALLOC) > 0 order by DEX_ROW_ID ASC  end select @Bin = isnull(@Bin,'')  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Bin_GetAvailBin] TO [DYNGRP]
GO
