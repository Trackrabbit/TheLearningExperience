SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTotalPurchasesMetricMultiCo]   @UserDate datetime = NULL,  @I_iPeriodMonths int = NULL   as set nocount ON  declare @dtStart datetime,   @dtEnd datetime,  @month int,  @iterator int  select  @dtEnd = DATEADD(day, -DAY(@UserDate), @UserDate) select  @dtStart = DATEADD(month, -@I_iPeriodMonths, DATEADD(day, -DAY(@UserDate)+1, @UserDate))  create table #Totals(Amount numeric(19,5) not null,  MonthDate datetime not null) select  @iterator = @I_iPeriodMonths while (@iterator >= 1) begin  insert #Totals values(0, DATEADD(month, -@iterator, DATEADD(day, -day(@UserDate)+1, @UserDate)))  select @iterator = @iterator - 1 end   insert into #Totals select sum(case DOCTYPE  when 1 then PRCHAMNT  when 4 then - PRCHAMNT  end) as Amount,  DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE) as MonthDate from PM20000 with (NOLOCK) where (DOCTYPE = 1 or DOCTYPE = 4) and VOIDED = 0  and (DOCDATE >= @dtStart and DOCDATE <= @dtEnd) group by DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE) union all select sum(case DOCTYPE  when 1 then PRCHAMNT  when 4 then - PRCHAMNT  end) as Amount,  DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE) as MonthDate from PM30200 with (NOLOCK) where (DOCTYPE = 1 or DOCTYPE = 4) and VOIDED = 0  and (DOCDATE >= @dtStart and DOCDATE <= @dtEnd) group by DATEADD(DAY, -DAY(DOCDATE)+1, DOCDATE)    select db_name() as CoID, Amount, MonthDate from #Totals with (NOLOCK) order by MonthDate  drop table #Totals  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetricMultiCo] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetricMultiCo] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetricMultiCo] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetricMultiCo] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetricMultiCo] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetricMultiCo] TO [rpt_purchasing manager]
GO
