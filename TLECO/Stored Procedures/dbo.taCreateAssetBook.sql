SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetBook]  @I_vASSETID char(15),     @I_vASSETIDSUF smallint = 1,     @I_vBOOKID char(15),    @I_vPLINSERVDATE datetime = null,   @I_vDATEADDED datetime = null,   @I_vDEPRTODATE datetime = null,   @I_vCOSTBASIS numeric(19,5) = null,   @I_vSALVAGEVALUE numeric(19,5) = null,   @I_vYTDDEPRAMT numeric(19,5) = null,   @I_vLTDDEPRAMT numeric(19,5) = null,   @I_vDEPRECIATIONMETHOD  smallint = null,    @I_vAVERAGINGCONV smallint = null,    @I_vSWITCHOVER smallint = null,   @I_vORIGINALLIFEYEARS smallint = null,   @I_vORIGINALLIFEDAYS smallint = null,   @I_vAMORTIZATIONCODE smallint = null,   @I_vAMORTIZATIONAMOUNT numeric(19,5) = null,   @I_vInitial_Allowance_Perc numeric(19,5) = null,  @I_vSPECDEPRALLOW smallint = null,   @I_vSPECDEPRALLOWPCT numeric(19,5) = null,   @I_vLUXAUTOIND smallint = null,   @I_vLUXVANTRUCK tinyint = null,    @I_vLUXELAUTO tinyint = null,    @I_vUSERID char(15)= null,    @I_vUpdateIfExists  tinyint = 0,    @I_vUSRDEFND1   char(50) = '',        @I_vUSRDEFND2   char(50) = '',        @I_vUSRDEFND3   char(50) = '',        @I_vUSRDEFND4   varchar(8000) = '',   @I_vUSRDEFND5   varchar(8000) = '',   @O_iErrorState   int output,    @oErrString   varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @ASSETINDEX int,    @FINANCIALINDEX int,    @DEFACCTGRPINDX int,    @PERIODID smallint,    @PERIODID2 smallint,  @PERIODID3 smallint,  @FISCALYEAR smallint,    @FISCALYEAR2 smallint,  @FISCALYEAR3 smallint,  @FISCALYEAR4 smallint,  @BOOKINDX int,     @CURRFISCALYR smallint,    @ASSETCOSTACCTINDX int,    @CLEARINGACCTINDX int,    @DEPREXPACCTINDX int,    @DEPRRESVACCTINDX int,    @CMPANYID smallint,    @ActualTime datetime,    @ActualDate datetime,    @exists tinyint,    @ASSETCLASSID char(15),    @ENDOFLIFE datetime,    @REMAININGLIFEYEARS smallint,   @REMAININGLIFEDAYS smallint,   @CurrentFiscalYear smallint,   @FIRSTDAYFISCALYEAR datetime,   @LSTDAYFISCALYEAR datetime,   @LEAPYEAR int,       @PLINSERVDATE datetime,     @ORIGINALLIFEYEARS smallint,   @iCursorError int,    @iGetNextNoteIdxErrState int,  @O_iNumErrorState int,    @iAddCodeErrState int,    @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @O_oErrorState int,  @iError int,     @CalendarID varchar(15)  select  @ASSETINDEX = 0,    @FINANCIALINDEX = 0,    @DEFACCTGRPINDX = 0,    @CMPANYID = 0,     @PERIODID = 0,   @PERIODID2 = 0,  @PERIODID3 = 0,  @FISCALYEAR = 0,  @FISCALYEAR2 = 0,  @FISCALYEAR3 = 0,  @FISCALYEAR4 = 0,  @BOOKINDX = 0,  @CURRFISCALYR = 0,  @ASSETCOSTACCTINDX = 0,  @CLEARINGACCTINDX = 0,  @DEPREXPACCTINDX = 0,  @DEPRRESVACCTINDX = 0,  @ActualTime = '',    @ActualDate = '',    @exists = 0,     @ASSETCLASSID = '',    @ENDOFLIFE = '',    @REMAININGLIFEYEARS = 0,   @REMAININGLIFEDAYS = 0,    @CurrentFiscalYear = 0,    @FIRSTDAYFISCALYEAR = '',   @LSTDAYFISCALYEAR = '',    @LEAPYEAR = 0,      @PLINSERVDATE = '',     @ORIGINALLIFEYEARS = 0,    @O_iNumErrorState = 0,  @iStatus = 0,   @O_iErrorState = 0,    @CalendarID =''  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateAssetBookPre  @I_vASSETID output,  @I_vASSETIDSUF output,  @I_vBOOKID output,  @I_vPLINSERVDATE output,  @I_vDATEADDED output,  @I_vDEPRTODATE output,  @I_vCOSTBASIS output,  @I_vSALVAGEVALUE output,  @I_vYTDDEPRAMT output,  @I_vLTDDEPRAMT output,  @I_vDEPRECIATIONMETHOD output,  @I_vAVERAGINGCONV output,   @I_vSWITCHOVER output,  @I_vORIGINALLIFEYEARS output,  @I_vORIGINALLIFEDAYS output,  @I_vAMORTIZATIONCODE output,  @I_vAMORTIZATIONAMOUNT output,  @I_vInitial_Allowance_Perc output,  @I_vSPECDEPRALLOW output,  @I_vSPECDEPRALLOWPCT output,  @I_vLUXAUTOIND output,  @I_vLUXVANTRUCK  output,  @I_vLUXELAUTO output,  @I_vUSERID output,  @I_vUpdateIfExists output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 10359     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if(  @I_vASSETID is NULL or  @I_vASSETIDSUF is NULL or   @I_vBOOKID is NULL or  @I_vUpdateIfExists is NULL or   @I_vUSRDEFND1 is NULL or   @I_vUSRDEFND2 is NULL or   @I_vUSRDEFND3 is NULL or   @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL   )  begin  select @O_iErrorState = 10360    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vASSETID = UPPER(@I_vASSETID),  @I_vBOOKID = UPPER(@I_vBOOKID)  select @CMPANYID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  select @ActualTime = ltrim(substring(convert(varchar(25),getdate()),12,12))  select @ActualDate = convert(varchar(12),getdate())  if (@I_vASSETID = '') begin  select @O_iErrorState = 10361     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vASSETIDSUF < 1 and @I_vASSETIDSUF > 999)  begin   select @O_iErrorState = 10362     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vASSETID <> '') begin  if (not exists(select 1 from FA00100 (nolock) where ASSETID = @I_vASSETID and ASSETIDSUF = @I_vASSETIDSUF))  begin  select @O_iErrorState = 10363     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if (@I_vASSETID <> '') begin  select @ASSETINDEX = ASSETINDEX from FA00100 (nolock) where ASSETID = @I_vASSETID and ASSETIDSUF = @I_vASSETIDSUF end  if (@I_vBOOKID = '')  begin  select @O_iErrorState = 10364     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vBOOKID <> '') begin  if (not exists(select 1 from FA40200 (nolock) where BOOKID = @I_vBOOKID))  begin  select @O_iErrorState = 10365     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end   if (@I_vBOOKID <> '') begin  select  @BOOKINDX = BOOKINDX, @CalendarID  = CALNDRID,   @CurrentFiscalYear = CURRFISCALYR  from FA40200 (nolock) where BOOKID = @I_vBOOKID end  select @LSTDAYFISCALYEAR = PERIODENDDATE  from FA42100 (nolock) where FISCALYEAR = @CurrentFiscalYear and CALNDRID = @CalendarID  select @FIRSTDAYFISCALYEAR = PERIODSTARTDATE   from FA42100 (nolock) where FISCALYEAR = @CurrentFiscalYear and PERIODID = 1 and CALNDRID = @CalendarID  if (exists(select top 1 ASSETINDEX from FA00200 (nolock) where ASSETINDEX = @ASSETINDEX and BOOKINDX = @BOOKINDX and LASTMNTDUSERID <> 'eConnect')) begin  select @exists = 1 end  if (@exists = 1) begin  select @O_iErrorState = 10366     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vDEPRECIATIONMETHOD in (9,16))  begin  select @I_vSWITCHOVER = 1  end  if (exists(select top 1 ASSETINDEX from FA00200 (nolock) where ASSETINDEX = @ASSETINDEX and BOOKINDX = @BOOKINDX and LASTMNTDUSERID = 'eConnect')) begin  delete FA00200 where ASSETINDEX = @ASSETINDEX and BOOKINDX = @BOOKINDX and LASTMNTDUSERID = 'eConnect'  delete FA00902 where ASSETINDEX = @ASSETINDEX and BOOKINDX = @BOOKINDX and TRANSUSERID = 'eConnect' end  select @ASSETCLASSID = ASSETCLASSID from FA00100 (nolock) where ASSETINDEX = @ASSETINDEX  if (@exists = 0) begin  select   @I_vCOSTBASIS =       case  when @I_vCOSTBASIS is null  then b.Acquisition_Cost  else @I_vCOSTBASIS  end  from FA00100 b (nolock) where ASSETINDEX = @ASSETINDEX end  if (@exists = 0) begin  select  @I_vPLINSERVDATE =       case  when @I_vPLINSERVDATE is null  then @ActualDate  else @I_vPLINSERVDATE  end,   @I_vDATEADDED =       case   when @I_vDATEADDED is null  then @ActualDate  else @I_vDATEADDED  end,  @I_vDEPRTODATE =       case   when @I_vDEPRTODATE is null  then @ActualDate  when @I_vDEPRTODATE is null and @I_vPLINSERVDATE is not null  then @I_vPLINSERVDATE  else @I_vDEPRTODATE  end,  @I_vSALVAGEVALUE =      case  when @I_vSALVAGEVALUE is null and a.SALVAGEEST = 1  then @I_vCOSTBASIS * (SALVAGEPCT / 10000.00)  when @I_vSALVAGEVALUE is null  then 0  else @I_vSALVAGEVALUE  end,  @I_vYTDDEPRAMT =       case   when @I_vYTDDEPRAMT is null  then 0  else @I_vYTDDEPRAMT  end,  @I_vLTDDEPRAMT =       case   when @I_vLTDDEPRAMT is null  then 0  else @I_vLTDDEPRAMT   end,  @I_vDEPRECIATIONMETHOD =      case   when @I_vDEPRECIATIONMETHOD is null   then a.DEPRECIATIONMETHOD  else @I_vDEPRECIATIONMETHOD  end,  @I_vAVERAGINGCONV =       case  when @I_vAVERAGINGCONV is null  then a.AVERAGINGCONV  else @I_vAVERAGINGCONV  end,  @I_vSWITCHOVER =       case   when @I_vSWITCHOVER is null  then a.SWITCHOVER  else @I_vSWITCHOVER  end,  @I_vORIGINALLIFEYEARS =      case  when @I_vORIGINALLIFEYEARS is null  then a.ORIGINALLIFEYEARS  else @I_vORIGINALLIFEYEARS  end,  @I_vORIGINALLIFEDAYS =       case  when @I_vORIGINALLIFEDAYS is null  then a.ORIGINALLIFEDAYS  else @I_vORIGINALLIFEDAYS  end,  @I_vAMORTIZATIONCODE =       case  when @I_vAMORTIZATIONCODE is null  then a.AMORTIZATIONCODE  else @I_vAMORTIZATIONCODE  end,  @I_vAMORTIZATIONAMOUNT =      case   when @I_vAMORTIZATIONAMOUNT is null   then a.AMORTIZATIONAMOUNT  else @I_vAMORTIZATIONAMOUNT  end,  @I_vInitial_Allowance_Perc =      case   when @I_vInitial_Allowance_Perc is null  then a.Initial_Allowance_Perc  else @I_vInitial_Allowance_Perc  end,  @I_vSPECDEPRALLOW =       case   when @I_vSPECDEPRALLOW is null  then a.SPECDEPRALLOW  else @I_vSPECDEPRALLOW  end,  @I_vSPECDEPRALLOWPCT =       case   when @I_vSPECDEPRALLOWPCT is null  then a.SPECDEPRALLOWPCT  else @I_vSPECDEPRALLOWPCT  end,  @I_vLUXAUTOIND =       case   when @I_vLUXAUTOIND is null  then a.LUXAUTOIND  else @I_vLUXAUTOIND  end,  @I_vUSERID =        case   when @I_vUSERID is null  then ''  else @I_vUSERID  end,  @I_vLUXVANTRUCK =       case   when @I_vLUXVANTRUCK is null   then a.LUXVANTRUCK  else @I_vLUXVANTRUCK  end,  @I_vLUXELAUTO =       case   when @I_vLUXELAUTO is null  then a.LUXELAUTO  else @I_vLUXELAUTO  end   from FA40202 a (nolock) where a.BOOKID = @I_vBOOKID and ASSETCLASSID = @ASSETCLASSID end   if (@I_vDEPRECIATIONMETHOD not in (9,16)) begin  select  @I_vAMORTIZATIONCODE = 0,  @I_vAMORTIZATIONAMOUNT = 0 end   select @DEFACCTGRPINDX = DEFACCTGRPINDX from FA40201 (nolock) where ASSETCLASSID = @ASSETCLASSID  if (@DEFACCTGRPINDX <> 0) begin  if exists( select 1 from  FA41300 (nolock) where ACCTGRPINDEX = @DEFACCTGRPINDX)  select  @ASSETCOSTACCTINDX = ASSETCOSTACCTINDX,  @CLEARINGACCTINDX = CLEARINGACCTINDX,  @DEPREXPACCTINDX = DEPREXPACCTINDX,  @DEPRRESVACCTINDX = DEPRRESVACCTINDX  from FA41300 (nolock) where @DEFACCTGRPINDX = ACCTGRPINDEX  else  select @ASSETCOSTACCTINDX = ASSETCOSTACCTINDX,   @CLEARINGACCTINDX = CLEARINGACCTINDX,  @DEPREXPACCTINDX = DEPREXPACCTINDX,   @DEPRRESVACCTINDX = DEPRRESVACCTINDX  from FA00400 (nolock) where ASSETINDEX = @ASSETINDEX end  if (@DEFACCTGRPINDX = 0) begin  if exists( select 1 from  FA41300 (nolock) where ACCTGRPINDEX = 1)  select  @ASSETCOSTACCTINDX = ASSETCOSTACCTINDX,  @CLEARINGACCTINDX = CLEARINGACCTINDX,  @DEPREXPACCTINDX = DEPREXPACCTINDX,  @DEPRRESVACCTINDX = DEPRRESVACCTINDX  from FA41300 (nolock) where ACCTGRPINDEX = 1  else   select @ASSETCOSTACCTINDX = ASSETCOSTACCTINDX,   @CLEARINGACCTINDX = CLEARINGACCTINDX,  @DEPREXPACCTINDX = DEPREXPACCTINDX,   @DEPRRESVACCTINDX = DEPRRESVACCTINDX  from FA00400 (nolock) where ASSETINDEX = @ASSETINDEX end  select  @PERIODID = PERIODID,  @FISCALYEAR = FISCALYEAR  from FA42100 (nolock) where (@I_vPLINSERVDATE between PERIODSTARTDATE and PERIODENDDATE) and CALNDRID= @CalendarID   select  @PERIODID2 = PERIODID,  @FISCALYEAR2 = FISCALYEAR  from FA42100 (nolock) where (@I_vDEPRTODATE between PERIODSTARTDATE and PERIODENDDATE) and CALNDRID= @CalendarID   select  @PERIODID3 = PERIODID,  @FISCALYEAR3 = FISCALYEAR  from FA42100 (nolock) where (@ActualDate between PERIODSTARTDATE and PERIODENDDATE) and CALNDRID= @CalendarID   select @FISCALYEAR4 = CURRFISCALYR from FA40200 (nolock) where BOOKID = @I_vBOOKID  if ((@I_vDEPRTODATE < @I_vPLINSERVDATE) and (@I_vYTDDEPRAMT <> 0 or @I_vLTDDEPRAMT <> 0)) begin  select @O_iErrorState = 10367     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vCOSTBASIS < 0) begin  select @O_iErrorState = 10368     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRTODATE not between @FIRSTDAYFISCALYEAR and @LSTDAYFISCALYEAR) begin   if ((@FISCALYEAR4 < (datepart(year,@I_vDEPRTODATE))) and (@I_vLTDDEPRAMT <> 0))  begin  select @O_iErrorState = 10369     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if (@I_vYTDDEPRAMT > @I_vLTDDEPRAMT) begin  select @O_iErrorState = 10370     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vYTDDEPRAMT > @I_vCOSTBASIS) begin  select @O_iErrorState = 10371     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vLTDDEPRAMT > @I_vCOSTBASIS) begin  select @O_iErrorState = 10372     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRTODATE > @I_vPLINSERVDATE) and (@I_vLTDDEPRAMT = 0) begin  select @O_iErrorState = 10373     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vLTDDEPRAMT <> 0) and (@LSTDAYFISCALYEAR < @I_vDEPRTODATE) begin  select @O_iErrorState = 10400     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRTODATE < @I_vPLINSERVDATE) and (@I_vLTDDEPRAMT <> 0 or @I_vYTDDEPRAMT <> 0) begin  select @O_iErrorState = 10401     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRTODATE not between @FIRSTDAYFISCALYEAR and @LSTDAYFISCALYEAR) begin   if ((@I_vLTDDEPRAMT <> 0) and (@CurrentFiscalYear > datepart(year,@I_vDEPRTODATE))) and ((datepart(day,@I_vDEPRTODATE) <> datepart(day,@LSTDAYFISCALYEAR))   or (datepart(month,@I_vDEPRTODATE) <> datepart(month,@LSTDAYFISCALYEAR)))  begin  select @O_iErrorState = 10407     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end  end  if (@I_vDEPRECIATIONMETHOD < 1 or @I_vDEPRECIATIONMETHOD > 16) begin  select @O_iErrorState = 10374     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRECIATIONMETHOD not in (9,16)) and (@I_vAMORTIZATIONCODE <> 0) begin  select @O_iErrorState = 10375     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRECIATIONMETHOD = 16) begin  select @I_vAMORTIZATIONCODE = 6 end   if (@I_vDEPRECIATIONMETHOD in (10,11,12,13,14)) and (@I_vAVERAGINGCONV <> 11) begin  select @O_iErrorState = 10376     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRECIATIONMETHOD in (10,11,12,13,14)) and (@I_vSWITCHOVER = 2) begin  select @O_iErrorState = 10377     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vAVERAGINGCONV < 1 or @I_vAVERAGINGCONV > 13) begin  select @O_iErrorState = 10378     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vORIGINALLIFEYEARS < 0 or @I_vORIGINALLIFEYEARS > 99) begin  select @O_iErrorState = 10379     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vORIGINALLIFEDAYS < 0 or @I_vORIGINALLIFEDAYS > 999) begin  select @O_iErrorState = 10380     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRECIATIONMETHOD = 10) and (@I_vORIGINALLIFEYEARS not in (3,5,10,15)) begin  select @O_iErrorState = 10381     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRECIATIONMETHOD = 11) and (@I_vORIGINALLIFEYEARS not in (15,18,19)) begin  select @O_iErrorState = 10382     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRECIATIONMETHOD = 12) and (@I_vORIGINALLIFEYEARS not in (15,18,19,35,45)) begin  select @O_iErrorState = 10383     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRECIATIONMETHOD = 13) and (@I_vORIGINALLIFEYEARS not in (15)) begin  select @O_iErrorState = 10384     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDEPRECIATIONMETHOD = 14) and (@I_vORIGINALLIFEYEARS not in (35)) begin  select @O_iErrorState = 10385     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vAMORTIZATIONCODE < 0 or @I_vAMORTIZATIONCODE > 7) begin  select @O_iErrorState = 10386     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vAMORTIZATIONCODE in (1,2,3,4,5,6,7)) and (@I_vAMORTIZATIONAMOUNT = 0) begin  select @O_iErrorState = 10387     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vAMORTIZATIONCODE = 0) and (@I_vAMORTIZATIONAMOUNT <> 0) begin  select @O_iErrorState = 10437     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vAMORTIZATIONCODE in (6,7)) and (@I_vAMORTIZATIONAMOUNT <= 0 or @I_vAMORTIZATIONAMOUNT > 100) begin  select @O_iErrorState = 10388     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vInitial_Allowance_Perc < 0 or @I_vInitial_Allowance_Perc > 327.67) begin  select @O_iErrorState = 10389     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vSPECDEPRALLOW < 1 or @I_vSPECDEPRALLOW > 2) begin  select @O_iErrorState = 10390     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vSPECDEPRALLOWPCT < 0 or @I_vSPECDEPRALLOWPCT > 100) begin  select @O_iErrorState = 10391     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vSPECDEPRALLOW = 1 and @I_vSPECDEPRALLOWPCT <> 0) begin  select @O_iErrorState = 10434     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vSPECDEPRALLOW = 2 and @I_vInitial_Allowance_Perc <> 0) begin  select @O_iErrorState = 10392     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vSPECDEPRALLOW = 2 and @I_vSPECDEPRALLOWPCT = 0) begin  select @O_iErrorState = 10393     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vLUXAUTOIND not in (1,2)) begin   select @O_iErrorState = 10394     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vLUXAUTOIND = 2)  begin  if (@I_vORIGINALLIFEYEARS > 5) and (@I_vPLINSERVDATE > '12/31/1986')  begin   select @O_iErrorState = 10395     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end  if (@I_vORIGINALLIFEDAYS <> 0) and (@I_vPLINSERVDATE > '12/31/1986')  begin   select @O_iErrorState = 10438     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end   if (@I_vPLINSERVDATE > '12/31/1986') and (@I_vAVERAGINGCONV not in (1,5))  begin   select @O_iErrorState = 10396     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end   if (@I_vPLINSERVDATE > '12/31/1986') and (@I_vDEPRECIATIONMETHOD not in (1,2,4,6))   begin   select @O_iErrorState = 10397     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end   if (@I_vPLINSERVDATE > '12/31/1986') and (@I_vDEPRECIATIONMETHOD in (4,6)) and (@I_vSWITCHOVER <> 2)  begin   select @O_iErrorState = 10398     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end   if (@I_vLUXVANTRUCK not in (0,1)) begin   select @O_iErrorState = 10435     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vLUXELAUTO not in (0,1)) begin   select @O_iErrorState = 10436     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vLUXVANTRUCK = 1) and (@I_vLUXELAUTO = 1) begin   select @O_iErrorState = 10439     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vDEPRECIATIONMETHOD = 1) and (@I_vSWITCHOVER = 2) begin   select @O_iErrorState = 10399     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vDEPRECIATIONMETHOD = 2) and (@I_vSWITCHOVER = 2) begin   select @O_iErrorState = 10402     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vUpdateIfExists = 1) begin  select @O_iErrorState = 10403     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if ( @I_vUpdateIfExists < 0 or @I_vUpdateIfExists > 1 ) begin  select @O_iErrorState = 10404     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vPLINSERVDATE <> @I_vDEPRTODATE) begin  select @ENDOFLIFE = dateadd(year, @I_vORIGINALLIFEYEARS, @I_vPLINSERVDATE)  select @REMAININGLIFEYEARS = datepart(year,@ENDOFLIFE-@I_vDEPRTODATE) - 1900  select @REMAININGLIFEDAYS = datediff(day,'',@ENDOFLIFE-@I_vDEPRTODATE - dateadd(year,@REMAININGLIFEYEARS,''))   select @PLINSERVDATE = @I_vPLINSERVDATE, @ORIGINALLIFEYEARS = @I_vORIGINALLIFEYEARS   while @ORIGINALLIFEYEARS > 0  begin  select @ORIGINALLIFEYEARS = @ORIGINALLIFEYEARS - 1  if (YEAR( @PLINSERVDATE ) % 4 = 0 AND YEAR( @PLINSERVDATE ) % 100 <> 0) OR YEAR( @PLINSERVDATE ) % 400 = 0  begin  select @LEAPYEAR = @LEAPYEAR + 1  end   select @PLINSERVDATE = dateadd(year,1,@PLINSERVDATE)  end   if @LEAPYEAR > 0   begin  select @REMAININGLIFEDAYS = @REMAININGLIFEDAYS - @LEAPYEAR  end  end else begin  select @REMAININGLIFEYEARS = @I_vORIGINALLIFEYEARS  select @REMAININGLIFEDAYS = @I_vORIGINALLIFEDAYS end  if (@O_iErrorState <> 0) Begin   return (@O_iErrorState) End  if (@REMAININGLIFEYEARS < 0) begin  select @REMAININGLIFEYEARS = 0, @REMAININGLIFEDAYS = 0 end  if (@O_iErrorState = 0) begin  if not exists( select 1 from FA00200 (nolock) where  ASSETINDEX = @ASSETINDEX and BOOKINDX = @BOOKINDX)   begin  insert FA00200   (  ASSETINDEX,   BOOKINDX,   PLINSERVDATE,   DELETEDATE,   DEPRBEGDATE,   FULLYDEPRFLAG,   FULLYDEPRDATE,   ORIGINALLIFEYEARS,   ORIGINALLIFEDAYS,   REMAININGLIFEYEARS,   REMAININGLIFEDAYS,   DEPRTODATE,   LASTRECALCDATE,   LASTRECALCDATEFISYR,   BEGINYEARCOST,   BAGINSALVAGE,   BEGINRESERVE,   COSTBASIS,   SALVAGEVALUE,   DEPRECIATIONMETHOD,   AVERAGINGCONV,   SWITCHOVER,   SWITCHFM1METHOD,   SWITCHFM1AMOUNT,   SWITCHFM1DATE,   DLYDEPRRATE,   PERDEPRRATE,   YRLYDEPRRATE,   SAVEDLYDEPRRATE,   SAVEPERDEPRRATE,   SAVEYRLYDEPRRATE,   AMORTIZATIONCODE,   AMORTIZATIONAMOUNT,   CURRUNDEPRAMT,   PREVRUNDEPRAMT,   YTDDEPRAMT,   LTDDEPRAMT,   NETBOOKVALUE,   LUXAUTOIND,   PRORATEDRETDATE,   DEPRTODATEBFRET,   RECGAINLOSS,   NONRECGAINLOSS,   STLINEDEPRATRET,   COSTBFRETORDEL,   Initial_Allowance_Perc,   Initial_Allowance_Amount,   SPECDEPRALLOW,   SPECDEPRALLOWPCT,   SPECDEPRALLOWAMT,   NOTEINDX,   DATEADDED,   LASTMNTDDATE,   LASTMNTDTIME,   LASTMNTDUSERID,  LUXVANTRUCK,  LUXELAUTO  )  select   @ASSETINDEX,       @BOOKINDX,                  @I_vPLINSERVDATE,        '',          @I_vPLINSERVDATE,          case      when (@I_vCOSTBASIS - @I_vLTDDEPRAMT = 0)   then 'Y'  else 'N'  end,  case  when (@I_vCOSTBASIS - @I_vLTDDEPRAMT = 0)  then @I_vDEPRTODATE  else ''        end,  @I_vORIGINALLIFEYEARS,        @I_vORIGINALLIFEDAYS,        @REMAININGLIFEYEARS,       @REMAININGLIFEDAYS,        @I_vDEPRTODATE,        '',         0,          @I_vCOSTBASIS,         @I_vSALVAGEVALUE,         @I_vLTDDEPRAMT - @I_vYTDDEPRAMT,     @I_vCOSTBASIS,          @I_vSALVAGEVALUE,          @I_vDEPRECIATIONMETHOD,       @I_vAVERAGINGCONV,        @I_vSWITCHOVER,         0,           0,             '',           0,          0,           0,           0,         0,           0,           @I_vAMORTIZATIONCODE,         @I_vAMORTIZATIONAMOUNT,       0,          0,         @I_vYTDDEPRAMT,         @I_vLTDDEPRAMT,         @I_vCOSTBASIS - @I_vLTDDEPRAMT,      @I_vLUXAUTOIND,        '',          '',         0,            0,         0,          0,           @I_vInitial_Allowance_Perc * 100,      0,          @I_vSPECDEPRALLOW,       @I_vSPECDEPRALLOWPCT * 100,      (@I_vCOSTBASIS * @I_vSPECDEPRALLOWPCT)/100,    0,        @I_vDATEADDED,         @I_vDATEADDED,          @ActualTime,          @I_vUSERID,       @I_vLUXVANTRUCK,      @I_vLUXELAUTO       if @@error <> 0  begin  select @O_iErrorState = 10405    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  else   begin  select @O_iErrorState = 10420    exec @iStatus = taUpdateString  @O_iErrorState,   @oErrString,  @oErrString output,  @iAddCodeErrState output  end    if (@O_iErrorState <> 0)  return (@O_iErrorState)   if not exists( select 1 from FA00902 (nolock) where ASSETINDEX = @ASSETINDEX and BOOKINDX = @BOOKINDX)   begin  declare FinIndex insensitive CURSOR for   select a.BOOKINDX, a.CURRFISCALYR from FA40200 a (nolock), FA40202 b (nolock) where a.BOOKID = @I_vBOOKID and a.BOOKID = b.BOOKID and b.ASSETCLASSID = @ASSETCLASSID   set nocount on   OPEN FinIndex  select @iCursorError = @@cursor_rows  if @iCursorError = 0  begin  deallocate FinIndex  end  else   begin  FETCH NEXT FROM FinIndex INTO @BOOKINDX, @CURRFISCALYR  WHILE (@@FETCH_STATUS <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 10421     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  exec @iStatus = taGetFinancialIndex  @I_tInc_Dec = 1,   @O_vFinancialIndex = @FINANCIALINDEX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 10422   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   insert FA00902   (  FINANCIALINDX,  ASSETINDEX,  BOOKINDX,  TRANSDATESTAMP,  TRANSTIMESTAMP,  FISCALYRADDED,  FAYEAR,  FAPERIOD,  DEPRFROMDATE,  DEPRTODATE,  AMOUNT,  TRANSUSERID,  SOURCDOC,  TRANSACCTTYPE,  INTERFACEGL,  GLINTTRXDATE,  GLINTDATESTAMP,  GLINTTIMESTAMP,  GLINTACCTINDX,  GLINTBTCHNUM  )  select   @FINANCIALINDEX,          @ASSETINDEX,                               @BOOKINDX,                   @ActualDate,       @ActualTime,       @CURRFISCALYR,       @FISCALYEAR2,       @PERIODID2,       @I_vPLINSERVDATE,      @I_vDEPRTODATE,       @I_vCOSTBASIS,      @I_vUSERID,       'FAADD',       3,        1,        '',        '',        '',        @ASSETCOSTACCTINDX,      ''       if @@error <> 0  begin  select @O_iErrorState = 10423    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   exec @iStatus = taGetFinancialIndex  @I_tInc_Dec = 1,   @O_vFinancialIndex = @FINANCIALINDEX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 10424    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   insert FA00902   (  FINANCIALINDX,  ASSETINDEX,  BOOKINDX,  TRANSDATESTAMP,  TRANSTIMESTAMP,  FISCALYRADDED,  FAYEAR,  FAPERIOD,  DEPRFROMDATE,  DEPRTODATE,  AMOUNT,  TRANSUSERID,  SOURCDOC,  TRANSACCTTYPE,  INTERFACEGL,  GLINTTRXDATE,  GLINTDATESTAMP,  GLINTTIMESTAMP,  GLINTACCTINDX,  GLINTBTCHNUM  )  select   @FINANCIALINDEX,          @ASSETINDEX,                        @BOOKINDX,             @ActualDate,       @ActualTime,       @CURRFISCALYR,       @FISCALYEAR2,       @PERIODID2,       @I_vPLINSERVDATE,      @I_vDEPRTODATE,      @I_vCOSTBASIS * -1,     @I_vUSERID,       'FAADD',       7,        1,        '',        '',        '',        @CLEARINGACCTINDX,      ''       if @@error <> 0  begin  select @O_iErrorState = 10425    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   if (@I_vDEPRTODATE >= @I_vPLINSERVDATE) and (@I_vLTDDEPRAMT <> 0)  begin  exec @iStatus = taGetFinancialIndex  @I_tInc_Dec = 1,   @O_vFinancialIndex = @FINANCIALINDEX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 10426    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   insert FA00902   (  FINANCIALINDX,  ASSETINDEX,  BOOKINDX,  TRANSDATESTAMP,  TRANSTIMESTAMP,  FISCALYRADDED,  FAYEAR,  FAPERIOD,  DEPRFROMDATE,  DEPRTODATE,  AMOUNT,  TRANSUSERID,  SOURCDOC,  TRANSACCTTYPE,  INTERFACEGL,  GLINTTRXDATE,  GLINTDATESTAMP,  GLINTTIMESTAMP,  GLINTACCTINDX,  GLINTBTCHNUM  )  select   @FINANCIALINDEX,          @ASSETINDEX,                        @BOOKINDX,             @ActualDate,       @ActualTime,       @CURRFISCALYR,       case       when (@I_vLTDDEPRAMT <> 0)   then datepart(year,@FIRSTDAYFISCALYEAR - 1)  else @FISCALYEAR2  end,   case        when (@I_vLTDDEPRAMT <> 0)  then 12   else @PERIODID2  end,   @I_vPLINSERVDATE,      case       when (@I_vLTDDEPRAMT <> 0) and (datepart(year,@I_vDEPRTODATE) < @CURRFISCALYR)  then @I_vDEPRTODATE  when (@I_vLTDDEPRAMT <> 0)   then @FIRSTDAYFISCALYEAR - 1  else @I_vDEPRTODATE  end,   case       when (@I_vLTDDEPRAMT <> 0) and (@I_vYTDDEPRAMT <> 0)  then @I_vLTDDEPRAMT - @I_vYTDDEPRAMT  else @I_vLTDDEPRAMT  end,   @I_vUSERID,       'FAADD',       2,        1,        '',        '',        '',        @DEPREXPACCTINDX,      ''       if @@error <> 0  begin  select @O_iErrorState = 10427    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end   if (@I_vDEPRTODATE >= @I_vPLINSERVDATE) and (@I_vLTDDEPRAMT <> 0)  begin  exec @iStatus = taGetFinancialIndex  @I_tInc_Dec = 1,   @O_vFinancialIndex = @FINANCIALINDEX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 10428    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   insert FA00902   (  FINANCIALINDX,  ASSETINDEX,  BOOKINDX,  TRANSDATESTAMP,  TRANSTIMESTAMP,  FISCALYRADDED,  FAYEAR,  FAPERIOD,  DEPRFROMDATE,  DEPRTODATE,  AMOUNT,  TRANSUSERID,  SOURCDOC,  TRANSACCTTYPE,  INTERFACEGL,  GLINTTRXDATE,  GLINTDATESTAMP,  GLINTTIMESTAMP,  GLINTACCTINDX,  GLINTBTCHNUM  )  select   @FINANCIALINDEX,          @ASSETINDEX,                        @BOOKINDX,             @ActualDate,       @ActualTime,       @CURRFISCALYR,       case       when (@I_vLTDDEPRAMT <> 0)   then datepart(year,@FIRSTDAYFISCALYEAR - 1)  else @FISCALYEAR2  end,   case        when (@I_vLTDDEPRAMT <> 0)  then 12   else @PERIODID2  end,   @I_vPLINSERVDATE,     case       when (@I_vLTDDEPRAMT <> 0) and (datepart(year,@I_vDEPRTODATE) < @CURRFISCALYR)  then @I_vDEPRTODATE  when (@I_vLTDDEPRAMT <> 0)   then @FIRSTDAYFISCALYEAR - 1  else @I_vDEPRTODATE  end,   case       when (@I_vLTDDEPRAMT <> 0) and (@I_vYTDDEPRAMT <> 0)  then (@I_vLTDDEPRAMT - @I_vYTDDEPRAMT) * -1  else @I_vLTDDEPRAMT  * -1  end,  @I_vUSERID,       'FAADD',       1,        1,        '',        '',        '',        @DEPRRESVACCTINDX,      ''       if @@error <> 0  begin  select @O_iErrorState = 10429    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end   if (@I_vDEPRTODATE >= @I_vPLINSERVDATE) and (@I_vYTDDEPRAMT <> 0)  begin  exec @iStatus = taGetFinancialIndex  @I_tInc_Dec = 1,   @O_vFinancialIndex = @FINANCIALINDEX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 10430    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   insert FA00902   (  FINANCIALINDX,  ASSETINDEX,  BOOKINDX,  TRANSDATESTAMP,  TRANSTIMESTAMP,  FISCALYRADDED,  FAYEAR,  FAPERIOD,  DEPRFROMDATE,  DEPRTODATE,  AMOUNT,  TRANSUSERID,  SOURCDOC,  TRANSACCTTYPE,  INTERFACEGL,  GLINTTRXDATE,  GLINTDATESTAMP,  GLINTTIMESTAMP,  GLINTACCTINDX,  GLINTBTCHNUM  )  select   @FINANCIALINDEX,          @ASSETINDEX,                        @BOOKINDX,             @ActualDate,       @ActualTime,       @CURRFISCALYR,       @FISCALYEAR2,       @PERIODID2,       case        when (@I_vYTDDEPRAMT <> 0)  then @FIRSTDAYFISCALYEAR  else @I_vPLINSERVDATE  end,   @I_vDEPRTODATE,      @I_vYTDDEPRAMT,      @I_vUSERID,       'FAADD',       2,        1,        '',        '',        '',        @DEPREXPACCTINDX,      ''       if @@error <> 0  begin  select @O_iErrorState = 10431    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end   if (@I_vDEPRTODATE >= @I_vPLINSERVDATE) and (@I_vYTDDEPRAMT <> 0)  begin  exec @iStatus = taGetFinancialIndex  @I_tInc_Dec = 1,   @O_vFinancialIndex = @FINANCIALINDEX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 10432    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   insert FA00902   (  FINANCIALINDX,  ASSETINDEX,  BOOKINDX,  TRANSDATESTAMP,  TRANSTIMESTAMP,  FISCALYRADDED,  FAYEAR,  FAPERIOD,  DEPRFROMDATE,  DEPRTODATE,  AMOUNT,  TRANSUSERID,  SOURCDOC,  TRANSACCTTYPE,  INTERFACEGL,  GLINTTRXDATE,  GLINTDATESTAMP,  GLINTTIMESTAMP,  GLINTACCTINDX,  GLINTBTCHNUM  )  select   @FINANCIALINDEX,          @ASSETINDEX,                        @BOOKINDX,             @ActualDate,       @ActualTime,       @CURRFISCALYR,       @FISCALYEAR2,       @PERIODID2,       case        when (@I_vYTDDEPRAMT <> 0)   then @FIRSTDAYFISCALYEAR  else @I_vPLINSERVDATE  end,   @I_vDEPRTODATE,      @I_vYTDDEPRAMT * -1,     @I_vUSERID,       'FAADD',       1,        1,        '',        '',        '',        @DEPRRESVACCTINDX,      ''       if @@error <> 0  begin  select @O_iErrorState = 10433    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  FETCH NEXT FROM FinIndex INTO @BOOKINDX, @CURRFISCALYR  end  deallocate FinIndex  end  end end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  exec @iStatus = taCreateAssetBookPost  @I_vASSETID,  @I_vASSETIDSUF,   @I_vBOOKID,  @I_vPLINSERVDATE,  @I_vDATEADDED,  @I_vDEPRTODATE,  @I_vCOSTBASIS,  @I_vSALVAGEVALUE,  @I_vYTDDEPRAMT,  @I_vLTDDEPRAMT,  @I_vDEPRECIATIONMETHOD,  @I_vAVERAGINGCONV,   @I_vSWITCHOVER,  @I_vORIGINALLIFEYEARS,  @I_vORIGINALLIFEDAYS,  @I_vAMORTIZATIONCODE,  @I_vAMORTIZATIONAMOUNT,  @I_vInitial_Allowance_Perc,  @I_vSPECDEPRALLOW,  @I_vSPECDEPRALLOWPCT,  @I_vLUXAUTOIND,  @I_vLUXVANTRUCK,  @I_vLUXELAUTO,  @I_vUSERID,  @I_vUpdateIfExists,   @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 10406    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetBook] TO [DYNGRP]
GO
