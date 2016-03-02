SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_TA_Get_Item_Price](  @ItemNumber char(30),  @PriceLevel char(11),  @UOM char(9) output,  @ListPrice numeric(19,2) output,  @ItemCost numeric(19,2) output) As declare @Curr char(15),@Price numeric(19,2),  @ItemPriceLevel char(11),@PriceMethod smallint,@UOMSchedule char(11)  select @UOMSchedule=UOMSCHDL,@ItemPriceLevel = PRCLEVEL,  @PriceMethod = PRICMTHD,@ItemCost=CURRCOST  from IV00101 where ITEMNMBR = @ItemNumber select @UOM = BASEUOFM from IV40201 where UOMSCHDL = @UOMSchedule select @PriceLevel = isnull(@PriceLevel,@ItemPriceLevel) select @Curr=FUNLCURR from MC40000 if @Curr > '' and @PriceLevel > ''   exec SVC_Obj_ItemCostPrice @ItemNumber, @PriceLevel , 1, @UOM output, @ListPrice output, @ItemCost output  if @ListPrice = 0 or @ListPrice is null  select @ListPrice = LISTPRCE from IV00105 where ITEMNMBR = @ItemNumber and CURNCYID = @Curr  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_TA_Get_Item_Price] TO [DYNGRP]
GO
