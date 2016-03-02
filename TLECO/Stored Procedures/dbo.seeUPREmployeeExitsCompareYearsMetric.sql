SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUPREmployeeExitsCompareYearsMetric]  @UserDate datetime  as  declare @nEndYear as int,  @nStartYear as int,  @iterator as int  select @nEndYear = year(@UserDate) select @nStartYear = @nEndYear - 1  declare @year int, @count int, @quarter int   create table #InactivatedEmployees( ExitCount int,  ExitYear int,  ExitQtr char(2)) create table #InactivatedEmployees2( ExitCount int,  ExitYear int,  ExitQtr char(2))  insert into #InactivatedEmployees  select count (e.DEMPINAC) as ExitCount,  datepart(year, e.DEMPINAC) as ExitYear,   ExitQtr = case when datepart(month, e.DEMPINAC) in (1,2,3) then 1  when datepart(month, e.DEMPINAC) in (4,5,6) then 2  when datepart(month, e.DEMPINAC) in (7,8,9) then 3  else 4  end  from UPR00100 as e with (NOLOCK)  where ((datepart(year,e.DEMPINAC) = @nStartYear) or (datepart(year, e.DEMPINAC) = @nEndYear))  group by datepart(year, e.DEMPINAC),  case when datepart(month, e.DEMPINAC) in (1,2,3) then 1  when datepart(month, e.DEMPINAC) in (4,5,6) then 2  when datepart(month, e.DEMPINAC) in (7,8,9) then 3  else 4  end  order by ExitQtr, ExitYear  select @year=@nStartYear, @quarter=1 while @year <=@nEndYear and @quarter <=4 begin  if (select COUNT(ExitCount) from #InactivatedEmployees where ExitYear=@year and ExitQtr=@quarter) >0  begin  insert into #InactivatedEmployees2   select ExitCount, ExitYear, 'Q' + ltrim(str(ExitQtr)) from #InactivatedEmployees where ExitYear=@year and ExitQtr= @quarter  end  else  begin  insert into #InactivatedEmployees2   select 0, @year, 'Q'+ltrim(str(@quarter))   end  select @quarter=@quarter+1   if @year=@nStartYear and @quarter = 5  select @year=@nEndYear, @quarter=1  end  select * from #InactivatedEmployees2 with (NOLOCK) drop table #InactivatedEmployees drop table #InactivatedEmployees2  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeExitsCompareYearsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeExitsCompareYearsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeExitsCompareYearsMetric] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeeExitsCompareYearsMetric] TO [rpt_payroll]
GO
