SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUPREmployeeExitCountsMetric]  @I_dUserDate datetime = NULL,  @I_iPeriodMonths int   = NULL as  declare  @iterator int,    @startDate datetime,   @endDate datetime   select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select  @endDate = DATEADD(day, -DAY(@I_dUserDate), @I_dUserDate) select  @startDate = DATEADD(month, -@I_iPeriodMonths, DATEADD(day, -DAY(@I_dUserDate)+1, @I_dUserDate))  create table #EmployeeExitCounts (ExitCounts int not null,   MonthDate datetime not null) select  @iterator = @I_iPeriodMonths while (@iterator >= 1) begin  insert into #EmployeeExitCounts values(0, DATEADD(month, -@iterator, DATEADD(day, -day(@I_dUserDate)+1, @I_dUserDate)))  select @iterator = @iterator - 1 end  insert #EmployeeExitCounts  (ExitCounts,  MonthDate) select  count (DEMPINAC) as ExitCounts,  DATEADD(day, -DAY(DEMPINAC)+1, DEMPINAC) as MonthDate from  UPR00100 with (NOLOCK) where  DEMPINAC >= @startDate and DEMPINAC <= @endDate group by  DATEADD(day, -DAY(DEMPINAC)+1, DEMPINAC)  select  * from  #EmployeeExitCounts with (NOLOCK)  drop table #EmployeeExitCounts    
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeExitCountsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeExitCountsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeExitCountsMetric] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeExitCountsMetric] TO [rpt_payroll]
GO
