SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLCOGSKPIMultiCoCaller] @UserDate datetime,  @TimeUnit varchar(10), @companyID varchar(8000)  as  create table #TotalCOGS   (CoID char(15) not null,   CurrentRevenue numeric (19,5) not null,  PreviousRevenue numeric (19,5) not null,  LastYearRevenue numeric (19,5),  CurrPrevPercChange varchar(20)  not null,  CurrLYPercChange varchar(20)  not null)  declare @string1 varchar(8000) declare  getCompanyID cursor  for  select StrPiece from SplitDelimitedString (',',@companyID) open getCompanyID FETCH NEXT From getCompanyID into @companyID   WHILE @@FETCH_STATUS = 0 BEGIN  select @string1 = ''+RTRIM(@companyID)+'' + '..seeGLCOGSKPIMultiCo' + ' ' + '''' + RIGHT ('0000'+ CAST (DATENAME(yyyy,@UserDate) AS varchar), 4) + RIGHT ('00'+ CAST (month(@UserDate) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@UserDate) AS varchar), 2) + ''''   + ' ,' + '''' +rtrim(cast(@TimeUnit as varchar (10)))+ ''''   insert into #TotalCOGS  exec (@string1)  FETCH NEXT From getCompanyID into @companyID  End CLOSE getCompanyID DEALLOCATE getCompanyID  select DYNAMICS..SY01500.CMPNYNAM as CoName, CoID, CurrentRevenue, PreviousRevenue, LastYearRevenue, CurrPrevPercChange, CurrLYPercChange  from #TotalCOGS join DYNAMICS..SY01500 on #TotalCOGS.CoID = DYNAMICS..SY01500.INTERID   
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPIMultiCoCaller] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPIMultiCoCaller] TO [rpt_executive]
GO
