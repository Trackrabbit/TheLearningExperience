SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeSVCRTVCountsDetail]  @DocumentDate datetime = null,  @RTVType varchar(10) = null as if @DocumentDate is null   if @RTVType is null  select *   from RTVs where [RTV Status] = 'Ready To Ship'  else  select *   from RTVs  where [RTV Type] = @RTVType and [RTV Status] = 'Ready To Ship' if @DocumentDate is not null   if @RTVType is null  select *   from RTVs  where ([Entry Date] >= @DocumentDate ) and [RTV Status] = 'Ready To Ship'  else  select *   from RTVs  where [RTV Type] = @RTVType    and ([Entry Date] >= @DocumentDate ) and [RTV Status] = 'Ready To Ship'          
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsDetail] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsDetail] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRTVCountsDetail] TO [rpt_shipping and receiving]
GO
