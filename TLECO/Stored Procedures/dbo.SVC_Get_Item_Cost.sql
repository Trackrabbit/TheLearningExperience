SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Get_Item_Cost](  @ItemNumber char(30),  @UofM char(8),  @Qty numeric(19,5),  @VendorID char(15),  @CostTotal numeric(19,5) output  ) as  Declare @UseStandardCost int,  @PurchasingUofM char(8),  @BaseUofM char(8),  @FactorEnteredtoBaseUofM numeric(19,5),  @FactorBasetoPurchUofM numeric(19,5),  @UofMSchedule char(10),  @L_QuantityOrdered numeric(19,5),  @L_ExpectedUnitCost numeric(19,5),  @L_PriceSchedule char(15) declare @UsePOP smallint  select @UsePOP = Use_POP from SVC00998 select @UseStandardCost = 0   select @L_ExpectedUnitCost = CASE  WHEN @UseStandardCost = 1 THEN STNDCOST  ELSE CURRCOST  END,  @UofMSchedule = UOMSCHDL,  @PurchasingUofM = PRCHSUOM   from IV00101  where ITEMNMBR = @ItemNumber  if @PurchasingUofM ='' or @PurchasingUofM is null   select @PurchasingUofM = @UofM   select @BaseUofM = BASEUOFM  from IV40201  where @UofMSchedule = UOMSCHDL   select @FactorEnteredtoBaseUofM = QTYBSUOM  from IV40202  where @UofMSchedule = UOMSCHDL and @UofM = UOFM   select @FactorBasetoPurchUofM = 1/QTYBSUOM  from IV40202  where @UofMSchedule = UOMSCHDL and @PurchasingUofM = UOFM   select @L_QuantityOrdered = @Qty * @FactorEnteredtoBaseUofM * @FactorBasetoPurchUofM select @CostTotal = @L_QuantityOrdered * @L_ExpectedUnitCost  return 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Item_Cost] TO [DYNGRP]
GO
