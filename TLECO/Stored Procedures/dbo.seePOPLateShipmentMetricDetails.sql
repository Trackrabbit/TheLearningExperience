SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seePOPLateShipmentMetricDetails]   @I_dUserDate datetime = NULL,   @Periods int   = NULL,   @Vendor varchar(max) as DECLARE @StartDate datetime DECLARE @EndDate datetime declare @ValuesTable table (Value nvarchar(500)) insert into @ValuesTable select * from dbo.seeSplitString(@Vendor, ',')  select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate) select  @EndDate = DATEADD(day, -DAY(@I_dUserDate), @I_dUserDate) select  @StartDate = DATEADD(month, -@Periods, DATEADD(day, -DAY(@I_dUserDate)+1, @I_dUserDate)) if @StartDate is not null and @EndDate is not null begin  if (@Vendor = '')  begin   select distinct    Lines.*,    DATEDIFF(day, Lines.[Promised Ship Date], Lines.[Last Receipt Date]) as DaysLate   from PurchaseLineItems Lines   where     Lines.[Last Receipt Date] > Lines.[Promised Ship Date] and     Lines.[Promised Ship Date] between @StartDate and @EndDate  end  else  begin   select distinct    Lines.*,    DATEDIFF(day, Lines.[Promised Ship Date], Lines.[Last Receipt Date]) as DaysLate   from PurchaseLineItems Lines inner join @ValuesTable VendorList  on Lines.[Vendor ID] = VendorList.Value   where     Lines.[Last Receipt Date] > Lines.[Promised Ship Date] and     Lines.[Promised Ship Date] between @StartDate and @EndDate  end end else begin  if (@Vendor = '')  begin   select distinct    Lines.*,    DATEDIFF(day, Lines.[Promised Ship Date], Lines.[Last Receipt Date]) as DaysLate   from PurchaseLineItems Lines   where     Lines.[Last Receipt Date] > Lines.[Promised Ship Date]  end  else  begin   select distinct    Lines.*,    DATEDIFF(day, Lines.[Promised Ship Date], Lines.[Last Receipt Date]) as DaysLate   from PurchaseLineItems Lines inner join @ValuesTable VendorList  on Lines.[Vendor ID] = VendorList.Value   where     Lines.[Last Receipt Date] > Lines.[Promised Ship Date]  end end          
GO
GRANT EXECUTE ON  [dbo].[seePOPLateShipmentMetricDetails] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePOPLateShipmentMetricDetails] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seePOPLateShipmentMetricDetails] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seePOPLateShipmentMetricDetails] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seePOPLateShipmentMetricDetails] TO [rpt_power user]
GO
