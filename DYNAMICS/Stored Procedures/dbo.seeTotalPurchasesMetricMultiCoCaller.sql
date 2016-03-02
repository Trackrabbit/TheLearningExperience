SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTotalPurchasesMetricMultiCoCaller]   @UserDate datetime = NULL,  @I_iPeriodMonths int = NULL,   @companyID varchar(8000)  as  create table #TotalPurchases(  CoID char(15) not null,   Amount numeric(19,5) not null,  MonthDate datetime not null)  declare @string1 varchar(8000) declare  getCompanyID cursor  for  select StrPiece from SplitDelimitedString (',',@companyID) open getCompanyID FETCH NEXT From getCompanyID into @companyID   WHILE @@FETCH_STATUS = 0 BEGIN  select @string1 = ''+RTRIM(@companyID)+'' + '..seeTotalPurchasesMetricMultiCo'   + ' '   + '''' + RIGHT ('0000'+ CAST (DATENAME(yyyy,@UserDate) AS varchar), 4) + RIGHT ('00'+ CAST (month(@UserDate) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@UserDate) AS varchar), 2) + ''''   + ' ,'   + '''' + rtrim(cast(@I_iPeriodMonths as int)) + ''''   insert into #TotalPurchases  exec (@string1)  FETCH NEXT From getCompanyID into @companyID  End CLOSE getCompanyID DEALLOCATE getCompanyID  select DYNAMICS..SY01500.CMPNYNAM as CoName, CoID, Amount, MonthDate from #TotalPurchases join DYNAMICS..SY01500 on #TotalPurchases.CoID = DYNAMICS..SY01500.INTERID   
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetricMultiCoCaller] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalPurchasesMetricMultiCoCaller] TO [rpt_executive]
GO
