SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpUpdateBatch]  @I_cBatchNumber         char(15)        = NULL,  @I_cCompanyName char(64) = NULL,  @I_cUserID char(15) = NULL,  @O_iErrorState          int             = NULL  output as  declare  @FALSE tinyint,  @RECEIVING smallint,  @AVAILABLE smallint,  @GL_NORMAL char(15),  @tLoop tinyint,  @tTransaction tinyint,  @iError int,  @iStatus int  select   @O_iErrorState = 0,  @iStatus = 0  while (@tLoop is NULL) begin  select @tLoop = 1   if @@trancount <> 0  begin  select @O_iErrorState = 20879  break  end    if @I_cBatchNumber is NULL or  @I_cCompanyName is NULL or  @I_cUserID is NULL  begin  select @O_iErrorState = 20880  break  end    select   @FALSE  = 0,  @RECEIVING = 3,  @AVAILABLE = 0   exec @iStatus = DYNAMICS..smGetConstantString  'GL_NORMAL_STR',   @GL_NORMAL output,  @O_iErrorState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0  break   begin transaction  select @tTransaction = 1   update  SY00500  set  MKDTOPST = @FALSE,  BCHSTTUS = @AVAILABLE,  POSTTOGL = @FALSE,  USERID  = ''  where  BACHNUMB = @I_cBatchNumber  and BCHSOURC = @GL_NORMAL  and BCHSTTUS = @RECEIVING   if @@rowcount <> 1  begin  select @O_iErrorState = 20881  break  end  end   if @tTransaction = 1 begin  if @O_iErrorState <> 0  begin  rollback transaction  end  else  commit transaction  end  return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[icpUpdateBatch] TO [DYNGRP]
GO
