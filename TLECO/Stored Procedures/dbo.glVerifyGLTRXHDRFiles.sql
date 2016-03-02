SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glVerifyGLTRXHDRFiles]   @I_iJournal_Entry               int             = NULL,  @I_cIN_Batch_Source     char(15)        = NULL,  @IO_iOut_Error          int             = NULL  output,  @O_iErrorState          int             = NULL  output as   declare  @cBatch_Source          char(15),  @cGL_Business            varchar(255),  @cGL_Clearing            varchar(255),  @cGL_Normal              varchar(255),  @cXGL_Normal             varchar(255),  @cXGL_Clearing           varchar(255),  @cGL_Close               varchar(255),  @NEW                    int,  @UNPOSTED               int,  @iStatus                        int,  @iError int  select  @O_iErrorState = 0   if  ( ( @I_iJournal_Entry is NULL ) or ( @I_cIN_Batch_Source is NULL ) or (@IO_iOut_Error is NULL)  ) begin  select @O_iErrorState = 20082  return end  select   @NEW  = 0,  @UNPOSTED = 1  exec    @iStatus = DYNAMICS..smGetConstantString   'GL_BUSINESS_STR',   @cGL_Business output,   @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if  ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)  exec    @iStatus = DYNAMICS..smGetConstantString   'GL_CLEARING_STR',   @cGL_Clearing output,   @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if  ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)  exec    @iStatus = DYNAMICS..smGetConstantString   'GL_NORMAL_STR',   @cGL_Normal output,   @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if  ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)  exec    @iStatus = DYNAMICS..smGetConstantString   'XGL_NORMAL_STR',   @cXGL_Normal output,   @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if  ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)  exec    @iStatus = DYNAMICS..smGetConstantString   'XGL_CLEARING_STR',   @cXGL_Clearing output,   @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if  ( (@iStatus <> 0) or (@O_iErrorState <> 0) )  return (@iStatus)  exec    @iStatus = DYNAMICS..smGetConstantString   'BATCH_SOURCE_GL_CLOSE',   @cGL_Close output,   @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if @I_cIN_Batch_Source <> @cGL_Business begin  if exists (   select   1  from   GL10100 with (NOLOCK)  where   JRNENTRY = @I_iJournal_Entry )  begin  return  end end  if exists (   select   1  from  GL10000 with (NOLOCK)  where  (BCHSOURC        = @cGL_Clearing               and     JRNENTRY       = @I_iJournal_Entry  and     @I_cIN_Batch_Source <> @cGL_Clearing)  or   (BCHSOURC        = @cGL_Normal         and    JRNENTRY       = @I_iJournal_Entry   and     @I_cIN_Batch_Source <> @cGL_Normal)  or   (BCHSOURC        = @cXGL_Normal             and     BACHNUMB        = @cGL_Close  and JRNENTRY       = @I_iJournal_Entry )  or   (   (BCHSOURC = @cXGL_Clearing        or      BCHSOURC = @cXGL_Normal  or      BCHSOURC = '' )   and JRNENTRY = @I_iJournal_Entry  ) )   begin  return  end  select @IO_iOut_Error = @NEW return    
GO
GRANT EXECUTE ON  [dbo].[glVerifyGLTRXHDRFiles] TO [DYNGRP]
GO