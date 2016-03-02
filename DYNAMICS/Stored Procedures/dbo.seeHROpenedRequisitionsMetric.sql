SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeHROpenedRequisitionsMetric]   @UserDate datetime = NULL,  @Company varchar(7) = NULL  as set nocount ON  declare @dtStart datetime,   @dtEnd datetime,  @month int  set @dtEnd = CAST(YEAR(@UserDate) AS VARCHAR(4)) + '/' +   CAST(MONTH(@UserDate) AS VARCHAR(2)) + '/01'  set @dtEnd = DATEADD(DD, -1, @dtEnd)    select @dtStart = DATEADD(mm, -11, @dtEnd)  select @dtStart = CAST(CAST(YEAR(@dtStart) AS VARCHAR(4)) + '/' +   CAST(MONTH(@dtStart) AS VARCHAR(2)) + '/01' AS DATETIME) create table #Totals(ReqsOpened int,  MonthAsNumber int,  MonthString char(15),  IndexNumber int)  insert into #Totals   select count(OPENINGDATE_I) as ReqsOpened,   DATEPART(month, OPENINGDATE_I) as MonthAsNumber,  case DATEPART(month, OPENINGDATE_I)  when 1 then 'January'  when 2 then 'February'  when 3 then 'March'   when 4 then 'April'  when 5 then 'May'  when 6 then 'June'  when 7 then 'July'  when 8 then 'August'  when 9 then 'September'  when 10 then 'October'  when 11 then 'November'  when 12 then 'December'  end  as MonthString,   (12 - month(@dtStart) + DatePart(month, OPENINGDATE_I)) % 12 as IndexNumber   from dbo.HR2REQ01 where   (COMPANYCODE_I = @Company and OPENINGDATE_I >= @dtStart and OPENINGDATE_I <= @dtEnd)   group by DatePart(month, OPENINGDATE_I) select @month = 1 while @month < = 12 begin   if (select COUNT(MonthAsNumber) from #Totals where MonthAsNumber = @month) = 0  insert into #Totals (ReqsOpened,  MonthAsNumber,  MonthString,  IndexNumber)  values(0,  @month,  case @month  when 1 then 'January'  when 2 then 'February'  when 3 then 'March'   when 4 then 'April'  when 5 then 'May'  when 6 then 'June'  when 7 then 'July'  when 8 then 'August'  when 9 then 'September'  when 10 then 'October'  when 11 then 'November'  when 12 then 'December'  end,   (12 - month(@dtStart) + @month) % 12)  select @month = @month + 1 end   select * from #Totals with (NOLOCK) order by IndexNumber  drop table #Totals set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeHROpenedRequisitionsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeHROpenedRequisitionsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeHROpenedRequisitionsMetric] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeHROpenedRequisitionsMetric] TO [rpt_payroll]
GO
