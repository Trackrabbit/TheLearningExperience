SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTotalSalesYTDKPIMultiCoCaller] @UserDate datetime, @companyID varchar(8000)  as  create table #totalsalesMultiCo   (CoName char(15) not null,   CurrentBalance numeric (19,5) not null)  declare @string1 varchar(8000) declare  getCompanyID cursor  for  select StrPiece from SplitDelimitedString (',',@companyID) open getCompanyID FETCH NEXT From getCompanyID into @companyID   WHILE @@FETCH_STATUS = 0 BEGIN  select @string1 = ''+RTRIM(@companyID)+'' + '..seeTotalSalesYTDKPIMultiCo' + ' ' + '''' +  RIGHT ('0000'+ CAST (DATENAME(yyyy,@UserDate) AS varchar), 4) + RIGHT ('00'+ CAST (month(@UserDate) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@UserDate) AS varchar), 2) + ''''   insert into #totalsalesMultiCo  exec (@string1)  FETCH NEXT From getCompanyID into @companyID  End CLOSE getCompanyID DEALLOCATE getCompanyID  select CoName,CMPNYNAM,CurrentBalance  from #totalsalesMultiCo a inner join SY01500 b on a.CoName = b.INTERID   
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPIMultiCoCaller] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTotalSalesYTDKPIMultiCoCaller] TO [rpt_executive]
GO
