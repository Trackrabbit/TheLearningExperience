SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGLTransactionHeaderInsert] @I_vBACHNUMB  char(15),    @I_vJRNENTRY  int,          @I_vREFRENCE  char(30),    @I_vTRXDATE  datetime,   @I_vRVRSNGDT  datetime = '',    @I_vTRXTYPE smallint,   @I_vSQNCLINE numeric(19,5) = 0,  @I_vSERIES smallint = 2,   @I_vCURNCYID char(15) = '',   @I_vXCHGRATE numeric(19,7)=0,  @I_vRATETPID char(15) = '',   @I_vEXPNDATE datetime = '',   @I_vEXCHDATE datetime = '',   @I_vEXGTBDSC char(30) = '',   @I_vEXTBLSRC char(50) = '',   @I_vRATEEXPR smallint = -1,     @I_vDYSTINCR smallint = -1,   @I_vRATEVARC numeric(19,7)=0,  @I_vTRXDTDEF smallint = -1,   @I_vRTCLCMTD smallint = -1,   @I_vPRVDSLMT smallint = 0,   @I_vDATELMTS smallint = 0,   @I_vTIME1 datetime = '',   @I_vRequesterTrx smallint = 0,   @I_vSOURCDOC  char(11) = '',   @I_vLedger_ID smallint = 1,   @I_vUSERID char(15) = '',   @I_vAdjustment_Transaction smallint = 0,  @I_vNOTETEXT  varchar(8000) = '',  @I_vUSRDEFND1  char(50) = '',   @I_vUSRDEFND2  char(50) = '',   @I_vUSRDEFND3  char(50) = '',   @I_vUSRDEFND4  varchar(8000) = '',  @I_vUSRDEFND5  varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @RTCLCMTD int,  @aaSubLedgerHdrID int,  @iTempValuesErrState int,  @iTempValuesErrString varchar(255),  @GLHDRVAL int,  @DTATRXType int,  @ORPSTDDT datetime,  @DTAControlNum char(21),  @ORTRXSRC char(13),  @itaProcessAnalyticsErrState int,  @itaProcessAnalyticsErrString varchar(8000),  @exists int,  @aaGLWorkHdrID int,  @EXCHDATE datetime,  @INTERID char(5),  @BCHSOURC char(15),  @SOURCDOC char(11),  @TRXSORCE char(13),  @CURRNIDX smallint,  @PERIODID smallint,   @OPENYEAR smallint,  @CLOSEDYR smallint,  @SQNCLINE numeric(19,5),  @HISTRX tinyint,  @REVPRDID smallint,  @REVYEAR smallint,  @REVCLYR smallint,  @REVHIST smallint,  @TRXTOTAL numeric(19,5),    @TRXTOTAL1 numeric(19,5),    @TRXTOTAL2 numeric(19,5),    @iStatus int,  @iStatement int,  @O_oErrorState int,  @sCompanyID smallint,     @nNextNoteIndex numeric(19,5),    @iGetNextNoteIdxErrState int,    @iUpdtBthErrState int,  @iCustomState int,  @iCustomErrString varchar(255),  @iCreateBatchErrString varchar(255),   @iError int,      @DBName char(50),     @DECPLCUR int,  @FUNLCURR char(15),       @FUNLCIDX smallint,  @incmnt int,  @secondsdgstr varchar(50),  @datedgstr varchar(50),  @DTA_Index numeric (19,5),  @date datetime,  @day int,  @month int,  @hours int,  @year int,  @seconds int,  @minutes int,  @datedg int,  @ISMCTRX int,        @EXGTBLID char(15),     @O_iInitErrorState int,     @oInitErrString varchar(255),    @SEQNUMBR int,  @count int,  @DTAREF char(25),  @ACTINDX int,  @DEBITAMT numeric(19,5),  @CRDTAMNT numeric(19,5),  @MKDTOPST int,  @BACHFREQ smallint,  @DECPLUSED smallint,  @BankRec tinyint,  @BrVoid tinyint,  @TaxExists tinyint,  @ISMCREG tinyint,  @CLOSEDYEAR int,  @Allow_Reporting_Ledgers tinyint,  @ISClosed int  select  @RTCLCMTD = 0,  @aaSubLedgerHdrID = 0,  @iTempValuesErrState = 0,  @iTempValuesErrString = '',  @GLHDRVAL = 0,  @DTATRXType = 0,  @ORPSTDDT = '',  @DTAControlNum = '',  @ORTRXSRC = '',  @itaProcessAnalyticsErrState = 0,  @itaProcessAnalyticsErrString = '',  @exists = 0,  @aaGLWorkHdrID = 0,  @EXCHDATE = '',  @O_iErrorState = 0,  @INTERID = '',  @BCHSOURC = 'GL_Normal',  @SOURCDOC = 'GJ',  @TRXSORCE = '',  @CURRNIDX = 0,  @PERIODID = 0,   @SQNCLINE = 0,  @HISTRX = 0,  @REVPRDID = 0,  @REVYEAR = 0,  @REVCLYR = 0,  @REVHIST = 0,  @TRXTOTAL = 0,  @TRXTOTAL1 = 0,  @TRXTOTAL2 = 0,  @iStatus = 0,  @iStatement = 0,  @O_oErrorState = 0,  @sCompanyID = 0,  @nNextNoteIndex = 0,  @iGetNextNoteIdxErrState = 0,  @iUpdtBthErrState = 0,  @iCustomState = 0,  @iCustomErrString = '',  @iCreateBatchErrString = '',  @iError = 0,  @DBName = '',  @DECPLCUR = 0,  @FUNLCURR = '',  @FUNLCIDX = 0,  @incmnt = 0,  @secondsdgstr = '',  @datedgstr = '',  @DTA_Index = 0,  @date = 0,  @day = 0,  @month = 0,  @hours = 0,  @year = 0,  @seconds = 0,  @minutes = 0,  @datedg = 0,  @ISMCTRX = 0,  @EXGTBLID = '',  @O_iInitErrorState = 0,  @oInitErrString = '',  @SEQNUMBR = 0,  @count = 0,  @DTAREF = '',  @ACTINDX = 0,  @DEBITAMT = 0,  @CRDTAMNT = 0,  @MKDTOPST = 0,  @BACHFREQ = 1,  @DECPLUSED = 0,  @BankRec = 0,  @BrVoid = 0,  @TaxExists = 0,  @ISMCREG = 0,  @CLOSEDYEAR = 0,  @Allow_Reporting_Ledgers = 0,  @ISClosed = 0  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taGLTransactionHeaderInsertPre  @I_vBACHNUMB  output,  @I_vJRNENTRY  output,  @I_vREFRENCE  output,  @I_vTRXDATE  output,  @I_vRVRSNGDT  output,  @I_vTRXTYPE output,  @I_vSQNCLINE output,  @I_vSERIES output,   @I_vCURNCYID output,  @I_vXCHGRATE output,  @I_vRATETPID output,  @I_vEXPNDATE output,  @I_vEXCHDATE output,  @I_vEXGTBDSC output,  @I_vEXTBLSRC output,  @I_vRATEEXPR output,  @I_vDYSTINCR output,  @I_vRATEVARC output,  @I_vTRXDTDEF output,  @I_vRTCLCMTD output,  @I_vPRVDSLMT output,  @I_vDATELMTS output,  @I_vTIME1 output,  @I_vRequesterTrx output,  @I_vSOURCDOC output,  @I_vLedger_ID output,  @I_vUSERID output,  @I_vAdjustment_Transaction output,  @I_vNOTETEXT    output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus = 0) and (@iError <> 0)) begin  select @iStatus = @iError end  if ((@iStatus <> 0) or (@iCustomState <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 121    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ( @I_vBACHNUMB is NULL or  @I_vJRNENTRY is NULL or  @I_vREFRENCE is NULL or  @I_vTRXDATE  is NULL or  @I_vRVRSNGDT is NULL or  @I_vTRXTYPE  is NULL or  @I_vSQNCLINE is NULL or  @I_vSERIES   is NULL or   @I_vCURNCYID is NULL or  @I_vXCHGRATE is NULL or  @I_vRATETPID is NULL or  @I_vEXPNDATE is NULL or  @I_vEXCHDATE is NULL or  @I_vEXGTBDSC is NULL or  @I_vEXTBLSRC is NULL or  @I_vRATEEXPR is NULL or  @I_vDYSTINCR is NULL or  @I_vRATEVARC is NULL or  @I_vTRXDTDEF is NULL or  @I_vRTCLCMTD is NULL or  @I_vPRVDSLMT is NULL or  @I_vDATELMTS is NULL or  @I_vTIME1 is NULL or   @I_vUSERID is NULL or   @I_vRequesterTrx is NULL) begin  select @O_iErrorState = 139    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select  @I_vBACHNUMB = UPPER(@I_vBACHNUMB),  @I_vCURNCYID = UPPER(@I_vCURNCYID),  @I_vRATETPID = UPPER(@I_vRATETPID)  if @I_vCURNCYID = 'ECONNECT' begin  select @I_vCURNCYID = '',  @BankRec = 1 end if @I_vCURNCYID = 'ECONNECT1' begin  select @I_vCURNCYID = '',  @BankRec = 1,  @BrVoid = 1 end  if @I_vSOURCDOC = '' begin  select @I_vSOURCDOC = 'GJ' end  select @Allow_Reporting_Ledgers = Allow_Reporting_Ledgers from GL40000 (nolock)   exec @iStatus = taTempValues  @I_vSETORGET = 3,  @I_vSTRVALUE01 = @ORTRXSRC output,     @I_vSTRVALUE02 = @DTAControlNum output,    @I_vDATEVLUE01 = @ORPSTDDT output,     @I_vINTVALUE01 = @DTATRXType output,     @I_vINTVALUE02 = @GLHDRVAL output,      @I_vINTVALUE03 = @PERIODID output,      @I_vINTVALUE04 = @OPENYEAR output,     @O_iErrorState = @iTempValuesErrState output,  @oErrString = @iTempValuesErrString output select @iError = @@error if ((@iStatus <> 0) or (@iTempValuesErrState <> 0) or (@iError <> 0)) begin  select @O_iErrorState = 9462    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vRATETPID <> '') begin  if (not exists(select 1 from MC40100 (nolock) where RATETPID = @I_vRATETPID))  begin  select @O_iErrorState = 937     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@I_vBACHNUMB = '') begin  select @O_iErrorState = 140     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @MKDTOPST = MKDTOPST, @BACHFREQ = BACHFREQ from SY00500 (nolock) where BACHNUMB = @I_vBACHNUMB and BCHSOURC = @BCHSOURC  if (@MKDTOPST <> 0) begin  select @O_iErrorState = 572     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if exists(select 1 from GL10000 a (nolock) where a.JRNENTRY = @I_vJRNENTRY) or  exists(select 1 from GL20000 a (nolock) where a.JRNENTRY = @I_vJRNENTRY)  begin  select @O_iErrorState = 997     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vJRNENTRY < 1 or @I_vJRNENTRY > 99999999) begin  select @O_iErrorState = 9367    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vREFRENCE = '') begin  select @O_iErrorState = 141     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vTRXTYPE <> 0) and (@I_vTRXTYPE <> 1) begin  select @O_iErrorState = 675     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vSERIES < 1 or @I_vSERIES > 7) begin  select @O_iErrorState = 7808     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vXCHGRATE < 0)  begin  select @O_iErrorState = 5596     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vRequesterTrx not in (0,1)) begin  select @O_iErrorState = 3706     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vTRXTYPE = 0) begin  select @I_vRVRSNGDT = '' end  if ((@I_vTRXTYPE = 1) and (@I_vRVRSNGDT < @I_vTRXDATE))  begin  select @O_iErrorState = 4642     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @INTERID = INTERID, @sCompanyID = CMPANYID from DYNAMICS..SY01500 c (nolock) where c.INTERID = db_name()  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID  = @sCompanyID,  @I_iSQLSessionID = 0,  @I_noteincrement = 1,  @O_mNoteIndex   = @nNextNoteIndex output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if ((@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iGetNextNoteIdxErrState))  select @O_iErrorState =  484   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vSQNCLINE < 0) begin  select @O_iErrorState = 5619     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vLedger_ID not in (1,2,3)) begin  select @O_iErrorState = 20124     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@Allow_Reporting_Ledgers = 0) and (@I_vLedger_ID <> 1) begin  select @O_iErrorState = 20125     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vSQNCLINE = 0) begin  select @SQNCLINE = isnull(max(SQNCLINE),0) + 1000 from GL10000 a (nolock) where a.JRNENTRY = @I_vJRNENTRY and a.BACHNUMB = @I_vBACHNUMB end else begin  select @SQNCLINE = @I_vSQNCLINE end  select @OPENYEAR = YEAR1 from SY40101 a (nolock) where @I_vTRXDATE BETWEEN a.FSTFSCDY and a.LSTFSCDY   if (@OPENYEAR = 0) begin  select @O_iErrorState = 596     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vTRXTYPE = 1) begin  select @REVYEAR = YEAR1 from SY40101 a (nolock) where @I_vRVRSNGDT BETWEEN a.FSTFSCDY and a.LSTFSCDY   if (@REVYEAR = 0)   begin  select @O_iErrorState = 8688     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  select @HISTRX = HISTORYR from SY40101 a (nolock) where YEAR1 = @OPENYEAR  if (@I_vTRXTYPE = 1)  select @REVHIST = @HISTRX  select TOP(1)@PERIODID = PERIODID from SY40100 a (nolock) where a.YEAR1 = @OPENYEAR and   @I_vTRXDATE between a.PERIODDT and a.PERDENDT and a.SERIES = 2 and a.ODESCTN = 'General Entry' and CLOSED = 0 Order By PERIODID   if (@I_vTRXTYPE = 1)  select @REVPRDID = max(PERIODID) from SY40100 a (nolock) where a.YEAR1 = @REVYEAR and   a.PERIODDT <= @I_vRVRSNGDT and a.SERIES = 2 and a.ODESCTN = 'General Entry'  select @CLOSEDYR = CLOSED from SY40100 a (nolock) where a.YEAR1 = @OPENYEAR and a.PERIODID = @PERIODID   and a.SERIES = 2 and a.ODESCTN = 'General Entry'  if @CLOSEDYR is null begin  select @CLOSEDYR = 0  end  if (@I_vTRXTYPE = 1)  select @REVCLYR = @CLOSEDYR  if (@HISTRX = 1)  begin  select top 1 @CLOSEDYEAR = YEAR1 from SY40101 (nolock) where HISTORYR = 0  if @OPENYEAR < @CLOSEDYEAR - 1   begin  select @O_iErrorState = 9499     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vTRXDATE <> '' )  begin  if (exists(select 1 from SY40100 (nolock) where YEAR1 = @OPENYEAR and SERIES = 2 and ODESCTN = 'General Entry' and CLOSED = 1 and @I_vTRXDATE BETWEEN PERIODDT and PERDENDT)  and not exists(select 1 from SY40100 (nolock) where YEAR1 = @OPENYEAR and SERIES = 2 and ODESCTN = 'General Entry' and CLOSED = 0 and @I_vTRXDATE BETWEEN PERIODDT and PERDENDT))  begin  select @O_iErrorState = 7117     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vTRXDATE <> '' and @I_vAdjustment_Transaction = 0)  begin  if (exists(select 1 from SY40100 (nolock) where YEAR1 = @OPENYEAR and SERIES = 2 and ODESCTN = 'General Entry' and CLOSED = 1 and @I_vTRXDATE BETWEEN PERIODDT and PERDENDT))  begin  select @O_iErrorState = 7118     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (exists(select top 1 JRNENTRY from GL10300 (nolock) where JRNENTRY = @I_vJRNENTRY)) begin  select @TaxExists = 1 end  if exists(select 1 from GL10001 a (nolock) where a.BACHNUMB <> @I_vBACHNUMB and a.JRNENTRY = @I_vJRNENTRY) begin   select @O_iErrorState = 11985     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select  @date = getdate(),  @day = DATEPART(day, @date),  @month = DATEPART(month, @date),  @year = DATEPART(year, @date),  @seconds = DATEPART(second, @date),  @minutes = DATEPART(minute, @date),  @hours = DATEPART(hour, @date),  @secondsdgstr = str((@hours *3600) + (@minutes * 60) + @seconds),  @incmnt = 5 - len(@secondsdgstr),  @secondsdgstr = ltrim(@secondsdgstr)  while (@incmnt > 0) begin  select @secondsdgstr = '0'+ ltrim(@secondsdgstr)   select @incmnt = @incmnt - 1 end  select  @datedg = @day + @month * 31,  @datedgstr = substring(ltrim(str(@datedg)),1,3),  @incmnt = 3 - len(@datedgstr)  while (@incmnt > 0) begin  select @datedgstr = '0' + ltrim(@datedgstr)  select @incmnt = @incmnt - 1 end  select @datedgstr = @datedgstr + substring(convert(char,@year),3,2)  select @DTA_Index = convert(numeric(19,5),ltrim(str(@I_vJRNENTRY)) + rtrim(ltrim(@secondsdgstr)) + '.' + rtrim(ltrim(@datedgstr)))  select @FUNLCURR = FUNLCURR from MC40000 (nolock) select @FUNLCIDX = isnull(CURRNIDX,0),@DECPLCUR = DECPLCUR - 1 from DYNAMICS..MC40200 (nolock) where CURNCYID = @FUNLCURR  if (@FUNLCURR = '') begin  select @O_iErrorState = 9552    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (exists(select 1 from CM00100 (nolock) where CURNCYID <> '')) begin  select @ISMCREG = 1 end  if (@O_iErrorState <> 0) begin  return (@O_iErrorState) end   if ((@I_vCURNCYID <> '') and (@I_vCURNCYID <> @FUNLCURR)) begin  select @ISMCTRX = 1  select @DECPLUSED = DECPLCUR - 1, @CURRNIDX = isnull(CURRNIDX,0) from DYNAMICS..MC40200 (nolock) where CURNCYID = @I_vCURNCYID   if (@CURRNIDX = 0)  begin  select @O_iErrorState = 938     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   exec @iStatus = taMCCurrencyValidate  @I_vMASTERID = '',    @I_vDOCDATE = @I_vTRXDATE,  @I_vCURNCYID = @I_vCURNCYID,  @I_vEXGTBDSC = @I_vEXGTBDSC,  @I_vEXTBLSRC = @I_vEXTBLSRC,  @I_vRATEEXPR = @I_vRATEEXPR output,  @I_vDYSTINCR = @I_vDYSTINCR output,  @I_vRATEVARC = @I_vRATEVARC,  @I_vTRXDTDEF = @I_vTRXDTDEF,  @I_vPRVDSLMT = @I_vPRVDSLMT,  @I_vDATELMTS = @I_vDATELMTS,  @I_vMODULE = 2,   @I_vEXCHDATE = @I_vEXCHDATE output,  @I_vTIME1 = @I_vTIME1 output,  @I_vXCHGRATE = @I_vXCHGRATE output,  @I_vEXPNDATE = @I_vEXPNDATE output,  @I_vRATETPID = @I_vRATETPID output,  @I_vRTCLCMTD = @I_vRTCLCMTD output,  @I_vEXGTBLID = @EXGTBLID output,  @oErrString = @oErrString output,  @O_iErrorState = @O_iErrorState output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  select @iStatus = @iError  if ((@iStatus <> 0) or (@O_iErrorState <> 0))  begin  select @O_iErrorState = 939   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if (@@error <> 0)  begin  select @O_iErrorState = 940   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  else begin  select @ISMCTRX = 0, @I_vRATEEXPR = 0, @I_vDYSTINCR = 0, @DECPLUSED = @DECPLCUR  select @I_vCURNCYID = FUNLCURR, @CURRNIDX = FUNCRIDX from MC40000 (nolock) end  if (@BankRec = 0) begin  if exists(select 1 from GL10001 a (nolock) where a.BACHNUMB = @I_vBACHNUMB and a.JRNENTRY = @I_vJRNENTRY   and ( (round(ORCRDAMT, @DECPLUSED) <> (ORCRDAMT)) or (round(ORDBTAMT, @DECPLUSED) <> (ORDBTAMT)) )  )  begin  select @O_iErrorState = 9276     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@ISMCTRX = 1) begin  if (@BACHFREQ <> 1)  begin  select @O_iErrorState = 5381     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end   select @TRXTOTAL1 = isnull(sum(ORCRDAMT),0),  @TRXTOTAL2 = isnull(sum(ORDBTAMT),0)  from GL10001 a (nolock) where a.BACHNUMB = @I_vBACHNUMB and a.JRNENTRY = @I_vJRNENTRY and a.ACCTTYPE <> 2   if (@TRXTOTAL1 <> @TRXTOTAL2)  begin  select @ACTINDX = isnull(RNDDIFF,0) from MC40201 (nolock) where CURNCYID = @I_vCURNCYID  if @ACTINDX = 0  select @ACTINDX = isnull(ACTINDX,0) from SY01100 (nolock) where SERIES  = 2 and SEQNUMBR = 900   select @EXCHDATE = EXCHDATE, @INTERID = INTERID from GL10001 (nolock)   where BACHNUMB = @I_vBACHNUMB and JRNENTRY = @I_vJRNENTRY and ACCTTYPE <> 2  group by INTERID,SQNCLINE,EXCHDATE   select @SQNCLINE = max(SQNCLINE) + 500 from GL10001 (nolock) where BACHNUMB = @I_vBACHNUMB and JRNENTRY = @I_vJRNENTRY   insert GL10001  (  BACHNUMB,  JRNENTRY,  SQNCLINE,  ACTINDX,  XCHGRATE,  DSCRIPTN,  CURRNIDX,  ACCTTYPE,  FXDORVAR,  BALFRCLC,  PSTNGTYP,  DECPLACS,  ORCTRNUM,  ORDOCNUM,  ORMSTRID,  ORMSTRNM,  ORTRXTYP,  OrigSeqNum,  ORTRXDESC,  DTA_GL_Status,  INTERID,  RATETPID,  EXGTBLID,  EXCHDATE,  TIME1,  RTCLCMTD,  CRDTAMNT,  DEBITAMT,  ORCRDAMT,  ORDBTAMT,  DENXRATE,  MCTRXSTT,  LNESTAT,  CorrespondingUnit  )  select  @I_vBACHNUMB,      @I_vJRNENTRY,      @SQNCLINE,      @ACTINDX,      0,       '',       @FUNLCIDX,       0,       0,       0,       0,       @DECPLCUR,      '',       '',       '',       '',       0,       0,       '',       0,       @INTERID,      @I_vRATETPID,      @EXGTBLID,      @EXCHDATE,      @I_vTIME1,      @I_vRTCLCMTD,      0,       0,       case       when @TRXTOTAL1 < @TRXTOTAL2  then @TRXTOTAL2 - @TRXTOTAL1  else 0  end,  case       when @TRXTOTAL1 > @TRXTOTAL2  then @TRXTOTAL1 - @TRXTOTAL2  else 0  end,   0.00000,      0,       258,       ''       if (@@error <> 0)  begin  select @O_iErrorState = 4635    select @iStatement = 1  exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  select @TRXTOTAL1 = 0, @TRXTOTAL2 = 0  if (@I_vXCHGRATE = 0)  begin  select @O_iErrorState = 941     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   if (@I_vRTCLCMTD = 0)   begin  update GL10001 set  CRDTAMNT = round(ORCRDAMT * @I_vXCHGRATE, @DECPLCUR),  DEBITAMT = round(ORDBTAMT * @I_vXCHGRATE, @DECPLCUR),  XCHGRATE = @I_vXCHGRATE,  RATETPID = @I_vRATETPID,  EXGTBLID = @EXGTBLID,  EXCHDATE = @I_vEXCHDATE,  TIME1 = @I_vTIME1,  RTCLCMTD = @I_vRTCLCMTD,  DECPLACS = @DECPLCUR  where JRNENTRY = @I_vJRNENTRY and XCHGRATE = 0 and ACCTTYPE <> 0  if (@@error <> 0)  begin  select @O_iErrorState = 942    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  else  begin  if (@I_vRTCLCMTD = 1)   begin  update GL10001 set  CRDTAMNT = round(ORCRDAMT / @I_vXCHGRATE, @DECPLCUR),  DEBITAMT = round(ORDBTAMT / @I_vXCHGRATE, @DECPLCUR),  XCHGRATE = @I_vXCHGRATE,  RATETPID = @I_vRATETPID,  EXGTBLID = @EXGTBLID,  EXCHDATE = @I_vEXCHDATE,  TIME1 = @I_vTIME1,  RTCLCMTD = @I_vRTCLCMTD,  DECPLACS = @DECPLCUR  where JRNENTRY = @I_vJRNENTRY and XCHGRATE = 0 and ACCTTYPE <> 0  if (@@error <> 0)  begin  select @O_iErrorState = 943    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  end   select @TRXTOTAL1 = isnull(sum(CRDTAMNT),0),  @TRXTOTAL2 = isnull(sum(DEBITAMT),0)   from GL10001 a (nolock) where a.BACHNUMB = @I_vBACHNUMB and a.JRNENTRY = @I_vJRNENTRY and a.ACCTTYPE <> 2   if (@TRXTOTAL1 <> @TRXTOTAL2)  begin  if @ACTINDX = 0  select @ACTINDX = RNDDIFF from MC40201 (nolock) where CURNCYID = @I_vCURNCYID  if @ACTINDX = 0  select @ACTINDX = isnull(ACTINDX,0) from SY01100 (nolock) where SERIES  = 2 and SEQNUMBR = 900   select @EXCHDATE = EXCHDATE, @INTERID = INTERID from GL10001 (nolock)   where BACHNUMB = @I_vBACHNUMB and JRNENTRY = @I_vJRNENTRY and ACCTTYPE <> 2  group by INTERID,SQNCLINE,EXCHDATE   select @SQNCLINE = max(SQNCLINE) + 500 from GL10001 (nolock) where BACHNUMB = @I_vBACHNUMB and JRNENTRY = @I_vJRNENTRY   insert GL10001  (  BACHNUMB,  JRNENTRY,  SQNCLINE,  ACTINDX,  XCHGRATE,  DSCRIPTN,  CURRNIDX,  ACCTTYPE,  FXDORVAR,  BALFRCLC,  PSTNGTYP,  DECPLACS,  ORCTRNUM,  ORDOCNUM,  ORMSTRID,  ORMSTRNM,  ORTRXTYP,  OrigSeqNum,  ORTRXDESC,  DTA_GL_Status,  INTERID,  RATETPID,  EXGTBLID,  EXCHDATE,  TIME1,  RTCLCMTD,  CRDTAMNT,  DEBITAMT,  ORCRDAMT,  ORDBTAMT,  DENXRATE,  MCTRXSTT,  LNESTAT,  CorrespondingUnit  )  select  @I_vBACHNUMB,      @I_vJRNENTRY,      @SQNCLINE,      @ACTINDX,      0,       '',       @FUNLCIDX,      0,        0,        0,       0,       @DECPLCUR,      '',       '',       '',       '',       0,       0,       '',       0,       @INTERID,      @I_vRATETPID,      @EXGTBLID,      @EXCHDATE,      @I_vTIME1,      @I_vRTCLCMTD,      case       when @TRXTOTAL1 < @TRXTOTAL2  then @TRXTOTAL2 - @TRXTOTAL1  else 0  end,  case       when @TRXTOTAL1 > @TRXTOTAL2  then @TRXTOTAL1 - @TRXTOTAL2  else 0  end,  0,       0,       0.00000,      0,       258,       ''       if (@@error <> 0)  begin  select @O_iErrorState = 4636    select @iStatement = 1  exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end end  if (@I_vRequesterTrx = 0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE = 'GL_Work_Trans',  @I_vINDEX1 = @I_vBACHNUMB,  @I_vINDEX2 = @BCHSOURC,  @I_vINDEX3 = @I_vJRNENTRY,  @I_vINDEX4 = '',  @I_vINDEX5 = '',  @I_vINDEX6 = '',  @I_vINDEX7 = '',  @I_vINDEX8 = '',  @I_vINDEX9 = '',  @I_vINDEX10 = '',  @I_vINDEX11 = '',  @I_vINDEX12 = '',  @I_vINDEX13 = '',  @I_vINDEX14 = '',  @I_vINDEX15 = '',  @I_vDelete = 0,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  begin  select @iStatus = @iError  end  if ((@iStatus <> 0) or (@iCustomState <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 1281   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  select @TRXTOTAL1 = sum(CRDTAMNT) from GL10001 a (nolock) where a.BACHNUMB = @I_vBACHNUMB and a.JRNENTRY = @I_vJRNENTRY and a.ACCTTYPE in(1,3)    select @TRXTOTAL1 = isnull(@TRXTOTAL1,0)  select @TRXTOTAL2 = sum(DEBITAMT) from GL10001 a (nolock) where a.BACHNUMB = @I_vBACHNUMB and a.JRNENTRY = @I_vJRNENTRY and a.ACCTTYPE in(1,3)    select @TRXTOTAL2 = isnull(@TRXTOTAL2,0)  if (@TRXTOTAL1 <> @TRXTOTAL2) begin  select @O_iErrorState = 944    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @ISClosed = (CLOSED) from SY40100(nolock) where SERIES = 2 and ODESCTN = 'General Entry' and @I_vTRXDATE between PERIODDT and PERDENDT and CLOSED = 1  if (@I_vAdjustment_Transaction = 1 and @ISClosed = 0 ) begin  select @O_iErrorState = 11483    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@BankRec = 0) begin  select @TRXTOTAL = @TRXTOTAL1 + @TRXTOTAL2 end else begin  select @TRXTOTAL = 0 end  exec @iStatus = taCreateUpdateBatchHeaderRcd  @I_vBACHNUMB = @I_vBACHNUMB,  @I_vSERIES = 2,  @I_vGLPOSTDT = '',      @I_vBCHSOURC = 'GL_Normal',  @I_vDOCAMT = @TRXTOTAL,  @I_vORIGIN = 1,  @I_vNUMOFTRX = 1,  @I_vCHEKBKID = '',  @I_vBACHFREQ = @BACHFREQ,  @O_iErrorState = @iUpdtBthErrState output,  @oErrString = @iCreateBatchErrString output select @iError = @@error if ((@iStatus = 0) and (@iError <> 0))  select @iStatus = @iError if ((@iStatus <> 0) or (@iUpdtBthErrState <> 0)) begin  if (@iUpdtBthErrState <> 0)  begin  exec @iStatus = taUpdateString  @iUpdtBthErrState,  @oErrString,  @oErrString output,  @O_oErrorState output  end   select @O_iErrorState = 485   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  insert GL10000  (  BACHNUMB,  BCHSOURC,  JRNENTRY,  RCTRXSEQ,  SOURCDOC,  REFRENCE,  TRXDATE,  RVRSNGDT,  RCRNGTRX,  BALFRCLC,  PSTGSTUS,  LASTUSER,  LSTDTEDT,  USWHPSTD,  TRXTYPE,  SQNCLINE,  TRXSORCE,  RVTRXSRC,  SERIES,  ORTRXSRC,  OrigDTASeries,  DTAControlNum,  DTATRXType,  DTA_Index,  CURNCYID,  CURRNIDX,  RATETPID,  EXGTBLID,  XCHGRATE,  RTCLCMTD,  NOTEINDX,  GLHDRVAL,     PERIODID,  OPENYEAR,  CLOSEDYR,  HISTRX,  REVPRDID,  REVYEAR,  REVCLYR,  REVHIST,  ERRSTATE,  ICTRX,  ORCOMID,  ORIGINJE,  ICDISTS,  PRNTSTUS,  DENXRATE,  MCTRXSTT,  DOCDATE,  Tax_Date,  EXCHDATE,  TIME1,  VOIDED,      Original_JE,     Original_JE_Year,    Original_JE_Seq_Num,    Correcting_Trx_Type,    ORPSTDDT,  Ledger_ID,       Adjustment_Transaction        )  select  @I_vBACHNUMB,     @BCHSOURC,     @I_vJRNENTRY,     0,      case      when (@I_vSOURCDOC = '')  then @SOURCDOC  else @I_vSOURCDOC   end,  @I_vREFRENCE,     @I_vTRXDATE,     @I_vRVRSNGDT,     case        when (@BACHFREQ <> 1)  then 1  else 0  end,  0,         1,      @I_vUSERID,     convert(varchar(12),getdate()),   '',      @I_vTRXTYPE,     case        when @TaxExists = 0   then 0  else @SQNCLINE  end,   @TRXSORCE,     @TRXSORCE,         @I_vSERIES,  case   when @ORTRXSRC <> ''   then @ORTRXSRC   else @TRXSORCE   end,  0,      @DTAControlNum,     @DTATRXType,     @DTA_Index,     case       when @ISMCREG = 0  then ''  when @ISMCREG = 1 and @ISMCTRX = 1  then @I_vCURNCYID   else @FUNLCURR  end,   case      when @ISMCREG = 0  then 0  when @ISMCREG = 1 and @ISMCTRX = 1  then @CURRNIDX  else @FUNLCIDX  end,   @I_vRATETPID,     @EXGTBLID,     @I_vXCHGRATE,     case      when (@ISMCTRX = 1)   then @I_vRTCLCMTD   else 0  end,  @nNextNoteIndex,     case       when @ORTRXSRC <> ''  then 0  when @I_vTRXTYPE = 0  then 100663296    when @I_vTRXTYPE = 1   then 234881024    else 0  end,  case   when @ORTRXSRC <> ''  then 0  else @PERIODID  end,      case   when @ORTRXSRC <> ''  then 0  else @OPENYEAR  end,      case      when (@HISTRX = 1 and @CLOSEDYR = 0)    then @OPENYEAR + 1  else @CLOSEDYR  end,  case       when @BankRec = 1   then 0   else @HISTRX  end,   @REVPRDID,     @REVYEAR,     @REVCLYR,     @REVHIST,     0,      0,      '',      0,      0,      1,        0.00000,     0,      '',      case      when @BankRec = 1   then ''  else @I_vTRXDATE  end,   @I_vEXCHDATE,     @I_vTIME1,     0,      0,      0,      0,      0,       @ORPSTDDT,     @I_vLedger_ID,    @I_vAdjustment_Transaction  if (@@error <> 0) begin  select @O_iErrorState = 486    select @iStatement = 1  exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @count = count(*) from GL10001 (nolock) where JRNENTRY = @I_vJRNENTRY   and ACTINDX in (select distinct(ACTINDX) from DTA00300 (nolock)) if (@count > 0) begin  select @DTAREF = (cast(@I_vJRNENTRY as varchar(10)) + @secondsdgstr + @datedgstr + 'N')  while (@count > 0)  begin  select top 1 @ACTINDX = ACTINDX, @SEQNUMBR = SQNCLINE, @DEBITAMT = DEBITAMT, @CRDTAMNT = CRDTAMNT from GL10001 (nolock)  where JRNENTRY = @I_vJRNENTRY and ACTINDX in (select distinct(ACTINDX) from DTA00300 (nolock)) and  cast(JRNENTRY as varchar(10)) + cast(cast(SQNCLINE as int)as varchar(10)) not in  (select cast(JRNENTRY as varchar(10)) + cast(SEQNUMBR as varchar(10)) from DTA10100 (nolock)  where JRNENTRY = @I_vJRNENTRY)  exec @iStatus = taMdaInsert  @I_vDOCNUMBR = '',  @I_vRMDTYPAL = 0,  @I_vDTASERIES = 2,  @I_vACTINDX = @ACTINDX,  @I_vSEQNUMBR = @SEQNUMBR,  @I_vDEBITAMT = @DEBITAMT,  @I_vCRDTAMNT = @CRDTAMNT,  @I_vTRXDATE = @I_vTRXDATE,  @I_vDECPLCUR = @DECPLCUR,  @I_vUpdated = 0,  @I_vDTAREF = @DTAREF,  @I_vJRNENTRY = @I_vJRNENTRY,  @O_iErrorState  = @O_iErrorState output,  @oErrString  = @oErrString output  if ((@O_iErrorState <> 0) or (@@error <> 0) or (@iStatus <> 0))  begin  select @O_iErrorState = 1196   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  select @count = @count - 1  end end  if (@BankRec <> 1 or @BrVoid = 1)  begin  if exists(select 1 from DYNAMICS..sysobjects (nolock) where name  = 'AAG00102')  begin  if exists(select 1 from DYNAMICS..AAG00102 (nolock) where CMPANYID = @sCompanyID)  begin   select @RTCLCMTD =  case when @ISMCTRX = 0 then 0 else @I_vRTCLCMTD end,  @I_vCURNCYID =  case when @ISMCTRX = 0 then '' else @I_vCURNCYID end,  @CURRNIDX =  case when @ISMCTRX = 0 then 0 else @CURRNIDX end   if @I_vSOURCDOC <> 'APL'  begin  exec @iStatus = taCreateGLWorkDistforAA   @I_vJRNENTRY,   @aaGLWorkHdrID OUT,   0.00000,   @I_vTRXDATE,   0,   @I_vCURNCYID,   @CURRNIDX,   @I_vRATETPID,   @EXGTBLID,   @I_vXCHGRATE,   @I_vEXCHDATE,   @I_vTIME1,   @RTCLCMTD,   0.00000,   0,   @DECPLUSED,   'GL10001',   @sCompanyID,   1,   @INTERID,   0,   0,  @I_vLedger_ID  if (@@error <> 0)   begin  select @O_iErrorState = 9394    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  exec @iStatus = taProcessAnalytics  @I_vDOCNMBR = @I_vJRNENTRY,  @I_vKey = @I_vJRNENTRY,  @I_vDOCTYPE = 0,  @I_Series=@I_vSERIES,   @O_iErrorState = @itaProcessAnalyticsErrState output,  @oErrString = @itaProcessAnalyticsErrString output  select @iError = @@error  if ((@iStatus <> 0) or (@itaProcessAnalyticsErrState <> 0) or (@iError <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + @itaProcessAnalyticsErrString  select @O_iErrorState = 9436    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end   if 1=1   begin   select @aaSubLedgerHdrID = isnull(aaSubLedgerHdrID,'') from AAG20000 (nolock)  where DOCNUMBR = @DTAControlNum and DOCTYPE = @DTATRXType  if @aaSubLedgerHdrID <> 0  begin  exec @iStatus = aagCreateVoideRecordInGLForBR   @aaSubLedgerHdrID = @aaSubLedgerHdrID,  @JRNENTRY = @I_vJRNENTRY,  @lastDist = 0,  @GLPOSTDT = @I_vTRXDATE,  @CompanyID = @sCompanyID,  @MCRegistered = @ISMCTRX   if (@@error <> 0)   begin  select @O_iErrorState = 9447    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  end  end  end end  if (@O_iErrorState <> 0) begin  return (@O_iErrorState) end  if (@I_vNOTETEXT <> '') begin  insert SY03900   (  NOTEINDX,   DATE1,   TIME1,   TXTFIELD  )   select   @nNextNoteIndex,       convert(varchar(12),getdate()),      substring(convert(varchar(25),getdate()),12,12),   @I_vNOTETEXT         if (@@error <> 0)  begin  select @O_iErrorState = 5870    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  exec @iStatus = taGLTransactionHeaderInsertPost  @I_vBACHNUMB,  @I_vJRNENTRY,  @I_vREFRENCE,  @I_vTRXDATE,  @I_vRVRSNGDT,  @I_vTRXTYPE,  @I_vSQNCLINE,  @I_vSERIES,  @I_vCURNCYID,  @I_vXCHGRATE,  @I_vRATETPID,  @I_vEXPNDATE,  @I_vEXCHDATE,  @I_vEXGTBDSC,  @I_vEXTBLSRC,  @I_vRATEEXPR,  @I_vDYSTINCR,  @I_vRATEVARC,  @I_vTRXDTDEF,  @I_vRTCLCMTD,  @I_vPRVDSLMT,  @I_vDATELMTS,  @I_vTIME1,  @I_vRequesterTrx,  @I_vSOURCDOC,  @I_vLedger_ID,  @I_vUSERID,  @I_vAdjustment_Transaction,  @I_vNOTETEXT,   @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0)) begin  select @iStatus = @iError end  if ((@iStatus <> 0) or (@iCustomState <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 487    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vRequesterTrx = 0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE = 'GL_Work_Trans',  @I_vINDEX1 = @I_vBACHNUMB,  @I_vINDEX2 = @BCHSOURC,  @I_vINDEX3 = @I_vJRNENTRY,  @I_vINDEX4 = '',  @I_vINDEX5 = '',  @I_vINDEX6 = '',  @I_vINDEX7 = '',  @I_vINDEX8 = '',  @I_vINDEX9 = '',  @I_vINDEX10 = '',  @I_vINDEX11 = '',  @I_vINDEX12 = '',  @I_vINDEX13 = '',  @I_vINDEX14 = '',  @I_vINDEX15 = '',  @I_vDelete = 1,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  begin  select @iStatus = @iError  end  if ((@iStatus <> 0) or (@iCustomState <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 1282   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGLTransactionHeaderInsert] TO [DYNGRP]
GO