SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSVCOpenRMACountsMetric]  @I_dUserDate datetime = NULL as  declare @startDate datetime,   @endDate datetime  create table #RMACounts (NumRMAs int not null,   RMAType char(10) not null)  if @I_dUserDate is null  insert #RMACounts  (NumRMAs,  RMAType) select  count(RETTYPE) as NumRMAs,  RETTYPE as RMAType from  SVC05000 with (NOLOCK)  group by RETTYPE else  insert #RMACounts  (NumRMAs,  RMAType) select  count(RETTYPE) as NumRMAs,  RETTYPE as RMAType from  SVC05000 with (NOLOCK) where  ENTDTE >= @I_dUserDate  group by RETTYPE  select  * from  #RMACounts with (NOLOCK)  drop table #RMACounts    
GO
GRANT EXECUTE ON  [dbo].[seeSVCOpenRMACountsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCOpenRMACountsMetric] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCOpenRMACountsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCOpenRMACountsMetric] TO [rpt_power user]
GO
