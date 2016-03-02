SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
create procedure [dbo].[dtaPostReversingCodes]  @I_sDTASeries smallint        = NULL,  @I_cDTAReference char(25) = NULL,  @I_iAccountIndex        int             = NULL,  @I_iRecurringSequenceLine int  = NULL,  @I_iReversingSequenceLine int  = NULL,  @I_cDTAGLReference char(25) = NULL,  @I_cNewDTARefRecurring char(25) = NULL,  @I_cNewDTARefReversing char(25) = NULL,  @I_iSequenceNumber int  = NULL,  @I_sPostingStatus smallint = NULL,  @I_tReversing tinyint  = NULL,  @I_tRecurring tinyint  = NULL,  @I_dDTATrxDate datetime = NULL,  @O_iErrorState int  = NULL  output as  declare  @TRUE smallint,  @FALSE smallint,  @vGLDELIMITER varchar(1),  @cDTAReference char(25),  @iSequenceNumber int,  @cGroupID char(15),  @vDocumentNumber varchar(21),  @sDocumentType smallint,  @nGroupAmount numeric(19,5),  @iJournalEntry int,  @dTransactionDate datetime,  @iNewSequenceNumber int,  @cPrevDTAReference char(25),  @iPrevSequenceNumber int,  @tLoop tinyint,  @iCursorError int,  @iStatus int,  @iError int  select @O_iErrorState = 0  select @iNewSequenceNumber = 1  while (@tLoop is NULL) begin  select @tLoop = 1   if @I_sDTASeries is NULL or  @I_cDTAReference is NULL or  @I_iAccountIndex        is NULL or  @I_iRecurringSequenceLine is NULL or  @I_iReversingSequenceLine is NULL or  @I_cDTAGLReference is NULL or  @I_cNewDTARefRecurring is NULL or  @I_cNewDTARefReversing is NULL or  @I_iSequenceNumber is NULL or  @I_sPostingStatus is NULL or  @I_tReversing is NULL or  @I_tRecurring is NULL or  @I_dDTATrxDate is NULL  begin  select @O_iErrorState = 20968  break  end    select  @FALSE  = 0,  @TRUE = 1   exec @iStatus = DYNAMICS.dbo.smGetConstantString  'DTA_GLREFDELIMITER_DOCUMENT',   @vGLDELIMITER output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   if @I_cDTAGLReference = ''    begin  if @I_tRecurring = @TRUE  begin  insert into DTA10100  (DTASERIES,DTAREF,ACTINDX,SEQNUMBR,GROUPID,DTA_GL_Reference,  DOCNUMBR,RMDTYPAL,GROUPAMT,JRNENTRY,TRXDATE,PSTGSTUS )  select   2,@I_cNewDTARefRecurring,ACTINDX,@I_iRecurringSequenceLine,GROUPID,DTA_GL_Reference,  DOCNUMBR,RMDTYPAL,GROUPAMT,JRNENTRY,TRXDATE,@I_sPostingStatus  from  DTA10100  where  DTAREF  = @I_cDTAReference  and DTASERIES = @I_sDTASeries  and ACTINDX  = @I_iAccountIndex  and SEQNUMBR = @I_iSequenceNumber   insert into DTA10200  (DTASERIES,DTAREF,ACTINDX,SEQNUMBR,GROUPID,CODEID,DOCNUMBR,  RMDTYPAL,POSTDESC,DTAQNTY,CODEAMT,TRXDATE )  select   2,@I_cNewDTARefRecurring,ACTINDX,@I_iRecurringSequenceLine,GROUPID,CODEID,  DOCNUMBR,RMDTYPAL,POSTDESC,DTAQNTY,CODEAMT,TRXDATE  from  DTA10200  where  DTAREF  = @I_cDTAReference  and DTASERIES = @I_sDTASeries  and ACTINDX  = @I_iAccountIndex  and SEQNUMBR = @I_iSequenceNumber  end   If @I_tReversing = @TRUE  begin  insert into DTA10100  (DTASERIES,DTAREF,ACTINDX,SEQNUMBR,GROUPID,DTA_GL_Reference,  DOCNUMBR,RMDTYPAL,GROUPAMT,JRNENTRY,TRXDATE,PSTGSTUS )  select   2,@I_cNewDTARefReversing,ACTINDX,@I_iReversingSequenceLine,GROUPID,DTA_GL_Reference,  DOCNUMBR,RMDTYPAL,(GROUPAMT * -1.0),JRNENTRY,@I_dDTATrxDate,@I_sPostingStatus  from  DTA10100  where  DTAREF  = @I_cDTAReference  and DTASERIES = @I_sDTASeries  and ACTINDX  = @I_iAccountIndex  and SEQNUMBR = @I_iSequenceNumber   insert into DTA10200  (DTASERIES,DTAREF,ACTINDX,SEQNUMBR,GROUPID,CODEID,DOCNUMBR,  RMDTYPAL,POSTDESC,DTAQNTY,CODEAMT,TRXDATE )  select   2,@I_cNewDTARefReversing,ACTINDX,@I_iReversingSequenceLine,GROUPID,CODEID,DOCNUMBR,  RMDTYPAL,POSTDESC,(DTAQNTY * -1.0),(CODEAMT * -1.0),@I_dDTATrxDate  from  DTA10200  where  DTAREF  = @I_cDTAReference  and DTASERIES = @I_sDTASeries  and ACTINDX  = @I_iAccountIndex  and SEQNUMBR = @I_iSequenceNumber  end   end      else     begin  declare  TrxGroup INSENSITIVE  cursor for select  DTAREF,  SEQNUMBR,  GROUPID,  DOCNUMBR,  RMDTYPAL,  GROUPAMT,  JRNENTRY,  TRXDATE  from  DTA10100  where  DTA_GL_Reference = @I_cDTAGLReference  and DTASERIES = @I_sDTASeries  and ACTINDX  = @I_iAccountIndex  ORDER BY  DTASERIES,DTA_GL_Reference,ACTINDX,DTAREF,SEQNUMBR,GROUPID   open TrxGroup   select @iCursorError = @@cursor_rows   if @iCursorError = 0  begin  deallocate TrxGroup  end   else   begin  fetch next from   TrxGroup  into  @cDTAReference,  @iSequenceNumber,  @cGroupID,  @vDocumentNumber,  @sDocumentType,  @nGroupAmount,  @iJournalEntry,  @dTransactionDate   while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 21029  break  end   select @vDocumentNumber = rtrim(@vDocumentNumber)   If @I_tRecurring = @TRUE  begin  insert into DTA10100  (DTASERIES,DTAREF,ACTINDX,SEQNUMBR,GROUPID,DTA_GL_Reference,  DOCNUMBR,RMDTYPAL,GROUPAMT,JRNENTRY,TRXDATE,PSTGSTUS )  values(   2,    CASE  WHEN len(rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefRecurring)) > 25 THEN  SUBSTRING((rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefRecurring)),  (len(rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefRecurring)) - 24),25)  ELSE  (rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefRecurring))  END,  @I_iAccountIndex,@iNewSequenceNumber,@cGroupID, @I_cNewDTARefRecurring,   @vDocumentNumber,@sDocumentType,@nGroupAmount,@iJournalEntry,  @dTransactionDate,@I_sPostingStatus )   insert into DTA10200  (DTASERIES,DTAREF,ACTINDX,SEQNUMBR,GROUPID,CODEID,  DOCNUMBR,RMDTYPAL,POSTDESC,DTAQNTY,CODEAMT,TRXDATE )  select   2,   CASE  WHEN len(rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefRecurring)) > 25 THEN  SUBSTRING((rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefRecurring)),  (len(rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefRecurring)) - 24),25)  ELSE  (rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefRecurring))  END,  @I_iAccountIndex,@iNewSequenceNumber,GROUPID,CODEID,DOCNUMBR,  RMDTYPAL,POSTDESC,DTAQNTY,CODEAMT,TRXDATE  from  DTA10200   where  DTASERIES = @I_sDTASeries  and DTAREF = @cDTAReference  and ACTINDX = @I_iAccountIndex  and SEQNUMBR = @iSequenceNumber  and GROUPID = @cGroupID   end    If @I_tReversing = @TRUE  begin  insert into DTA10100  (DTASERIES,DTAREF,ACTINDX,SEQNUMBR,GROUPID,DTA_GL_Reference,  DOCNUMBR,RMDTYPAL,GROUPAMT,JRNENTRY,TRXDATE,PSTGSTUS )  values(   2,      CASE  WHEN len(rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefReversing)) > 25 THEN  SUBSTRING((rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefReversing)),  (len(rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefReversing)) - 24),25)  ELSE  (rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefReversing))  END,  @I_iAccountIndex,@iNewSequenceNumber,@cGroupID,@I_cNewDTARefReversing,   @vDocumentNumber,@sDocumentType,(@nGroupAmount * -1.0), @iJournalEntry,  @I_dDTATrxDate,@I_sPostingStatus )   insert into DTA10200  (DTASERIES,DTAREF,ACTINDX,SEQNUMBR,GROUPID,CODEID,  DOCNUMBR,RMDTYPAL,POSTDESC,DTAQNTY,CODEAMT,TRXDATE )  select   2,   CASE  WHEN len(rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefReversing)) > 25 THEN  SUBSTRING((rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefReversing)),  (len(rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefReversing)) - 24),25)  ELSE  (rtrim(@vDocumentNumber)+@vGLDELIMITER+rtrim(@I_cNewDTARefReversing))  END,  @I_iAccountIndex,@iNewSequenceNumber,GROUPID,CODEID,DOCNUMBR,  RMDTYPAL,POSTDESC,(DTAQNTY * -1.0),(CODEAMT * -1.0),@I_dDTATrxDate  from  DTA10200   where  DTASERIES = @I_sDTASeries  and DTAREF = @cDTAReference  and ACTINDX = @I_iAccountIndex  and SEQNUMBR = @iSequenceNumber  and GROUPID = @cGroupID   end    select  @cPrevDTAReference = @cDTAReference,  @iPrevSequenceNumber = @iSequenceNumber   fetch next from   TrxGroup  into  @cDTAReference,  @iSequenceNumber,  @cGroupID,  @vDocumentNumber,  @sDocumentType,  @nGroupAmount,  @iJournalEntry,  @dTransactionDate   if (@cPrevDTAReference <> @cDTAReference) or  (@iPrevSequenceNumber <> @iSequenceNumber)  select @iNewSequenceNumber = @iNewSequenceNumber + 1   end    deallocate TrxGroup   end    end     end   return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[dtaPostReversingCodes] TO [DYNGRP]
GO