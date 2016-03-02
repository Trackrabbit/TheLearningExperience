SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_ExtPricing_GetPrice] ( @iType char(1),  @ItemNumber char(30),  @PriceLevel char(11),  @CustomerNumber char(15),  @QTY numeric(19,5),  @CurrencyID char(16),  @UOM char(9) output,  @UnitPrice numeric(19,5) output,  @UnitCost numeric(19,5) output) AS  declare @DBName CHAR(10), @CompanyID SMALLINT, @ExtOption Smallint  declare @piST_DorP char(1),  @piDA_Date datetime,  @piIN_GetPromotion integer,  @poIN_PromFound integer ,  @poIN_PromType integer ,  @poDE_PromPrice decimal(19,5) ,  @poST_SchemeCode char(15) ,  @poST_SchemeItemType char(1) ,  @poST_SchemeGroup char(31) ,  @poDE_QtyFrom decimal (19,5) ,  @poDE_QtyTo decimal (19,5) ,  @poIN_CurrPriceFound integer , @Description char(50) ,  @StartDate datetime ,  @EndDate datetime ,  @QuantityFree decimal(19,5), @PriceLevelPercent decimal (19,5), @QuantityFrom decimal(19,5),  @QuantityTo decimal(19,5) , @PriceSheetID char(15)  SELECT @DBName = db_name() SELECT @CompanyID = CMPANYID FROM DYNAMICS..SY01500 WHERE INTERID = @DBName select @ExtOption = PRICEOPT from DYNAMICS..SY05501 WHERE CMPANYID = @CompanyID  if @ExtOption = 0  begin  exec SVC_Get_Item_CostPrice @ItemNumber , @PriceLevel , @QTY , @UOM output, @UnitPrice output, @UnitCost output end else  begin  select @piST_DorP = 'C',   @piDA_Date = CONVERT(char(10),GETDATE(),102) + ' 00:00:00' ,  @piIN_GetPromotion = 0,  @UnitCost = CURRCOST from IV00101 where ITEMNMBR = @ItemNumber  exec sopExtPricingGetPrice  @piST_DorP,   @CustomerNumber ,   @ItemNumber ,   @UOM ,   @piDA_Date ,   @QTY ,   @piIN_GetPromotion ,   @CurrencyID ,   @UnitPrice OUTPUT,   @poIN_PromFound  OUTPUT,   @poIN_PromType  OUTPUT,   @poDE_PromPrice  OUTPUT,   @poST_SchemeCode  OUTPUT,   @poST_SchemeItemType  OUTPUT,   @poST_SchemeGroup  OUTPUT,   @poDE_QtyFrom  OUTPUT,   @poDE_QtyTo  OUTPUT,   @poIN_CurrPriceFound  OUTPUT,  @Description  OUTPUT,   @StartDate  OUTPUT,   @EndDate  OUTPUT,   @QuantityFree  OUTPUT ,  @QuantityFrom OUTPUT,   @QuantityTo OUTPUT ,  @PriceSheetID OUTPUT   if exists(select * from SVC00110 where PRICELVL = @PriceLevel) and @iType > ''  begin  if @iType = 'R'  select @PriceLevelPercent = SVC_Return_Percent from SVC00110 where PRICELVL = @PriceLevel  else if @iType = 'L'  select @PriceLevelPercent = SVC_Standard_Percent from SVC00110 where PRICELVL = @PriceLevel  else if @iType = 'V'  select @PriceLevelPercent = SVC_Overtime_Percent from SVC00110 where PRICELVL = @PriceLevel  else if @iType = 'D'  select @PriceLevelPercent = SVC_Double_Percent from SVC00110 where PRICELVL = @PriceLevel  else if @iType = 'H'  select @PriceLevelPercent = SVC_Hotline_Percent from SVC00110 where PRICELVL = @PriceLevel  else if @iType = 'T'  select @PriceLevelPercent = SVC_Travel_Percent from SVC00110 where PRICELVL = @PriceLevel  select @UnitPrice = @UnitPrice * @PriceLevelPercent / 100.0  end end  if @UnitPrice is null  select @UnitPrice = 0  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_ExtPricing_GetPrice] TO [DYNGRP]
GO
