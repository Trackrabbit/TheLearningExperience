SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTotalPurchasesMetric]   @UserDate datetime = NULL,  @I_iPeriodMonths int = NULL ,  @Vendor varchar(max)  as set nocount ON  declare @dtStart datetime,   @dtEnd datetime,  @month int,  @iterator int declare @ValuesTable table (Value nvarchar(500)) insert into @ValuesTable select * from dbo.seeSplitString(@Vendor, ',') select  @dtEnd = DATEADD(day, -DAY(@UserDate), @UserDate) select  @dtStart = DATEADD(month, -@I_iPeriodMonths, DATEADD(day, -DAY(@UserDate)+1, @UserDate))  create table #Totals(Amount numeric(19,5) not null,  MonthDate datetime not null,  Filter char(15) not null)  if @Vendor = '' begin   select  @iterator = @I_iPeriodMonths  while (@iterator >= 1)  begin  insert #Totals values(0, DATEADD(month, -@iterator, DATEADD(day, -day(@UserDate)+1, @UserDate)), '')  select @iterator = @iterator - 1  end    insert into #Totals  select sum(case DOCTYPE  when 1 then PRCHAMNT  when 4 then - PRCHAMNT  end) as Amount,  DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE) as MonthDate,  '' as Filter  from PM20000 with (NOLOCK)  where (DOCTYPE = 1 or DOCTYPE = 4) and VOIDED = 0  and (DOCDATE >= @dtStart and DOCDATE <= @dtEnd)  group by DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE)  union all  select sum(case DOCTYPE  when 1 then PRCHAMNT  when 4 then - PRCHAMNT  end) as Amount,  DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE) as MonthDate,  '' as Filter  from PM30200 with (NOLOCK)  where (DOCTYPE = 1 or DOCTYPE = 4) and VOIDED = 0  and (DOCDATE >= @dtStart and DOCDATE <= @dtEnd)  group by DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE)  end  else begin  select  @iterator = @I_iPeriodMonths  while (@iterator >= 1)  begin  insert #Totals select  0, DATEADD(month, -@iterator, DATEADD(day, -day(@UserDate)+1, @UserDate)), VendorList.Value  from @ValuesTable VendorList inner join PM00200 on PM00200.VENDORID = VendorList.Value  select @iterator = @iterator - 1  end    insert into #Totals  select sum(case DOCTYPE  when 1 then PRCHAMNT  when 4 then - PRCHAMNT  end) as Amount,  DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE) as MonthDate,  PM20000.VENDORID as Filter  from PM20000 with (NOLOCK) inner join @ValuesTable VendorList on PM20000.VENDORID = VendorList.Value  where (DOCTYPE = 1 or DOCTYPE = 4) and VOIDED = 0  and (DOCDATE >= @dtStart and DOCDATE <= @dtEnd)  group by DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE), PM20000.VENDORID   union all  select sum(case DOCTYPE  when 1 then PRCHAMNT  when 4 then - PRCHAMNT  end) as Amount,  DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE) as MonthDate,  PM30200.VENDORID as Filter  from PM30200 with (NOLOCK) inner join @ValuesTable VendorList on PM30200.VENDORID = VendorList.Value  where (DOCTYPE = 1 or DOCTYPE = 4) and VOIDED = 0  and (DOCDATE >= @dtStart and DOCDATE <= @dtEnd)  group by DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE) , PM30200.VENDORID end   select SUM(Amount) as Amount, MonthDate, Filter  from #Totals with (NOLOCK)   group by MonthDate, Filter   order by MonthDate, Filter  drop table #Totals  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetric] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetric] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetric] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetric] TO [rpt_purchasing manager]
GO
