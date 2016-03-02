SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[dtaDeleteStats]  @I_cReferenceNumber char(25) = NULL,  @I_sSeries smallint        = NULL,  @I_iAccountIndex        int             = NULL,  @I_iSequenceNumber int  = NULL,  @O_iErrorState int  = NULL  output as  declare  @tTransaction tinyint,  @tLoop tinyint,  @iError int  select @O_iErrorState = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin  select @tLoop = 1   if @I_cReferenceNumber is NULL or  @I_sSeries is NULL or  @I_iAccountIndex is NULL or  @I_iSequenceNumber is NULL  begin  select @O_iErrorState = 20860  break  end    delete  DTA10200  where  DTAREF    = @I_cReferenceNumber  and DTASERIES = @I_sSeries  and ACTINDX   = @I_iAccountIndex  and SEQNUMBR  = @I_iSequenceNumber   select @iError = @@error  if @iError > 0  select @O_iErrorState = @iError   delete  DTA10100  where  DTAREF    = @I_cReferenceNumber  and DTASERIES = @I_sSeries  and ACTINDX   = @I_iAccountIndex  and SEQNUMBR  = @I_iSequenceNumber   select @iError = @@error  if @iError > 0  select @O_iErrorState = @iError  end   if @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1  commit transaction  return     
GO
GRANT EXECUTE ON  [dbo].[dtaDeleteStats] TO [DYNGRP]
GO
