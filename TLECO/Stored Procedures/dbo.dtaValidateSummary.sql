SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[dtaValidateSummary]  @I_sDTASeries smallint        = NULL,  @I_cDTAGLReference char(25) = NULL,  @I_iAccountIndex        int             = NULL,  @I_mPostingAmount numeric(19,5) = NULL,  @O_tRecordsOK tinyint  = NULL output,  @O_tOptionalNoStats tinyint  = NULL output,  @O_tDistHasMDA tinyint  = NULL output,  @O_tZeroAmtMDAExists tinyint  = NULL output,  @O_iErrorState int  = NULL  output as  declare  @tTransaction tinyint,  @tLoop tinyint,  @tRecordsOK tinyint,  @tRecordsOKProc tinyint,  @tOptionalNoStats tinyint,  @tOptionalNoStatsProc tinyint,  @tDistHasMDA tinyint,  @tDistHasMDAProc tinyint,  @tZeroAmtMDAExists tinyint,  @tZeroAmtMDAExistsProc tinyint,  @iError int,  @iStatus int,  @iCursorError int,  @cReferenceNumber char(25),  @iSequenceNumber int,  @cErrorGroupID char(15),  @cDocumentNumber char(21),  @TRUE smallint,  @FALSE smallint  select  @O_tRecordsOK = @FALSE,  @O_tOptionalNoStats = @FALSE,  @O_tDistHasMDA = @FALSE,  @O_tZeroAmtMDAExists = @FALSE,  @O_iErrorState = 0  select  @TRUE = 1,  @FALSE = 0,  @iStatus = 0,  @tRecordsOK = @TRUE,  @tOptionalNoStats = @FALSE,  @tDistHasMDA = @FALSE,  @tZeroAmtMDAExists = @FALSE  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin  select @tLoop = 1   if @I_sDTASeries is NULL or  @I_cDTAGLReference is NULL or  @I_iAccountIndex is NULL or  @I_mPostingAmount is NULL  begin  select @O_iErrorState = 20979  break   end    declare  TransGroupWork INSENSITIVE  cursor for select  DTA10100.DTAREF,  DTA10100.SEQNUMBR  from  DTA10100  where  DTA10100.DTASERIES = @I_sDTASeries  and DTA10100.DTA_GL_Reference = @I_cDTAGLReference  and DTA10100.ACTINDX  = @I_iAccountIndex   open TransGroupWork   select @iCursorError = @@cursor_rows   if @iCursorError = 0  begin  deallocate TransGroupWork  end   else   begin  fetch next from   TransGroupWork  into   @cReferenceNumber,  @iSequenceNumber   while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 20982  break  end   exec @iStatus = dtaValidateStats  @cReferenceNumber,  @I_sDTASeries,  @I_iAccountIndex,  @iSequenceNumber,  @I_mPostingAmount,  @TRUE,  @FALSE,   @tRecordsOKProc output,  @O_tOptionalNoStats output,  @O_tDistHasMDA output,  @O_tZeroAmtMDAExists output,  @cErrorGroupID output,  @cDocumentNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   if @tRecordsOKProc = @FALSE  select @tRecordsOK = @FALSE   if @tOptionalNoStatsProc = @TRUE  select @tOptionalNoStats = @TRUE   if @tDistHasMDAProc = @TRUE  select @tDistHasMDA = @TRUE   if @tZeroAmtMDAExistsProc = @TRUE  select @tZeroAmtMDAExists = @TRUE   fetch next from   TransGroupWork  into   @cReferenceNumber,  @iSequenceNumber  end    deallocate TransGroupWork   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   select  @O_tRecordsOK = @tRecordsOK,  @O_tOptionalNoStats = @tOptionalNoStats,  @O_tDistHasMDA = @tDistHasMDA,  @O_tZeroAmtMDAExists = @tZeroAmtMDAExists   end   end   if @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1  commit transaction  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[dtaValidateSummary] TO [DYNGRP]
GO
