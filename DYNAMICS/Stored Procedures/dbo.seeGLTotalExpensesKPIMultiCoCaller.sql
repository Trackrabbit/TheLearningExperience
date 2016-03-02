SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLTotalExpensesKPIMultiCoCaller] @UserDate datetime,  @TimeUnit varchar(10), @companyID varchar(8000)  as  create table #TotalExp   (CoID char(15) not null,   CurrentExpenses numeric (19,5) not null,  PreviousExpenses numeric (19,5) not null,  LastYearExpenses numeric (19,5),  CurrPrevPercChange varchar(20)  not null,  CurrLYPercChange varchar(20)  not null)  declare @string1 varchar(8000) declare  getCompanyID cursor  for  select StrPiece from SplitDelimitedString (',',@companyID) open getCompanyID FETCH NEXT From getCompanyID into @companyID   WHILE @@FETCH_STATUS = 0 BEGIN  select @string1 = ''+RTRIM(@companyID)+'' + '..seeGLTotalExpensesKPIMultiCo' + ' ' + '''' + RIGHT ('0000'+ CAST (DATENAME(yyyy,@UserDate) AS varchar), 4) + RIGHT ('00'+ CAST (month(@UserDate) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@UserDate) AS varchar), 2) + ''''   + ' ,' + '''' +rtrim(cast(@TimeUnit as varchar (10)))+ ''''   insert into #TotalExp  exec (@string1)  FETCH NEXT From getCompanyID into @companyID  End CLOSE getCompanyID DEALLOCATE getCompanyID  select DYNAMICS..SY01500.CMPNYNAM as CoName, CoID, CurrentExpenses, PreviousExpenses, LastYearExpenses, CurrPrevPercChange, CurrLYPercChange  from #TotalExp join DYNAMICS..SY01500 on #TotalExp.CoID = DYNAMICS..SY01500.INTERID   
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIMultiCoCaller] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalExpensesKPIMultiCoCaller] TO [rpt_executive]
GO
