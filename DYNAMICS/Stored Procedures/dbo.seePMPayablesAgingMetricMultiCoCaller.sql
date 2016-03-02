SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seePMPayablesAgingMetricMultiCoCaller]    @I_dAgingDate datetime = NULL,  @I_iPMDocSchedule int = NULL,  @I_iPMDocMiscChange int = NULL,  @VendorNumber varchar(max),  @companyID varchar(8000)   as create table #PayablesAging (  CoID char(15) not null,  PeriodDescription char(31) not null,  AgingAmount numeric(19, 5) not null,  VENDORID char(15) not null)  declare @string1 varchar(8000) declare  getCompanyID cursor  for  select StrPiece from SplitDelimitedString (',',@companyID) open getCompanyID FETCH NEXT From getCompanyID into @companyID   WHILE @@FETCH_STATUS = 0 BEGIN  select @string1 = ''+RTRIM(@companyID)+'' + '..seePMPayablesAgingMetricMultiCo'   + ' '   + '''' +  RIGHT ('0000'+ CAST (DATENAME(yyyy,@I_dAgingDate) AS varchar), 4) + RIGHT ('00'+ CAST (month(@I_dAgingDate) AS varchar), 2) + RIGHT ('00'+ CAST (DATENAME(dd,@I_dAgingDate) AS varchar), 2) + ''''   + ' ,'   + '''' + rtrim(cast(@I_iPMDocSchedule as int)) + ''''   + ' ,'   + '''' + rtrim(cast(@I_iPMDocMiscChange as int)) + ''''   + ' ,'   + '''' + rtrim(cast(@VendorNumber as varchar(max))) + ''''   insert into #PayablesAging  exec (@string1)  FETCH NEXT From getCompanyID into @companyID  End CLOSE getCompanyID DEALLOCATE getCompanyID  select DYNAMICS..SY01500.CMPNYNAM as CoName, CoID, PeriodDescription, AgingAmount, VENDORID  from #PayablesAging join DYNAMICS..SY01500 on #PayablesAging.CoID = DYNAMICS..SY01500.INTERID   
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesAgingMetricMultiCoCaller] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePMPayablesAgingMetricMultiCoCaller] TO [rpt_executive]
GO
