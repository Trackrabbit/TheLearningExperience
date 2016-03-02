SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetEndOfMonth]  @I_dDate datetime = NULL,  @O_dEndOfMonth datetime output,  @O_iErrorState int output as  if @I_dDate is NULL begin  select @O_iErrorState = 20070   return (1)  end  declare  @sDayDiff smallint,  @sEndDay smallint  select  @O_iErrorState = 0,  @sDayDiff = datepart(dd,@I_dDate)   select  @sDayDiff = @sDayDiff * -1,  @I_dDate = dateadd(mm,1,@I_dDate)   select  @sEndDay  = datepart(dd,@I_dDate) select  @sEndDay  = @sEndDay * -1  if @sEndDay > @sDayDiff begin  select  @O_dEndOfMonth = dateadd(dd,@sEndDay,@I_dDate)  end else begin  select  @O_dEndOfMonth = dateadd(dd,@sDayDiff,@I_dDate)  end return (0)    
GO
GRANT EXECUTE ON  [dbo].[smGetEndOfMonth] TO [DYNGRP]
GO
