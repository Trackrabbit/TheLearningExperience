SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLNetSalesVsCogsMetric]  @I_dUserDate datetime = NULL,  @I_iPeriodMonths int   = NULL as  declare  @iterator int,    @startDate datetime,   @endDate datetime   select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select  @endDate = DATEADD(day, -DAY(@I_dUserDate), @I_dUserDate) select  @startDate = DATEADD(month, -@I_iPeriodMonths, DATEADD(day, -DAY(@I_dUserDate)+1, @I_dUserDate))  create table #SalesCogsAmounts (SalesAmt numeric(19, 5),   COGS numeric(19, 5),  MonthDate datetime not null) select  @iterator = @I_iPeriodMonths while (@iterator >= 1) begin  insert #SalesCogsAmounts values(0, 0, DATEADD(month, -@iterator, DATEADD(day, -day(@I_dUserDate)+1, @I_dUserDate)))  select @iterator = @iterator - 1 end  insert #SalesCogsAmounts  (SalesAmt,  COGS,  MonthDate) select   sum(case m.ACCATNUM  when 31 then t.CRDTAMNT - t.DEBITAMT  when 32 then -(t.DEBITAMT - t.CRDTAMNT)  end) as SalesAmt,  sum(case m.ACCATNUM  when 33 then t.DEBITAMT - t.CRDTAMNT  end) as COGS,  DATEADD(day, -DAY(t.TRXDATE)+1, t.TRXDATE) as MonthDate from   GL20000 as t with (NOLOCK) join   GL00100 as m with (NOLOCK) on   t.ACTINDX = m.ACTINDX  where   (m.ACCATNUM = 31 or m.ACCATNUM = 32 or m.ACCATNUM = 33)  and (t.TRXDATE >= @startDate and t.TRXDATE <= @endDate) group by   t.TRXDATE order by   t.TRXDATE  select   SUM(SalesAmt) as SalesAmt,  SUM(COGS) as COGS,  MonthDate from   #SalesCogsAmounts group by  MonthDate  drop table #SalesCogsAmounts    
GO
GRANT EXECUTE ON  [dbo].[seeGLNetSalesVsCogsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLNetSalesVsCogsMetric] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLNetSalesVsCogsMetric] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeGLNetSalesVsCogsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeGLNetSalesVsCogsMetric] TO [rpt_operations manager]
GO
