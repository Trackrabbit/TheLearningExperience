SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLGrossProfitYTDMetricMultiCOCaller] @UserDate datetime, @companyID varchar(8000)  as  create table #GrossProfitYTD   (CoID char(15) not null,   GrossProfit numeric (19,5) not null)  declare @string1 varchar(8000) declare  getCompanyID cursor  for  select StrPiece from SplitDelimitedString (',',@companyID) open getCompanyID FETCH NEXT From getCompanyID into @companyID   WHILE @@FETCH_STATUS = 0 BEGIN  select @string1 = ''+RTRIM(@companyID)+'' + '..seeGLGrossProfitYTDMetricMultiCO' + ' ' + '''' + RIGHT ('0000'+ CAST (DATENAME(yyyy,@UserDate) AS varchar), 4) + RIGHT ('00'+ CAST (month(@UserDate) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@UserDate) AS varchar), 2) + ''''   insert into #GrossProfitYTD  exec (@string1)  FETCH NEXT From getCompanyID into @companyID  End CLOSE getCompanyID DEALLOCATE getCompanyID  select DYNAMICS..SY01500.CMPNYNAM as CoName, CoID, GrossProfit as CurrentBalance from #GrossProfitYTD join DYNAMICS..SY01500 on #GrossProfitYTD.CoID = DYNAMICS..SY01500.INTERID   
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitYTDMetricMultiCOCaller] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitYTDMetricMultiCOCaller] TO [rpt_executive]
GO
