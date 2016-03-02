SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[sopCreateSOPTrackingNumberString]  @I_vSOPNUMBE char(21), @I_vSOPTYPE smallint, @O_iTracking_Number varchar(255) = '' output  as  declare  @iCursorError int,  @Tracking_Number char(41),  @x int,  @O_iErrorState int  select   @iCursorError = 0,  @O_iErrorState = 0,  @Tracking_Number = '',  @x = 0,  @O_iTracking_Number = ''  declare SOPTracking INSENSITIVE cursor for select  Tracking_Number  from SOP10107 with (nolock)   where SOPNUMBE = @I_vSOPNUMBE and SOPTYPE = @I_vSOPTYPE  open SOPTracking select @iCursorError = @@cursor_rows  if (@iCursorError > 0) begin  fetch next from SOPTracking into  @Tracking_Number  while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 1   break  end  if @x > 0 select @O_iTracking_Number = rtrim(@O_iTracking_Number) + ','   select @O_iTracking_Number = rtrim(@O_iTracking_Number) + rtrim(@Tracking_Number)  fetch next from SOPTracking into  @Tracking_Number  select @x = @x + 1  end end deallocate SOPTracking  return (@O_iErrorState)    
GO
GRANT EXECUTE ON  [dbo].[sopCreateSOPTrackingNumberString] TO [DYNGRP]
GO
