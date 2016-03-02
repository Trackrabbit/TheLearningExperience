SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeSVCServiceCallCountsDetail]  @DocumentDate datetime = null,  @ServiceType varchar(10) = null as if @DocumentDate is null   if @ServiceType is null  select *   from FieldServiceCalls where [Service Record Type] = 'Open'  else  select *   from FieldServiceCalls  where [Service Type] = @ServiceType and [Service Record Type] = 'Open' if @DocumentDate is not null   if @ServiceType is null  select *   from FieldServiceCalls  where ([Entry Date] >= @DocumentDate ) and [Service Record Type] = 'Open'  else  select *   from FieldServiceCalls  where [Service Type] = @ServiceType and [Service Record Type] = 'Open'  and ([Entry Date] >= @DocumentDate )          
GO
GRANT EXECUTE ON  [dbo].[seeSVCServiceCallCountsDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCServiceCallCountsDetail] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCServiceCallCountsDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCServiceCallCountsDetail] TO [rpt_power user]
GO
