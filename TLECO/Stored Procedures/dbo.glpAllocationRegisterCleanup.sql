SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpAllocationRegisterCleanup]  @I_cBatchSource         char(15)        = NULL,  @I_cBatchNumber         char(15)        = NULL,  @I_cUserID              char(15)        = NULL,  @O_iErrorState          int             = NULL output as  declare  @DISPLAY_REPORT smallint,  @DELETE_REPORT smallint,  @cGL_Business char(15),  @cXGL_Business char(15),  @iStatus int,  @iError int  select  @DISPLAY_REPORT = 0,  @DELETE_REPORT = 1  select  @O_iErrorState  = 0  exec @iStatus = DYNAMICS..smGetConstantString  'GL_BUSINESS_STR',   @cGL_Business output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if @iStatus <> 0 or @O_iErrorState <> 0  return(@iStatus)  exec @iStatus = DYNAMICS..smGetConstantString  'XGL_BUSINESS_STR',   @cXGL_Business output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if @iStatus <> 0 or @O_iErrorState <> 0  return(@iStatus)  if (@I_cBatchSource = @cGL_Business) or  (@I_cBatchSource = @cXGL_Business) begin  update  PJOURNAL  set   REPORT = @DELETE_REPORT  where  USERID = @I_cUserID  and BCHSOURC = @I_cBatchSource  and REPORT = @DISPLAY_REPORT end else  begin   update  PJOURNAL  set   REPORT = @DELETE_REPORT  where  USERID = @I_cUserID  and BCHSOURC = @I_cBatchSource  and BACHNUMB = @I_cBatchNumber  and REPORT = @DISPLAY_REPORT end   return    
GO
GRANT EXECUTE ON  [dbo].[glpAllocationRegisterCleanup] TO [DYNGRP]
GO
