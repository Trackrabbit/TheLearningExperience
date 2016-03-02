SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLGrossProfitYTDMetric]  @I_dUserDate datetime = NULL as  declare  @iterator int,    @startDate datetime,   @endDate datetime,   @I_iPeriodMonths int   select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select  @endDate = @I_dUserDate  select   @startDate =  FSTFSCDY from SY40101 where @I_dUserDate between FSTFSCDY and LSTFSCDY select  @startDate = DATEADD(HOUR, -DATEPART(HOUR, @startDate), @startDate) select  @startDate = DATEADD(MINUTE, -DATEPART(MINUTE, @startDate), @startDate) select  @startDate = DATEADD(SECOND, -DATEPART(SECOND, @startDate), @startDate) select  @startDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @startDate), @startDate)  select   @I_iPeriodMonths =  isnull((select top 1 PERIODID  from SY40100 where PERIODDT between   (select FSTFSCDY from SY40101 where @I_dUserDate between FSTFSCDY and LSTFSCDY) and @I_dUserDate  group by PERIODID order by PERIODID desc),0)  create table #ProfitCounts (GrossProfit numeric(19, 5) not null,   MonthDate datetime not null,  PeriodMonths int not null) select  @iterator = @I_iPeriodMonths-1 insert #ProfitCounts values(0, DATEADD(day, -day(@I_dUserDate)+1, @I_dUserDate), @I_iPeriodMonths)   while (@iterator >= 0) begin  insert #ProfitCounts values(0, DATEADD(month, -@iterator, DATEADD(day, -day(@I_dUserDate)+1, @I_dUserDate)), @I_iPeriodMonths)  select @iterator = @iterator - 1 end  insert #ProfitCounts  (GrossProfit,  MonthDate,  PeriodMonths) select  sum (t.CRDTAMNT - t.DEBITAMT)as GrossProfit,  DATEADD(day, -DAY(t.TRXDATE)+1, t.TRXDATE) as MonthDate, @I_iPeriodMonths from  GL20000 as t with (NOLOCK) join  GL00100 as m with (NOLOCK) on  t.ACTINDX = m.ACTINDX where  (m.ACCATNUM = 31 or m.ACCATNUM = 32 or m.ACCATNUM = 33) and  (t.TRXDATE >= @startDate and t.TRXDATE <= @endDate) group by  t.TRXDATE  select * from #ProfitCounts  drop table #ProfitCounts    
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitYTDMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitYTDMetric] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitYTDMetric] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitYTDMetric] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitYTDMetric] TO [rpt_executive]
GO
