SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[sopGetIDNumber]  @I_tSOPTYPE tinyint  = NULL,  @I_cDocumentID char(15) = NULL,  @I_tInc_Dec tinyint  = NULL,  @O_vSOPNumber varchar(21)             = NULL  output,  @O_iErrorState int             = NULL  output as   declare  @tTransaction           tinyint,  @iError int,  @iStatus int,  @vSOPNumber varchar(21)  select @O_vSOPNumber  = '',  @O_iErrorState   = 0,  @iStatus  = 0   if  @I_tSOPTYPE is NULL or  @I_tInc_Dec is NULL or  @I_cDocumentID is NULL begin  select @O_iErrorState = 21033  return end  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  select   @O_vSOPNumber = SOPNUMBE  from   SOP40200 with (TABLOCKX HOLDLOCK) where  SOPTYPE = @I_tSOPTYPE and DOCID = @I_cDocumentID  if ( @@rowcount <> 1) begin  select          @O_iErrorState                  = 21034 end  if @O_iErrorState = 0 begin   select @vSOPNumber = @O_vSOPNumber   exec @iStatus = ivNumber_Inc_Dec  @I_tInc_Dec,  @vSOPNumber output,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   update  SOP40200  set  SOPNUMBE= @vSOPNumber  where  SOPTYPE = @I_tSOPTYPE  and DOCID = @I_cDocumentID end  if @O_iErrorState <> 0 or @iStatus <> 0 begin  select           @O_vSOPNumber    = ''  if @tTransaction = 1  rollback transaction  end else begin   if @tTransaction = 1  commit transaction end  return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[sopGetIDNumber] TO [DYNGRP]
GO
