SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetNextRMSchNumber]  @I_tInc_Dec tinyint = NULL,    @O_vSCHEDULE_NUMBER varchar(21) = NULL output, @O_iErrorState int = NULL output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @iError int,  @iStatus int,  @SCHEDULE_NUMBER varchar (21)  select  @O_vSCHEDULE_NUMBER = '',  @O_iErrorState  = 0  if (@I_tInc_Dec is NULL) begin  select @O_iErrorState = 3003    return (@O_iErrorState) end  select @O_vSCHEDULE_NUMBER = DOCNUMBR from RM40401 WITH (TABLOCKX HOLDLOCK) where RMDTYPAL = 2 if ( @@rowcount <> 1) begin  select @O_iErrorState = 3004   end  if (@O_iErrorState = 0) begin  select @SCHEDULE_NUMBER = @O_vSCHEDULE_NUMBER   exec @iStatus = ivNumber_Inc_Dec  @I_tInc_Dec,  @SCHEDULE_NUMBER output,  @O_iErrorState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   update RM40401 set DOCNUMBR = @SCHEDULE_NUMBER where RMDTYPAL = 2 end if @O_iErrorState <> 0 or @iStatus <> 0 begin  select @O_vSCHEDULE_NUMBER = '' end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetNextRMSchNumber] TO [DYNGRP]
GO
