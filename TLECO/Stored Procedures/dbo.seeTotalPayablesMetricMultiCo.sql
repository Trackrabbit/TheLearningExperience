SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTotalPayablesMetricMultiCo]   @UserDate datetime = NULL,  @I_iPeriodMonths int = NULL   as set nocount ON  declare @dtStart datetime,   @dtEnd datetime,  @month int,  @iterator int  select  @dtEnd = DATEADD(day, -DAY(@UserDate), @UserDate) select  @dtStart = DATEADD(month, -@I_iPeriodMonths, DATEADD(day, -DAY(@UserDate)+1, @UserDate))  create table #Totals(Amount numeric(19,5),  MonthDate datetime not null) select  @iterator = @I_iPeriodMonths while (@iterator >= 1) begin  insert #Totals values(0, DATEADD(month, -@iterator, DATEADD(day, -day(@UserDate)+1, @UserDate)))  select @iterator = @iterator - 1 end   insert into #Totals   select sum(t.CRDTAMNT - t.DEBITAMT) as Amount,   DATEADD(DAY, -DAY(t.TRXDATE)+1, t.TRXDATE) as MonthDate   from GL20000 as t with (NOLOCK) join GL00100 as m with (NOLOCK)  on t.ACTINDX = m.ACTINDX   where (m.ACCATNUM = 13) and (t.TRXDATE >= @dtStart and t.TRXDATE <= @dtEnd)  group by DATEADD(DAY, -DAY(t.TRXDATE)+1, t.TRXDATE)    select db_name() as CoID, Amount, MonthDate from #Totals with (NOLOCK) order by MonthDate  drop table #Totals  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeTotalPayablesMetricMultiCo] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPayablesMetricMultiCo] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPayablesMetricMultiCo] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPayablesMetricMultiCo] TO [rpt_executive]
GO
