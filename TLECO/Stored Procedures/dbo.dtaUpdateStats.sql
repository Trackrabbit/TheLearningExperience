SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[dtaUpdateStats]  @I_sDTASeries smallint        = NULL,  @I_cDTAReference char(25) = NULL,  @I_iAccountIndex int  = NULL,  @I_iSequenceNumber int  = NULL,   @I_cDTAGLReference char(25) = NULL,  @I_sPostingStatus smallint = NULL,  @O_iErrorState int  = NULL  output as  declare  @tTransaction tinyint,  @tLoop tinyint  select @O_iErrorState = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin  select @tLoop = 1   if @I_sDTASeries is NULL or  @I_cDTAReference is NULL or  @I_iAccountIndex is NULL or  @I_iSequenceNumber is NULL or  @I_cDTAGLReference is NULL or  @I_sPostingStatus is NULL  begin  select @O_iErrorState = 20945  break  end    if @I_cDTAGLReference = ''    update DTA10100  set PSTGSTUS = @I_sPostingStatus  where  DTASERIES = @I_sDTASeries  and DTAREF = @I_cDTAReference  and ACTINDX = @I_iAccountIndex  and SEQNUMBR = @I_iSequenceNumber  else  update DTA10100  set PSTGSTUS = @I_sPostingStatus  where  DTASERIES = @I_sDTASeries  and DTA_GL_Reference = @I_cDTAGLReference  and ACTINDX = @I_iAccountIndex end   if @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1  commit transaction  return   
GO
GRANT EXECUTE ON  [dbo].[dtaUpdateStats] TO [DYNGRP]
GO
