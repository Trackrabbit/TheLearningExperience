SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpUpdateYearToDateOpen]  @I_sTransactionType             smallint        = NULL,  @I_iJournalEntry                int             = NULL,  @I_cUserID                      char(15)        = NULL,  @I_iAccountIndex                int             = NULL,  @I_mDebit                       numeric(19,5)   = NULL,  @I_mCredit                      numeric(19,5)   = NULL,  @I_cAuditTrailCode              char(13)        = NULL,  @I_cDescription          char(30)        = NULL,  @I_sQuickOffset          smallint        = NULL,  @I_sYear                        smallint        = NULL,  @I_sPostedFrom                  smallint        = NULL,  @I_dClosingDate          datetime        = NULL,  @I_mRecurringTRXSequence        numeric(19,5)   = NULL,  @I_mExchangeRate                numeric(15,7)   = NULL,  @I_cExchangeTableID             char(15)        = NULL,  @I_cFuncCurrencyID              char(15)        = NULL,  @I_sFuncCurrencyIndex           smallint        = NULL,  @I_tMCRegistered                tinyint  = NULL,  @I_sMCTransaction               smallint        = NULL,  @I_mOrigDebit                   numeric(19,5)   = NULL,  @I_mOrigCredit                  numeric(19,5)   = NULL,  @I_cOrigCurrencyID              char(15)        = NULL,  @I_sOrigCurrencyIndex           smallint        = NULL,  @I_sRateCalculationMethod       smallint        = NULL,  @I_cRateTypeID                  char(15)        = NULL,  @I_cOriginatingDocNumber char(21) = NULL,  @I_cOriginatingControlNumber char(21) = NULL,  @I_cOriginatingMasterID char(31) = NULL,  @I_cOriginatingMasterName char(65) = NULL,  @I_sOriginatingTrxType smallint = NULL,  @I_cOriginatingTRXDesc char(30) = NULL,  @I_sOrigDTASeries smallint = NULL,  @I_iOrigSequenceNumber int  = NULL,  @I_nSequenceLine numeric(19,5) = NULL,  @I_sDTAGLStatus smallint = NULL,  @I_nDTAIndex numeric(19,5) = NULL,  @I_nDenomExchangeRate numeric(15,7) = NULL,  @I_sMCTrxState smallint = NULL,  @I_dDocumentDate datetime = NULL,  @I_iPostingNumber int  = NULL,  @I_iPeriodPostingNumber int  = NULL,  @I_cCorrespondingUnit char(5)  = NULL,  @I_sPeriodID                    smallint        = NULL,  @O_iErrorState                  int             = NULL output as  declare  @TRUE                           tinyint,  @FALSE                          tinyint,  @CURRENT_YEAR                   smallint,  @HISTORY_PNL                    smallint,  @HISTORY_BBF                    smallint,  @YEAR_END_CLOSE_PNL             smallint,  @YEAR_END_CLOSE_BBF             smallint,  @AUTO_REV_TRX                   smallint,  @BUSINESS_FORM                  smallint,  @CLEARING_TRX                   smallint,  @FINANCIAL                      smallint,  @NORMAL_TRX                     smallint,  @DEFAULT_DATE                   datetime,  @GL_TRANSACTION                 smallint,  @MC_TRANSACTION                 smallint,  @MC_CLEARING_TRANSACTION        smallint,  @tTransaction                   tinyint,  @cBatchNumber                   char(15),  @dLastDateEdited                datetime,  @cLastUser                      char(15),  @mNoteIndex                     numeric(19,5),  @dOriginatingPostedDate         datetime,  @cOriginatingTRXSource          char(13),  @mRecurringTRXSequence          numeric(19,5),  @cReference                     char(30),  @dReversingDate                 datetime,  @mSequenceLine                  numeric(19,5),  @sSeries                        smallint,  @cSourceDocument                char(10),  @dTRXDate                       datetime,  @sTransactionType               smallint,  @cUserWhoPosted                 char(15),  @cCurrencyID                    char(15),  @sCurrencyIndex                 smallint,  @cRateTypeID                    char(15),  @cExchangeTableID               char(15),  @cDBName char(5),  @mExchangeRate                 numeric(15,7),  @dExchangeDate                  datetime,  @dTime                          datetime,  @sRateCalculationMethod         smallint,  @tICTransaction tinyint,  @cOriginatingCompanyID char(5),  @iOriginatingJournalEntry int,  @tNewPolledTransaction          tinyint,  @sNewOriginatingType            smallint,  @cNewOriginatingSource          char(15),  @cNewOriginatingTRXSource       char(13),  @cNewSourceDocument             char(10),  @cNewReference                  char(30),  @sNewOriginatingTRXType         smallint,  @cOriginatingControlNumber      char(21),  @cOriginatingDocumentNumber     char(21),  @cOriginatingMasterID           char(31),  @cOriginatingMasterName char(65),  @dNewOriginatingPostedDate      datetime,  @dNewDate                       datetime,  @FAModuleID char(2),   @iError                         int,  @iStatus                        int,  @tLoop                          tinyint,  @sDefaultDate char(12),  @dMinDate datetime,  @iOriginalJE int,  @sOriginalJEYear smallint,  @nOriginalJESeqNum numeric(19,5),  @nLedgerID int,  @AdjustmentTrx smallint,  @cBatchSource            char(15),  @cApprovalUser           char(15),  @dApprovalDate    datetime  select   @O_iErrorState = 0,  @iStatus       = 0  select @cDBName = db_name()  exec @iStatus = smGetMinDate @dMinDate output  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin  select @tLoop = 1   if      @I_sTransactionType             is NULL or  @I_iJournalEntry                is NULL or  @I_cUserID                      is NULL or  @I_iAccountIndex                is NULL or  @I_mDebit                       is NULL or  @I_mCredit                      is NULL or  @I_cAuditTrailCode              is NULL or  @I_cDescription                 is NULL or  @I_sQuickOffset                 is NULL or  @I_sYear                        is NULL or  @I_sPostedFrom                  is NULL or  @I_dClosingDate                 is NULL or  @I_mRecurringTRXSequence        is NULL or  @I_mExchangeRate                is NULL or  @I_cExchangeTableID             is NULL or   @I_cFuncCurrencyID              is NULL or   @I_sFuncCurrencyIndex           is NULL or   @I_tMCRegistered                is NULL or   @I_sMCTransaction               is NULL or   @I_mOrigDebit                   is NULL or   @I_mOrigCredit                  is NULL or   @I_cOrigCurrencyID              is NULL or   @I_sOrigCurrencyIndex           is NULL or   @I_sRateCalculationMethod       is NULL or  @I_cRateTypeID                  is NULL or  @I_cOriginatingDocNumber is NULL or  @I_cOriginatingControlNumber is NULL or  @I_cOriginatingMasterID is NULL or  @I_cOriginatingMasterName is NULL or  @I_sOriginatingTrxType is NULL or  @I_cOriginatingTRXDesc is NULL or  @I_sOrigDTASeries is NULL or  @I_iOrigSequenceNumber is NULL or  @I_nSequenceLine is NULL or  @I_sDTAGLStatus is NULL or  @I_nDTAIndex is NULL or  @I_nDenomExchangeRate is NULL or  @I_sMCTrxState is NULL or  @I_dDocumentDate is NULL or  @I_iPostingNumber is NULL or  @I_iPeriodPostingNumber is NULL or   @I_cCorrespondingUnit is NULL or  @I_sPeriodID                    is NULL   begin  select @O_iErrorState = 20039  break  end    select  @TRUE                   = 1,  @FALSE                  = 0,  @CURRENT_YEAR           = 1,  @HISTORY_PNL            = 2,  @HISTORY_BBF            = 3,  @YEAR_END_CLOSE_PNL     = 4,  @YEAR_END_CLOSE_BBF     = 5,  @AUTO_REV_TRX           = 4,  @BUSINESS_FORM          = 5,  @CLEARING_TRX           = 2,  @FINANCIAL              = 2,  @NORMAL_TRX             = 1,  @FAModuleID  = 'FA',    @DEFAULT_DATE  = @dMinDate,  @GL_TRANSACTION  = 0,  @MC_TRANSACTION  = 1,  @MC_CLEARING_TRANSACTION = 2   select  @tNewPolledTransaction  = 0,  @sNewOriginatingTRXType  = @I_sOriginatingTrxType,  @cOriginatingControlNumber      = @I_cOriginatingControlNumber,  @cOriginatingDocumentNumber     = @I_cOriginatingDocNumber,  @cOriginatingMasterID           = @I_cOriginatingMasterID,  @cOriginatingMasterName  = @I_cOriginatingMasterName,  @mExchangeRate   = @I_mExchangeRate,  @iOriginalJE   = 0,  @sOriginalJEYear  = 0,  @nOriginalJESeqNum  = 0,  @nLedgerID   = 0,  @AdjustmentTrx   = 0   exec @iStatus = smGetDefaultDate @sDefaultDate output   if @I_sTransactionType = @AUTO_REV_TRX  select @sNewOriginatingType = @NORMAL_TRX  else  select @sNewOriginatingType = @I_sTransactionType   if @I_sPostedFrom = @YEAR_END_CLOSE_BBF or @I_sPostedFrom = @YEAR_END_CLOSE_PNL  begin   exec @iStatus = DYNAMICS.dbo.smGetMsgString  10023,                    @cDBName,  @cNewReference  output,  @O_iErrorState          output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0  break   exec @iStatus = DYNAMICS.dbo.smGetMsgString  12052,                    @cDBName,  @cNewOriginatingSource  output,  @O_iErrorState                  output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0  break   select  @cLastUser                      = @I_cUserID,  @cUserWhoPosted                 = @I_cUserID,  @dLastDateEdited                = @I_dClosingDate,  @dNewOriginatingPostedDate      = @sDefaultDate,  @cNewOriginatingTRXSource       = @I_cAuditTrailCode,  @sNewOriginatingTRXType         = 0,  @cOriginatingControlNumber      = ' ',  @cOriginatingDocumentNumber     = ' ',  @cOriginatingMasterID           = ' ',  @cOriginatingMasterName         = ' ',  @mRecurringTRXSequence          = 1.0,  @sSeries                        = @FINANCIAL,  @cCurrencyID                    = @I_cOrigCurrencyID,  @sCurrencyIndex                 = @I_sOrigCurrencyIndex,  @cRateTypeID                    = @I_cRateTypeID,  @cExchangeTableID               = @I_cExchangeTableID,  @dExchangeDate                  = @DEFAULT_DATE,  @dTime                          = @DEFAULT_DATE,  @sRateCalculationMethod         = @I_sRateCalculationMethod,  @tICTransaction   = @FALSE,   @cOriginatingCompanyID  = '',  @iOriginatingJournalEntry = 0,   @mNoteIndex                     = 0.0   end   else  begin  if @I_sTransactionType = @NORMAL_TRX    or  @I_sTransactionType = @CLEARING_TRX  or  @I_sTransactionType = @AUTO_REV_TRX  begin  select   @cBatchNumber                   = BACHNUMB,  @dLastDateEdited                = LSTDTEDT,  @cLastUser                      = LASTUSER,  @mNoteIndex                     = NOTEINDX,  @dOriginatingPostedDate         = ORPSTDDT,  @cOriginatingTRXSource          = ORTRXSRC,  @mRecurringTRXSequence          = @I_mRecurringTRXSequence,  @cNewReference                  = REFRENCE,  @dReversingDate          = RVRSNGDT,  @mSequenceLine                  = SQNCLINE,  @sSeries                        = SERIES,  @cSourceDocument                = SOURCDOC,  @dTRXDate                       = TRXDATE,  @sTransactionType               = TRXTYPE,  @cUserWhoPosted          = USWHPSTD,  @cCurrencyID                    = CURNCYID,  @cRateTypeID                    = RATETPID,  @cExchangeTableID               = EXGTBLID,  @dExchangeDate                  = EXCHDATE,  @dTime                          = TIME1,  @sRateCalculationMethod         = RTCLCMTD,  @tICTransaction   = ICTRX,   @cOriginatingCompanyID  = ORCOMID,  @iOriginatingJournalEntry = ORIGINJE,  @iOriginalJE               = Original_JE,  @sOriginalJEYear          = Original_JE_Year,  @nOriginalJESeqNum        = Original_JE_Seq_Num,  @nLedgerID   = Ledger_ID,  @AdjustmentTrx   = Adjustment_Transaction,  @cBatchSource    = BCHSOURC  from  GL10000 with (NOLOCK)  where  JRNENTRY = @I_iJournalEntry   if @@rowcount <> 1   begin  select @O_iErrorState = 20040  break  end   if @I_sPeriodID = 0  begin  select @AdjustmentTrx = 0  end  if @I_sTransactionType = @CLEARING_TRX  begin  if @I_sMCTransaction = @MC_CLEARING_TRANSACTION  select  @cCurrencyID = @I_cOrigCurrencyID,  @sCurrencyIndex = @I_sOrigCurrencyIndex,  @mExchangeRate = round ((@I_mDebit - @I_mCredit)/(@I_mOrigDebit - @I_mOrigCredit), 7)  else if @I_sMCTransaction = @MC_TRANSACTION or  @I_sMCTransaction = @GL_TRANSACTION  select  @cCurrencyID = @I_cFuncCurrencyID,  @sCurrencyIndex = @I_sFuncCurrencyIndex  else  begin  select @O_iErrorState = 20786  break  end   end   else  select @sCurrencyIndex = @I_sOrigCurrencyIndex   if @cBatchNumber = @I_cUserID  select @cNewOriginatingSource = ' '  else  select @cNewOriginatingSource = @cBatchNumber   if @sSeries = @FINANCIAL and @cOriginatingCompanyID = '' and substring(@cOriginatingTRXSource,1,2) <> 'CM'  if substring(@cOriginatingTRXSource,1,2) = @FAModuleID  select  @cNewOriginatingTRXSource       = @cOriginatingTRXSource,  @sNewOriginatingTRXType         = @sTransactionType,  @dNewOriginatingPostedDate      = @sDefaultDate  else  select  @cNewOriginatingTRXSource       = @I_cAuditTrailCode,  @sNewOriginatingTRXType         = @sTransactionType,  @dNewOriginatingPostedDate      = @sDefaultDate  else  select  @cNewOriginatingTRXSource       = @cOriginatingTRXSource,  @sNewOriginatingTRXType         = @I_sOriginatingTrxType,  @dNewOriginatingPostedDate      = @dOriginatingPostedDate  end   else if @I_sTransactionType = @BUSINESS_FORM  begin  select   @cBatchNumber           = BSNSFMID,  @dLastDateEdited        = LSTDTEDT,  @cLastUser              = LASTUSER,  @mNoteIndex             = NOTEINDX,  @cNewReference          = REFRENCE,  @mSequenceLine          = SQNCLINE,  @cSourceDocument        = SOURCDOC,  @dTRXDate               = TRXDATE,  @cUserWhoPosted  = USWHPSTD  from  GL10100 with (NOLOCK)  where  JRNENTRY = @I_iJournalEntry   if @@rowcount <> 1   begin  select @O_iErrorState = 20144  break  end    select  @dNewOriginatingPostedDate   = @sDefaultDate,  @cNewOriginatingSource          = @cBatchNumber,  @cNewOriginatingTRXSource       = @I_cAuditTrailCode,  @sNewOriginatingTRXType         = 0,  @mRecurringTRXSequence          = 1.0,  @sSeries                        = @FINANCIAL,  @sCurrencyIndex                 = @I_sOrigCurrencyIndex,  @cRateTypeID                    = @I_cRateTypeID,  @cExchangeTableID               = @I_cExchangeTableID,  @dExchangeDate                  = @DEFAULT_DATE,  @dTime                          = @DEFAULT_DATE,  @sRateCalculationMethod         = @I_sRateCalculationMethod,  @tICTransaction   = @FALSE,   @cOriginatingCompanyID  = '',  @iOriginatingJournalEntry = 0,  @nLedgerID   = 1,  @AdjustmentTrx   = 0  if @I_tMCRegistered = @TRUE  select @cCurrencyID = @I_cFuncCurrencyID  else  select @cCurrencyID = ' '   end   if @I_sPostedFrom = @CURRENT_YEAR  begin  select @cNewSourceDocument = @cSourceDocument  if @I_sTransactionType = @AUTO_REV_TRX  select @dNewDate = @dReversingDate  else  select @dNewDate = @dTRXDate  end   else  begin  select @dNewDate = @I_dClosingDate  if @I_sPostedFrom = @HISTORY_BBF or @I_sPostedFrom = @YEAR_END_CLOSE_BBF  begin  exec @iStatus = DYNAMICS.dbo.smGetMsgString  12030,                    @cDBName,  @cNewSourceDocument     output,  @O_iErrorState          output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0  break  end   else if @I_sPostedFrom = @HISTORY_PNL or @I_sPostedFrom = @YEAR_END_CLOSE_PNL  begin  exec @iStatus = DYNAMICS.dbo.smGetMsgString  12125,                    @cDBName,  @cNewSourceDocument     output,  @O_iErrorState          output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0  break  end    end   end    if @I_cOriginatingTRXDesc <> ' '   select @cNewReference = @I_cOriginatingTRXDesc  select @cApprovalUser = APRVLUSERID,@dApprovalDate = APPRVLDT from SY00500 WHERE BACHNUMB = @cBatchNumber and BCHSOURC = @cBatchSource   insert   into   GL20000 (  JRNENTRY,  RCTRXSEQ,  TRXDATE,  ACTINDX,  OPENYEAR,  SOURCDOC,  REFRENCE,  DSCRIPTN,  TRXSORCE,  DEBITAMT,  CRDTAMNT,  POLLDTRX,  LASTUSER,  LSTDTEDT,  USWHPSTD,  ORGNTSRC,  ORGNATYP,  QKOFSET,  SERIES,  ORTRXTYP,  ORCTRNUM,  ORMSTRID,  ORMSTRNM,  ORDOCNUM,  ORPSTDDT,  ORTRXSRC,  OrigDTASeries,  OrigSeqNum,  SEQNUMBR,  DTA_GL_Status,  DTA_Index,  CURNCYID,  CURRNIDX,  RATETPID,  EXGTBLID,  XCHGRATE,  EXCHDATE,  TIME1,  RTCLCMTD,  ORDBTAMT,  ORCRDAMT,  ICTRX,   ORCOMID,   ORIGINJE,   NOTEINDX,  DENXRATE,  MCTRXSTT,  DOCDATE,  PSTGNMBR,  PPSGNMBR,  CorrespondingUnit,  Original_JE,  Original_JE_Year,  Original_JE_Seq_Num,  Ledger_ID,  Adjustment_Transaction,  PERIODID,  APRVLUSERID,  APPRVLDT)  values (  @I_iJournalEntry,                 @mRecurringTRXSequence,   @dNewDate,                        @I_iAccountIndex,                 @I_sYear,                                 @cNewSourceDocument,      @cNewReference,           @I_cDescription,                  @I_cAuditTrailCode,               @I_mDebit,                        @I_mCredit,                       @tNewPolledTransaction,   @cLastUser,                       @dLastDateEdited,                 @I_cUserID,                       @cNewOriginatingSource,           @sNewOriginatingType,     @I_sQuickOffset,                  @sSeries,                                 @sNewOriginatingTRXType,          @cOriginatingControlNumber,  @cOriginatingMasterID,  @cOriginatingMasterName,  @cOriginatingDocumentNumber,  @dNewOriginatingPostedDate,       @cNewOriginatingTRXSource,        @I_sOrigDTASeries,  @I_iOrigSequenceNumber,  @I_nSequenceLine,  @I_sDTAGLStatus,  @I_nDTAIndex,  @cCurrencyID,   @sCurrencyIndex,   @cRateTypeID,   @cExchangeTableID,   @mExchangeRate,  @dExchangeDate,   @dTime,   @sRateCalculationMethod,  @I_mOrigDebit,  @I_mOrigCredit,  @tICTransaction,  @cOriginatingCompanyID,  @iOriginatingJournalEntry,  @mNoteIndex,  @I_nDenomExchangeRate,  @I_sMCTrxState,  @I_dDocumentDate,  @I_iPostingNumber,  @I_iPeriodPostingNumber,  @I_cCorrespondingUnit,  @iOriginalJE,  @sOriginalJEYear,  @nOriginalJESeqNum,  @nLedgerID,  @AdjustmentTrx,  @I_sPeriodID,  ISNULL(@cApprovalUser,''),  ISNULL(@dApprovalDate,'1900-01-01 00:00:00.000'))   if @@rowcount <> 1  begin  select @O_iErrorState = 20041  break   end   end   if @iStatus <> 0 or @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1  commit transaction  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[glpUpdateYearToDateOpen] TO [DYNGRP]
GO
