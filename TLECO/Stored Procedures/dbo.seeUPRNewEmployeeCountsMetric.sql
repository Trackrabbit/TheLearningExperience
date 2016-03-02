SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUPRNewEmployeeCountsMetric]  @I_dUserDate datetime = NULL,  @I_iPeriodMonths int   = NULL as  declare  @iterator int,    @startDate datetime,   @endDate datetime   select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select  @endDate = DATEADD(day, -DAY(@I_dUserDate), @I_dUserDate) select  @startDate = DATEADD(month, -@I_iPeriodMonths, DATEADD(day, -DAY(@I_dUserDate)+1, @I_dUserDate))  create table #NewEmployeeCounts (EmployeeHires int not null,   HiredMonth datetime not null) select  @iterator = @I_iPeriodMonths while (@iterator >= 1) begin  insert into #NewEmployeeCounts values(0, DATEADD(month, -@iterator, DATEADD(day, -day(@I_dUserDate)+1, @I_dUserDate)))  select @iterator = @iterator - 1 end  insert into #NewEmployeeCounts  (EmployeeHires,  HiredMonth) select  count(BENADJDATE) as EmployeeHires,  DATEADD(day, -DAY(BENADJDATE)+1, BENADJDATE) as HiredMonth from  dbo.UPR00100 with (NOLOCK) where  (BENADJDATE >= @startDate and BENADJDATE <= @endDate) group by  DATEADD(day, -DAY(BENADJDATE)+1, BENADJDATE) union all select  count(STRTDATE) as EmployeeHires,  DATEADD(day, -DAY(STRTDATE)+1, STRTDATE) as HiredMonth from  dbo.UPR00100 with (NOLOCK) where  (year(BENADJDATE) = YEAR(0) and (STRTDATE >= @startDate and STRTDATE <= @endDate)) group by  DATEADD(day, -DAY(STRTDATE)+1, STRTDATE)  select  * from  #NewEmployeeCounts with (NOLOCK)  drop table #NewEmployeeCounts    
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeeCountsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeeCountsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeeCountsMetric] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeeCountsMetric] TO [rpt_payroll]
GO
