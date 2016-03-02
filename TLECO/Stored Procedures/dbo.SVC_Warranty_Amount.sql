SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Warranty_Amount](@ItemNumber char(31),   @EquipmentID integer,  @StartDate datetime,  @EndDate datetime,  @AnnualAmount numeric(19,5),   @WarrantyAmount numeric(19,5) output,  @OutStartDate datetime output) as declare @WarrantyCode char(11) declare @WarrantyDays integer declare @Years integer declare @Months integer declare @Days integer declare @startwardate datetime declare @endwardate datetime select @OutStartDate = @StartDate if @EquipmentID <> 0   BEGIN  select @WarrantyCode = WARRCDE,  @startwardate = WARRSTART,  @endwardate = WARREND  from SVC00300 WITH (NOLOCK)  where EQUIPID = @EquipmentID  if not (@startwardate is null) or @startwardate <> '01/01/1900 00:00:00'  BEGIN  if @StartDate >= @startwardate and @StartDate < @endwardate  BEGIN  if @EndDate >= @endwardate  select @OutStartDate = @endwardate  else  select @OutStartDate = dateadd(day,1,@EndDate)  END  END  END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Warranty_Amount] TO [DYNGRP]
GO
