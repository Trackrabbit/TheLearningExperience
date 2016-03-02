SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopGetMasterNumber]  @O_iOUTMasterNumber int = NULL  output, @O_iErrorState int = NULL  output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare @iError int,  @MaxMSTRNUMB int  select @O_iOUTMasterNumber = 0,  @O_iErrorState = 0  update SOP40100 set  @O_iOUTMasterNumber = NXTMSTNO,  NXTMSTNO= NXTMSTNO + 1  if ( @@rowcount <> 1) begin  select @O_iErrorState = 49  end  select @MaxMSTRNUMB = max(MSTRNUMB) from SOP40500 (nolock) if (@MaxMSTRNUMB >= @O_iOUTMasterNumber) begin  update SOP40100 set  @O_iOUTMasterNumber = @MaxMSTRNUMB + 1,  NXTMSTNO= @MaxMSTRNUMB + 2  if ( @@rowcount <> 1)  begin  select @O_iErrorState = 50   end end  if (( @O_iOUTMasterNumber = 99999999) or ( @O_iOUTMasterNumber = 0)) and @O_iErrorState = 0 begin  select   @O_iOUTMasterNumber = 1  update SOP40100 set NXTMSTNO = 2  if ( @@rowcount <> 1)  begin  select @O_iErrorState = 51   end end  if @O_iErrorState <> 0 begin  select @O_iOUTMasterNumber = 0 end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopGetMasterNumber] TO [DYNGRP]
GO
