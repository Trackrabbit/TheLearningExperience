SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUPRNewEmployeesByYearMetric]  @I_iYear1 int = NULL,  @I_iYear2 int = NULL as  create table #NewEmployeeCounts (HireCount int not null,   HireYear int not null,  HireQtr varchar(2) not null)  insert into #NewEmployeeCounts values(0, @I_iYear1, 'Q1') insert into #NewEmployeeCounts values(0, @I_iYear1, 'Q2') insert into #NewEmployeeCounts values(0, @I_iYear1, 'Q3') insert into #NewEmployeeCounts values(0, @I_iYear1, 'Q4') insert into #NewEmployeeCounts values(0, @I_iYear2, 'Q1') insert into #NewEmployeeCounts values(0, @I_iYear2, 'Q2') insert into #NewEmployeeCounts values(0, @I_iYear2, 'Q3') insert into #NewEmployeeCounts values(0, @I_iYear2, 'Q4')  insert into #NewEmployeeCounts  (HireCount,  HireYear,  HireQtr) select   count (BENADJDATE) as HireCount,  datepart(year, BENADJDATE) as HireYear,   HireQtr = case   when datepart(month, BENADJDATE) in (1,2,3) then 'Q1'  when datepart(month, BENADJDATE) in (4,5,6) then 'Q2'  when datepart(month, BENADJDATE) in (7,8,9) then 'Q3'  else 'Q4'  end from   dbo.UPR00100 with (NOLOCK) where   datepart(year, BENADJDATE) = @I_iYear1 or datepart(year, BENADJDATE) = @I_iYear2 group by   datepart(year, BENADJDATE),  case   when datepart(month, BENADJDATE) in (1,2,3) then 'Q1'  when datepart(month, BENADJDATE) in (4,5,6) then 'Q2'  when datepart(month, BENADJDATE) in (7,8,9) then 'Q3'  else 'Q4'  end union all select  count(STRTDATE) as HireCount,  datepart(year, STRTDATE) as HireYear,  HireQtr = case   when datepart(month, STRTDATE) in (1,2,3) then 'Q1'  when datepart(month, STRTDATE) in (4,5,6) then 'Q2'  when datepart(month, STRTDATE) in (7,8,9) then 'Q3'  else 'Q4'  end from  dbo.UPR00100 with (NOLOCK) where  year(BENADJDATE) = YEAR(0) and   (datepart(year, STRTDATE) = @I_iYear1 or datepart(year, STRTDATE) = @I_iYear2) group by  datepart(year, STRTDATE),  case   when datepart(month, STRTDATE) in (1,2,3) then 'Q1'  when datepart(month, STRTDATE) in (4,5,6) then 'Q2'  when datepart(month, STRTDATE) in (7,8,9) then 'Q3'  else 'Q4'  end  select   SUM(HireCount) as HireCount,   HireYear,   HireQtr  from   #NewEmployeeCounts  group by   HireQtr,   HireYear  drop table #NewEmployeeCounts    
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeesByYearMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeesByYearMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeesByYearMetric] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeesByYearMetric] TO [rpt_payroll]
GO
