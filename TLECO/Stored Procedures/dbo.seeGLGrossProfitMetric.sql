SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLGrossProfitMetric]  @I_dUserDate datetime = NULL,  @I_iPeriodMonths int   = NULL as  declare  @iterator int,    @startDate datetime,   @endDate datetime   select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select  @endDate = @I_dUserDate  select  @startDate = DATEADD(month, -(@I_iPeriodMonths-1), DATEADD(day, -DAY(@I_dUserDate)+1, @I_dUserDate))  create table #ProfitCounts (GrossProfit numeric(19, 5) not null,   MonthDate datetime not null) select  @iterator = @I_iPeriodMonths-1 insert #ProfitCounts values(0, DATEADD(day, -day(@I_dUserDate)+1, @I_dUserDate))  while (@iterator >= 1) begin  insert #ProfitCounts values(0, DATEADD(month, -@iterator, DATEADD(day, -day(@I_dUserDate)+1, @I_dUserDate)))  select @iterator = @iterator - 1 end  insert #ProfitCounts  (GrossProfit,  MonthDate) select  sum (t.CRDTAMNT - t.DEBITAMT)as GrossProfit,  DATEADD(day, -DAY(t.TRXDATE)+1, t.TRXDATE) as MonthDate from  GL20000 as t with (NOLOCK) join  GL00100 as m with (NOLOCK) on  t.ACTINDX = m.ACTINDX where  (m.ACCATNUM = 31 or m.ACCATNUM = 32 or m.ACCATNUM = 33) and  (t.TRXDATE >= @startDate and t.TRXDATE <= @endDate) group by  t.TRXDATE  select * from #ProfitCounts  drop table #ProfitCounts    
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMetric] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMetric] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMetric] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitMetric] TO [rpt_executive]
GO
