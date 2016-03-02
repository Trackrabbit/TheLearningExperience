SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSVCRTVCountsMetric]  @I_dUserDate datetime = NULL as  declare @startDate datetime,   @endDate datetime  create table #RTVCounts (NumRTVs int not null,   RTVType char(10) not null,  RTVReturnStatus char (3) not null)  if @I_dUserDate is null  insert #RTVCounts  (NumRTVs,  RTVType,  RTVReturnStatus) select  count(RTV_Type) as NumRTVs,  RTV_Type as RTVType,  RTV_Return_Status as RTVReturnStatus from  SVC05600 with (NOLOCK) where  RTV_Status = 2  group by RTV_Type, RTV_Return_Status  order by RTV_Type else  insert #RTVCounts  (NumRTVs,  RTVType,  RTVReturnStatus) select  count(RTV_Type) as NumRTVs,  RTV_Type as RTVType,  RTV_Return_Status as RTVReturnStatus from  SVC05600 with (NOLOCK) where  RTV_Status = 2 and ENTDTE >= @I_dUserDate  group by RTV_Type, RTV_Return_Status  order by RTV_Type  select  * from  #RTVCounts with (NOLOCK)  drop table #RTVCounts    
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsMetric] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsMetric] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsMetric] TO [rpt_shipping and receiving]
GO
