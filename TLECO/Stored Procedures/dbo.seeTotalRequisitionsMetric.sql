SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTotalRequisitionsMetric]   @UserDate datetime = NULL,  @I_iPeriodMonths int = NULL ,  @Vendor varchar(max)  as set nocount ON  declare @dtStart datetime,   @dtEnd datetime,  @month int,  @iterator int declare @ValuesTable table (Value nvarchar(500)) insert into @ValuesTable select * from dbo.seeSplitString(@Vendor, ',')  select @UserDate = DATEADD(D, 0, DATEDIFF(D, 0, @UserDate)) select  @dtEnd = DATEADD(day, -DAY(@UserDate), @UserDate) select  @dtStart = DATEADD(month, -@I_iPeriodMonths, DATEADD(day, -DAY(@UserDate)+1, @UserDate))  create table #Totals(Amount numeric(19,5) not null,  MonthDate datetime not null,  Filter char(15) not null)  if (@Vendor = '') or ISNULL(@Vendor,'0') = '0' begin   select  @iterator = @I_iPeriodMonths  while (@iterator >= 1)  begin  insert #Totals values(0, DATEADD(month, -@iterator, DATEADD(day, -day(@UserDate)+1, @UserDate)), '')  select @iterator = @iterator - 1  end    insert into #Totals   select SUM(EXTDCOST) + SUM(FRTAMNT) + SUM(TAXAMNT) as Amount,  DATEADD(DAY, -DAY(REQDATE)+1, REQDATE) as MonthDate,  '' as Filter  from POP10210  where REQDATE between @dtStart and @dtEnd  group by DATEADD(DAY, -DAY(REQDATE)+1, REQDATE)  union all  select SUM(EXTDCOST) + SUM(FRTAMNT) + SUM(TAXAMNT) as Amount,  DATEADD(DAY, -DAY(REQDATE)+1, REQDATE) as MonthDate,  '' as Filter  from POP30210  where REQDATE between @dtStart and @dtEnd  group by DATEADD(DAY, -DAY(REQDATE)+1, REQDATE)  end  else begin  select  @iterator = @I_iPeriodMonths  while (@iterator >= 1)  begin  insert #Totals select  0, DATEADD(month, -@iterator, DATEADD(day, -day(@UserDate)+1, @UserDate)), VendorList.Value  from @ValuesTable VendorList inner join PM00200 on PM00200.VENDORID = VendorList.Value  select @iterator = @iterator - 1  end    insert into #Totals   select SUM(EXTDCOST) + SUM(FRTAMNT) + SUM(TAXAMNT) as Amount,  DATEADD(DAY, -DAY(REQDATE)+1, REQDATE) as MonthDate,  POP10210.VENDORID as Filter  from POP10210  where REQDATE between @dtStart and @dtEnd  group by DATEADD(DAY, -DAY(REQDATE)+1, REQDATE), POP10210.VENDORID  union all  select SUM(EXTDCOST) + SUM(FRTAMNT) + SUM(TAXAMNT) as Amount,  DATEADD(DAY, -DAY(REQDATE)+1, REQDATE) as MonthDate,  POP30210.VENDORID as Filter  from POP30210  where REQDATE between @dtStart and @dtEnd  group by DATEADD(DAY, -DAY(REQDATE)+1, REQDATE), POP30210.VENDORID  end  select SUM(Amount) as Amount, MonthDate, Filter  from #Totals with (NOLOCK)  group by MonthDate, Filter  order by MonthDate, Filter  drop table #Totals  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeTotalRequisitionsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalRequisitionsMetric] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalRequisitionsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeTotalRequisitionsMetric] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalRequisitionsMetric] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[seeTotalRequisitionsMetric] TO [rpt_purchasing manager]
GO
