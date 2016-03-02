SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeSVCOpenRMACountsDetail]  @DocumentDate datetime = null,  @RMAType varchar(10) = null as if @DocumentDate is null   if @RMAType is null  select *   from RMAs   else  select *   from RMAs  where [SVC Return Type] = @RMAType  if @DocumentDate is not null   if @RMAType is null  select *   from RMAs  where ([Entry Date] >= @DocumentDate )   else  select *   from RMAs  where [SVC Return Type] = @RMAType    and ([Entry Date] >= @DocumentDate )           
GO
GRANT EXECUTE ON  [dbo].[seeSVCOpenRMACountsDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCOpenRMACountsDetail] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCOpenRMACountsDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCOpenRMACountsDetail] TO [rpt_power user]
GO
