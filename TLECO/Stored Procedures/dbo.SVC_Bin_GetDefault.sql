SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Bin_GetDefault] (  @item_number char(30),   @location_code char(11),   @Type char(1),  @Bin char(15) output ) As  if @Type = 'R'  select @Bin = SORETURNBIN from IV00102 where ITEMNMBR = @item_number and LOCNCODE = @location_code else if @Type = 'I'  select @Bin = SOFULFILLMENTBIN from IV00102 where ITEMNMBR = @item_number and LOCNCODE = @location_code else if @Type = 'D'  select @Bin = REPAIRISSUESBIN from IV00102 where ITEMNMBR = @item_number and LOCNCODE = @location_code if @Bin = '' or @Bin is null  begin  if @Type = 'R'  select @Bin = SORETURNBIN from IV40700 where LOCNCODE = @location_code  if @Type = 'I'  select @Bin = SOFULFILLMENTBIN from IV40700 where LOCNCODE = @location_code  if @Type = 'D'  select @Bin = REPAIRISSUESBIN from IV40700 where LOCNCODE = @location_code  end select @Bin = isnull(@Bin,'')  return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Bin_GetDefault] TO [DYNGRP]
GO
