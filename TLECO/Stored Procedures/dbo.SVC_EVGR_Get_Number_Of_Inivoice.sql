SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_EVGR_Get_Number_Of_Inivoice]  @BillType smallint,  @ContLineBillStartDate datetime,  @ContLineBillEndDate datetime,  @FrequencyQty numeric(19,2),  @Smooth tinyint,  @NumOfInvoice smallint output  AS declare @BillingMonth smallint,  @DecimalNumberOfInvoice numeric(19,2),  @TotalDays int, @TotalMonths int,  @BillStartDay smallint,  @BillEndDay smallint  select @DecimalNumberOfInvoice = case @BillType  when 1 then (DATEDIFF(dd,@ContLineBillStartDate,@ContLineBillEndDate) + 1.0) / @FrequencyQty  when 2 then (DATEDIFF(ww,@ContLineBillStartDate,dateadd(dd,1,@ContLineBillEndDate)) ) / @FrequencyQty  when 3 then (DATEDIFF(mm,@ContLineBillStartDate,dateadd(dd,1,@ContLineBillEndDate)) ) / @FrequencyQty  when 4 then (DATEDIFF(dd,@ContLineBillStartDate,dateadd(dd,1,@ContLineBillEndDate))/365.0 ) / @FrequencyQty  end   select @NumOfInvoice = ceiling(@DecimalNumberOfInvoice)    select @TotalDays = DATEDIFF(dd,@ContLineBillStartDate,@ContLineBillEndDate) + 1,  @TotalMonths = DATEDIFF(mm,@ContLineBillStartDate,@ContLineBillEndDate),  @BillStartDay = DATEPART(dd,@ContLineBillStartDate),  @BillEndDay = DATEPART(dd,@ContLineBillEndDate)   if @BillType = 2 and (@NumOfInvoice *  @FrequencyQty  * 7) < @TotalDays   select @NumOfInvoice = @NumOfInvoice + 1   if @BillStartDay > 1 and @BillType = 3 and (@NumOfInvoice *  @FrequencyQty * 31) < @TotalDays and @Smooth = 0  select @NumOfInvoice = @NumOfInvoice + 1  if @BillType = 4 and (@NumOfInvoice *  @FrequencyQty * 12) < @TotalMonths and @Smooth = 0  select @NumOfInvoice = @NumOfInvoice + 1  select @NumOfInvoice = isnull(@NumOfInvoice,1)  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_EVGR_Get_Number_Of_Inivoice] TO [DYNGRP]
GO
