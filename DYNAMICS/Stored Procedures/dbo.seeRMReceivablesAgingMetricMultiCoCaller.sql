SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeRMReceivablesAgingMetricMultiCoCaller]   @CustomerNumber varchar(max),  @companyID varchar(8000)   as create table #ReceivablesAging (  CoID char(15) not null,  PeriodDescription char(15) not null,  AgingAmount numeric(19, 5) not null,  Filter char(15))  declare @string1 varchar(8000) declare  getCompanyID cursor  for  select StrPiece from SplitDelimitedString (',',@companyID) open getCompanyID FETCH NEXT From getCompanyID into @companyID   WHILE @@FETCH_STATUS = 0 BEGIN  select @string1 = ''+RTRIM(@companyID)+'' + '..seeRMReceivablesAgingMetricMultiCo'   + ' '   + '''' + rtrim(cast(@CustomerNumber as varchar(max))) + ''''   insert into #ReceivablesAging  exec (@string1)  FETCH NEXT From getCompanyID into @companyID  End CLOSE getCompanyID DEALLOCATE getCompanyID  select DYNAMICS..SY01500.CMPNYNAM as CoName, CoID, PeriodDescription, AgingAmount, Filter  from #ReceivablesAging join DYNAMICS..SY01500 on #ReceivablesAging.CoID = DYNAMICS..SY01500.INTERID   
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesAgingMetricMultiCoCaller] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesAgingMetricMultiCoCaller] TO [rpt_executive]
GO
