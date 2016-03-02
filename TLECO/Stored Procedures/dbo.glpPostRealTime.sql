SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpPostRealTime]  @I_iSQLSessionID                int             = NULL,  @I_sTransactionType             smallint        = NULL,  @I_iJournalEntry                int             = NULL,  @I_cUserID                      char(15)        = NULL,  @I_cBatchSource                 char(15)        = NULL,   @I_cBatchNumber                 char(15)        = NULL,     @I_tPrintDistributions          tinyint         = NULL,   @I_bBatchValid                  binary(4)       = NULL,  @I_sCompanyID                   smallint        = NULL,  @I_cFuncCurrencyID              char(15)        = NULL,   @I_sFuncCurrencyIndex           smallint        = NULL,  @I_sFuncDecimalPlaces           smallint        = NULL,  @I_tMCRegistered                tinyint         = NULL,  @I_tMCReport                    tinyint         = NULL,  @I_tICRegistered                tinyint         = NULL,  @I_cIntercompanyID char(5)   = NULL,  @I_cProduct char(30) = NULL,  @I_tMDARegistered tinyint  = NULL,  @I_tCalculateGLTaxes tinyint  = NULL,  @I_tUseTaxPeriods        tinyint         = NULL,  @IO_cOpenAuditTrailCode  char(13)        = NULL  output,  @IO_cHistoryAuditTrailCode      char(13)        = NULL  output,   @O_mSequenceLine                numeric(19,5)   = NULL  output,  @O_bHeaderMessages              binary(4)       = NULL  output,  @O_bHeaderMessages2             binary(4)       = NULL  output,  @O_bLineMessages                binary(4)       = NULL  output,   @O_bLineMessages2               binary(4)       = NULL  output,   @O_bOffsetMessages              binary(4)       = NULL  output,   @O_bOffsetMessages2             binary(4)       = NULL  output,   @O_iPostErrorState              int             = NULL  output as  declare  @TRUE                   tinyint,  @FALSE                  tinyint,  @SINGLE_USE             smallint,  @BUSINESS_FORM   smallint,  @MS_ITEM_1              int,   @DEFAULT_DATE           datetime,  @iPrintErrorState       int,  @iError                 int,  @iStatus                int,  @sCurrencyIndex         smallint,  @sDecimalPlaces         smallint,  @sTRX_WINDOW smallint,  @cICOpenAuditTrailCode char(13),  @cICHistAuditTrailCode  char(13),  @iRelationID int,  @sUserLevel smallint,  @iAccessAllAccounts int,  @tALSRegistered tinyint,  @cCompanyID char(5),  @tICEREnabled tinyint ,  @ICMODULEID smallint,  @AllowReportingLedgers tinyint  set deadlock_priority low set arithabort off set nocount on  select   @O_mSequenceLine        = 0.0,  @O_bHeaderMessages      = 0,  @O_bHeaderMessages2     = 0,  @O_bLineMessages        = 0,   @O_bLineMessages2       = 0,   @O_bOffsetMessages      = 0,   @O_bOffsetMessages2     = 0,   @O_iPostErrorState      = 0,  @TRUE                   = 1,  @FALSE                  = 0,  @SINGLE_USE             = 1,  @BUSINESS_FORM   = 5,  @MS_ITEM_1              = power(2,24),  @sTRX_WINDOW  = 1,  @iStatus                = 0,  @cICOpenAuditTrailCode = ' ',  @cICHistAuditTrailCode  = ' ',  @iRelationID   = 0,  @sUserLevel    = 0,  @iAccessAllAccounts  = 0,  @tICEREnabled  = 0,  @ICMODULEID  = 22 exec @iStatus = smGetMinDate @DEFAULT_DATE output  select @AllowReportingLedgers = (select Allow_Reporting_Ledgers from GL40000)  select @cCompanyID = db_name()  exec @iStatus = DYNAMICS..smGetAccountLevelSecurityInfo  @cCompanyID,  @iRelationID output,  @sUserLevel  output,  @iAccessAllAccounts output,  @tALSRegistered output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @@trancount <> 0 begin  select @O_iPostErrorState = 20725  return end    create table #MCAccounts(  AccountIndex  int not null,  CurrencyID  char(15) not null,  CurrencyIndex smallint not null,  FunctionalDebit  numeric(19,5)  not null,  FunctionalCredit  numeric(19,5)  not null,  OriginatingDebit  numeric(19,5)  not null,  OriginatingCredit  numeric(19,5)  not null)   create table #Distributions(  SQLSessionID  int not null,   AllocationIndex  int not null,   DistributionIndex  int not null,   Percentage  numeric(19,5)  not null,   LineMessage  binary(4) not null,  LineMessages2  binary(4) not null,   AccountType  smallint not null,   Active  tinyint not null,  Debit  numeric(19,5)  not null,   Credit  numeric(19,5)  not null,   OriginatingDebit numeric(19,5)  not null,  OriginatingCredit numeric(19,5)  not null,  PostingType  smallint not null,   AllocationType  smallint not null,   Segment  char(66) not null,  UnitDecimalPlaces  smallint not null,  CurrencyID  char(15) not null,  Verified        tinyint not null)   create table #HistorySetup (  SQLSessionID int not null,   KeepingTransactionHistory  tinyint not null,   KeepingAccountHistory  tinyint not null,   KeepingMCSummaryHistory  tinyint not null,  DivisionalClosing  tinyint not null,   RetainedEarningsIndex  int not null,   DivisionalAccountSegment  smallint not null,   BeforeSegmentLength  tinyint not null,   DivisionalSegmentLength  tinyint not null,   AfterSegmentLength  tinyint not null,   ClosingDate  datetime not null)   create table #Breakdowns (  SQLSessionID  int not null,  AllocationIndex  int not null,  DistributionIndex  int not null,  BreakdownIndex  int not null,  Percentage  numeric(19,5)  not null,  LineMessage  binary(4) not null,  AccountType  smallint not null,  Active  tinyint not null,  Debit  numeric(19,5)  not null,  Credit  numeric(19,5)  not null,  AllocationType  smallint not null)   create table #RetainedEarn (  tVerified               int             not null,  iSQLSessionID           int             not null,  cSegment                char(66)        not null,  iAccountIndex           int             not null,  sAccountType            smallint        not null,  sPostingType            smallint        not null,  tActive                 tinyint  not null,  sFixedOrVariable        smallint        not null,  bLineMessages           binary(4)       not null,  tDistributionsExist  tinyint      not null,  cCurrencyID             char(15)  not null,)  create table #AcctCurrency (  iAccountIndex    int    not null,  cCurrencyID             char(15)  not null,  sCurrencyIndex          smallint  not null,  sAccountType            smallint   not null,  bLineMessages2   binary(4)   not null,  mFuncDebit              numeric(19,5)   not null,  mFuncCredit             numeric(19,5)   not null,  mOrigDebit              numeric(19,5)   not null,  mOrigCredit             numeric(19,5)   not null,  sOrigDecimalPlaces      smallint  not null,  sRateCalcMethod  smallint  not null,  cRateTypeID             char(15)  not null,  cExchangeTableID        char(15)  not null,  tVerified               int    not null)   create table #Breakout (  IntercompanyID char(5)  not null,  DestICID char(5)  not null,  UserAccess tinyint not null,  FunctionalDebitTotal   numeric(19,5) not null,  FunctionalCreditTotal   numeric(19,5) not null,  OriginatingDebitTotal  numeric(19,5) not null,  OriginatingCreditTotal  numeric(19,5) not null,  CompanyID smallint not null,  AccountIndex int not null,  SequenceLine numeric(19,0) not null IDENTITY(500,500),  ExchangeRate numeric(15,7) not null,  DecimalPlaces smallint not null,  RateCalculationMethod smallint not null,  CurrencyIndex smallint not null,  RateTypeID char(15) not null,  ExchangeTableID char(15) not null,  ExchangeDate datetime not null,  ExchangeTime datetime not null,  DenomExchangeRate numeric(15,7) not null,  MCTrxState smallint not null,  CorrespondingUnit char(5)  NOT nUll)  create table #Company (  IntercompanyID char(5)  not null,  CompanyName char(64)  not null,  CompanyID smallint  not null,  UserAccess tinyint not null,  FunctionalCurrency char(15) not null,  SourceDocument char(11) not null,  BatchNumber char(15) not null,  LineMessages2 binary(4) not null,  DatabaseName char(10) not null)  create table #TRXHeader (  JournalEntry int not null,  BatchNumber char(15) not null,  BatchSource char(15) not null,  TransactionType smallint not null,  SourceDocument char(10) not null,  Series smallint not null,  Reference char(31) not null,  TRXSource char(13) not null,  ReversingTRXSource char(13) not null,  RecurringTRX smallint not null,  RecurringTRXSequence numeric(19,5) not null,  TransactionDate datetime not null,  TransactionPeriodID smallint not null,  TransactionYear smallint not null,  TransactionClosingYear smallint not null,  TransactionHistory tinyint not null,  ReversingDate datetime not null,  ReversingPeriodID smallint not null,  ReversingYear smallint not null,  ReversingClosingYear smallint not null,  ReversingHistory tinyint not null,  CurrencyID char(15) not null,  CurrencyIndex smallint not null,  RateTypeID char(15) not null,  ExchangeTableID char(15) not null,  ExchangeRate numeric(15,7) not null,  ExchangeDate datetime not null,  ExchangeTime datetime not null,  RateCalculationMethod smallint not null,  BalanceForCalculation smallint not null,  ControlBalance numeric(19,5) not null,  OffsetAccountIndex int not null,  OffsetAccountType smallint not null,  OffsetFixedOrVariable smallint not null,  OffsetPostingType smallint not null,  PostingStatus smallint not null,  HeaderValid binary(4) not null,  HeaderMessages binary(4) not null,  HeaderMessages2 binary(4) not null,  ICTransaction tinyint not null,  ICDistributionsExist tinyint not null,  OrigIntercompanyID char(5)  not null,  OrigTransactionSource char(13) not null,  OrigDTASeries smallint not null,  DTAIndex numeric(19,5) not null,  DenomExchangeRate numeric(15,7) not null,  MCTrxState smallint not null,  DocumentDate datetime not null,  TaxDate datetime not null,  OriginalJE int   not null,  OriginalJEYear     smallint     not null,  OriginalJESeqNum numeric(19,5) not null,  CorrectingTrxType     int     not null,  Ledger_ID int not null,  Adjustment_Transaction tinyint not null)   create table #LineItems (  IntercompanyID char(5)  not null,  CompanyID smallint not null,  FunctionalCurrency char(15) not null,  SequenceLine numeric(19,5) not null,  AccountIndex int not null,  TRXDebit   numeric(19,5)  not null,  TRXCredit   numeric(19,5)  not null,  OriginatingDebit numeric(19,5) not null,  OriginatingCredit numeric(19,5) not null,  Description char(31) not null,  CurrencyIndex smallint not null,  RateTypeID char(15) not null,  ExchangeTableID char(15) not null,  ExchangeRate numeric(15,7) not null,  ExchangeDate datetime not null,  ExchangeTime datetime not null,  RateCalculationMethod smallint not null,  LineValid binary(4) not null,  AccountType smallint not null,  FixedOrVariable smallint not null,  BalanceForCalculation smallint not null,  PostingType smallint not null,  DecimalPlaces smallint not null,  OrigControlNumber char(21) not null,  OrigDocumentNumber char(21) not null,  OrigMasterID char(31) not null,  OrigMasterName char(65) not null,  OrigTransactionType smallint not null,  OrigTRXDesc char(30) not null,  OrigSeqNum int not null,  DTAGLStatus smallint not null,  LineMessages2 binary(4) not null,  DatabaseName char(10) not null,   SystemGenerated tinyint not null,  DenomExchangeRate numeric(15,7) not null,  MCTrxState smallint not null,  LineStatus smallint not null,  CorrespondingUnit char(5)  not null)   create table #DistErrors(  SQLSessionID  int not null,   AllocationIndex  int not null,   DistributionIndex  int not null,   DistMessages2  binary(4) not null)   create table #ReportSetup (  PrintDistributions tinyint not null,  MCRegistered tinyint not null,  MCReport tinyint not null)   create table #DTATempWork(  GROUPID char(15) not null,  ROUNDAMT numeric(19,5) not null,  GROUPAMT  numeric(19,5) not null,   CODEID char(15) not null,  SEQNUMBR int not null,  PERCENTAMOUNT smallint not null)    create table #AccountNumberInfo (  AccountType         smallint not NULL,  Active              tinyint not NULL,  AccountCategory smallint not NULL,  FixedOrVariable         smallint not NULL,  BalanceForCalculation   smallint not NULL,  PostingType             smallint not NULL,  UnitDecimalPlaces       smallint not NULL)   create table #accttype   (AccountType smallint)   create table #REAccount (ACCTTYPE smallint,  PSTNGTYP smallint,  ACTIVE tinyint,  FXDORVAR smallint,  ACTINDX  int)  select @I_bBatchValid = @I_bBatchValid | @MS_ITEM_1  if @I_tICRegistered = @TRUE  select @tICEREnabled = @TRUE where   exists( select  1   from   DYNAMICS..SY80000   where   MODULEID = @ICMODULEID   and  (MODOPTIONS | @MS_ITEM_1) = @MS_ITEM_1) else  select @tICEREnabled = @FALSE  if @I_tMCRegistered = @TRUE and   @I_sTransactionType <> @BUSINESS_FORM begin  exec @iStatus = glpmcVerifyCurrency  @I_sCompanyID,  @I_cFuncCurrencyID,  @DEFAULT_DATE,  1.0000,  ' ',  @DEFAULT_DATE,   @FALSE,  @TRUE,   @TRUE,   @FALSE,   ' ',  @DEFAULT_DATE,  0,      @O_bHeaderMessages2     output,  @sCurrencyIndex         output,  @sDecimalPlaces         output,  @O_iPostErrorState      output    select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iPostErrorState <> 0   return (@iStatus) end   exec @iStatus = glpPostTransaction  @I_iSQLSessionID,  @I_sTransactionType,  @TRUE,              @TRUE,              @TRUE,              @I_iJournalEntry,  @I_cUserID,  @I_cBatchSource,  @I_cBatchNumber,  @SINGLE_USE,  @I_tPrintDistributions,  @I_bBatchValid,  @TRUE,      @I_sCompanyID,  @I_cFuncCurrencyID,  @I_sFuncCurrencyIndex,  @I_sFuncDecimalPlaces,  @I_tMCRegistered,  @I_tMCReport,  @I_cProduct,   @sTRX_WINDOW,     @I_tICRegistered,  @I_cIntercompanyID,  @I_tMDARegistered,  @I_tCalculateGLTaxes,   @tICEREnabled,  @I_tUseTaxPeriods,  @AllowReportingLedgers,  @IO_cOpenAuditTrailCode output,  @IO_cHistoryAuditTrailCode      output,  @cICOpenAuditTrailCode output,   @cICHistAuditTrailCode output,   @O_mSequenceLine                output,  @O_bHeaderMessages              output,  @O_bHeaderMessages2             output,  @O_bLineMessages                output,  @O_bLineMessages2               output,  @O_bOffsetMessages              output,  @O_bOffsetMessages2             output,  @iPrintErrorState               output,  @O_iPostErrorState              output  select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  exec @iStatus = glpGetAccountInfo  @I_cIntercompanyID,  @I_tICRegistered,  @I_sCompanyID,  @I_cUserID,  @iRelationID,  @sUserLevel,  @iAccessAllAccounts,  @tALSRegistered,  @iPrintErrorState  output   select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  set deadlock_priority normal set arithabort on set nocount off  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[glpPostRealTime] TO [DYNGRP]
GO
