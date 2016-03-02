SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSVCServiceCallCountsMetric]  @I_dUserDate datetime = NULL as  declare @startDate datetime,   @endDate datetime select  @endDate = DATEADD(day, -DAY(@I_dUserDate), @I_dUserDate) select  @startDate = DATEADD(MONTH, -12, DATEADD(day, -DAY(@I_dUserDate)+1, @I_dUserDate)) create table #ServiceCallCounts (NumDocs int not null,   ServiceType char(10) not null)  if @I_dUserDate is null  insert #ServiceCallCounts  (NumDocs,  ServiceType)  select  count(SRVTYPE) as NumDocs,  SRVTYPE as ServiceType  from  SVC00200 with (NOLOCK)  where  (SRVRECTYPE = 2)  group by SRVTYPE else  insert #ServiceCallCounts  (NumDocs,  ServiceType)  select  count(SRVTYPE) as NumDocs,  SRVTYPE as ServiceType  from  SVC00200 with (NOLOCK)  where  ENTDTE >= @I_dUserDate   and (SRVRECTYPE = 2)  group by SRVTYPE  select  * from  #ServiceCallCounts with (NOLOCK)  drop table #ServiceCallCounts    
GO
GRANT EXECUTE ON  [dbo].[seeSVCServiceCallCountsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCServiceCallCountsMetric] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCServiceCallCountsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCServiceCallCountsMetric] TO [rpt_power user]
GO
