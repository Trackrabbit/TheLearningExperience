SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[cldtaDeleteStats]  @I_cReferenceNumber char(25) = NULL,  @I_sSeries smallint        = NULL,  @I_iAccountIndex        int             = NULL,  @I_iSequenceNumber int  = NULL,  @O_tStatsDeleted tinyint  = NULL  output,  @O_iErrorState int  = NULL  output as  declare  @tTransaction tinyint,  @tLoop tinyint,  @TRUE tinyint,  @FALSE tinyint  select  @TRUE   = 1,  @FALSE  = 0  select  @O_iErrorState   = 0,  @O_tStatsDeleted = @FALSE  if @@trancount = 0  begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin  select @tLoop = 1   if @I_cReferenceNumber is NULL or  @I_sSeries is NULL or  @I_iAccountIndex is NULL or  @I_iSequenceNumber is NULL  begin  select @O_iErrorState = 21024  break  end    delete  DTA10200  where  DTAREF    = @I_cReferenceNumber  and DTASERIES = @I_sSeries  and ACTINDX   = @I_iAccountIndex  and SEQNUMBR  = @I_iSequenceNumber   if @@rowcount <> 0  select @O_tStatsDeleted = @TRUE   delete  DTA10100  where  DTAREF    = @I_cReferenceNumber  and DTASERIES = @I_sSeries  and ACTINDX   = @I_iAccountIndex  and SEQNUMBR  = @I_iSequenceNumber   if @@rowcount <> 0  select @O_tStatsDeleted = @TRUE  end   if @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1  commit transaction  return     
GO
GRANT EXECUTE ON  [dbo].[cldtaDeleteStats] TO [DYNGRP]
GO
