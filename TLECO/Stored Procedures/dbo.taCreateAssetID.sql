SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetID]  @I_vASSETID char(15),    @I_vASSETIDSUF smallint = 1,    @I_vSHRTNAME char(15) = null,  @I_vASSETDESC char(40),   @I_vEXTASSETDESC char(40) = null,  @I_vMaster_Asset_ID char(19) = null,  @I_vSTRUCTUREID char(30) = null,  @I_vASSETCLASSID char(15),   @I_vLOCATNID char(15) = null,  @I_vACQDATE datetime,   @I_vAcquisition_Cost numeric(19,5) = null,  @I_vASSETTYPE smallint = null,  @I_vASSETSTATUS smallint = null,  @I_vPROPTYPE smallint = null,   @I_vASSETQTY int = null,   @I_vASSETBEGQTY int = null,    @I_vASSETCURRMAINT numeric(19,5) = null,  @I_vASSETYTDMAINT numeric(19,5) = null,  @I_vASSETLTDMAINT numeric(19,5) = null,  @I_vLASTMAINTDATE datetime = null,  @I_vASSESSEDVALUE numeric(19,5) = null,  @I_vMFGRNAME char(25) = null,  @I_vSERLNMBR char(20) = null,  @I_vMODELNUMBER char(20) = null,  @I_vWARRENTYDATE datetime = null,  @I_vCUSTODIAN char(25) = null,  @I_vDATEADDED datetime = null,  @I_vDELETEDATE datetime = null,  @I_vPhysical_Location_ID char(15) = null,  @I_vAsset_Label char(19) = null,  @I_vVerified_Date datetime = null,  @I_vPIN char(15) = null,  @I_vACCTGRPID           char(15) = null, @I_vUpdateIfExists  tinyint = 1,   @I_vUSRDEFND1   char(50) = '',       @I_vUSRDEFND2   char(50) = '',       @I_vUSRDEFND3   char(50) = '',       @I_vUSRDEFND4   varchar(8000) = '',  @I_vUSRDEFND5   varchar(8000) = '',  @O_iErrorState   int output,   @oErrString   varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @ASSETINDEX int,    @FINANCIALINDEX int,    @DEFACCTGRPINDX int,    @CURNCYID char(15),    @CURRNIDX smallint,    @AUTOADDBOOKINFO smallint,   @PERIODID smallint,    @FISCALYEAR smallint,    @BOOKINDX int,     @CURRFISCALYR smallint,    @NOTEINDX numeric(19,5),  @ASSETCOSTACCTINDX int,    @CLEARINGACCTINDX int,    @CMPANYID smallint,  @Validate_Custodian tinyint,   @iCursorError int,    @iGetNextNoteIdxErrState int,  @O_iNumErrorState int,    @iAddCodeErrState int,    @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @CalendarID varchar(15),   @O_oErrorState int,  @iError int     select  @ASSETINDEX = 0,    @FINANCIALINDEX = 0,    @DEFACCTGRPINDX = 0,    @CURNCYID = '',     @CURRNIDX = 0,     @CMPANYID = 0,     @AUTOADDBOOKINFO = 0,    @Validate_Custodian = 0,   @PERIODID = 0,   @FISCALYEAR = 0,  @BOOKINDX = 0,  @CURRFISCALYR = 0,  @ASSETCOSTACCTINDX = 0,  @CLEARINGACCTINDX = 0,  @CalendarID ='',    @O_iNumErrorState = 0,  @iStatus = 0,   @O_iErrorState = 0    if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateAssetIDPre  @I_vASSETID output,  @I_vASSETIDSUF output,  @I_vSHRTNAME output,  @I_vASSETDESC output,  @I_vEXTASSETDESC output,  @I_vMaster_Asset_ID output,  @I_vSTRUCTUREID output,  @I_vASSETCLASSID output,  @I_vLOCATNID output,  @I_vACQDATE output,  @I_vAcquisition_Cost output,  @I_vASSETTYPE output,  @I_vASSETSTATUS output,  @I_vPROPTYPE output,  @I_vASSETQTY output,  @I_vASSETBEGQTY output,  @I_vASSETCURRMAINT output,  @I_vASSETYTDMAINT output,  @I_vASSETLTDMAINT output,  @I_vLASTMAINTDATE output,  @I_vASSESSEDVALUE output,  @I_vMFGRNAME output,  @I_vSERLNMBR output,  @I_vMODELNUMBER output,  @I_vWARRENTYDATE output,  @I_vCUSTODIAN output,  @I_vDATEADDED output,  @I_vDELETEDATE  output,   @I_vPhysical_Location_ID output,  @I_vAsset_Label output,  @I_vVerified_Date output,  @I_vPIN output,  @I_vACCTGRPID output,  @I_vUpdateIfExists output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 3229     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if(  @I_vASSETID is NULL or  @I_vASSETIDSUF is NULL or   @I_vASSETDESC is NULL or  @I_vASSETCLASSID is NULL or  @I_vACQDATE is NULL or  @I_vUpdateIfExists is NULL or   @I_vUSRDEFND1 is NULL or   @I_vUSRDEFND2 is NULL or   @I_vUSRDEFND3 is NULL or   @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL   )  begin  select @O_iErrorState = 3230     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vASSETID = UPPER(@I_vASSETID),  @I_vMaster_Asset_ID = UPPER(@I_vMaster_Asset_ID),  @I_vASSETCLASSID = UPPER(@I_vASSETCLASSID),  @I_vPhysical_Location_ID = UPPER(@I_vPhysical_Location_ID),  @I_vAsset_Label = UPPER(@I_vAsset_Label),  @I_vSTRUCTUREID = UPPER(@I_vSTRUCTUREID),  @I_vCUSTODIAN = UPPER(@I_vCUSTODIAN),  @I_vLOCATNID = UPPER(@I_vLOCATNID),  @I_vSERLNMBR = UPPER(@I_vSERLNMBR),  @I_vMODELNUMBER = UPPER(@I_vMODELNUMBER)  select @CMPANYID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()   if (@ASSETINDEX = 0)   begin  exec @iStatus = taGetFAIndex  @I_tInc_Dec = 1,   @O_vFAIndex = @ASSETINDEX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 6625   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  select  @CURNCYID = FUNLCURR,  @CURRNIDX = FUNCRIDX  from MC40000 (nolock)  select @AUTOADDBOOKINFO = Auto_Add_Book_Info from FA49900 (nolock) where CMPANYID = @CMPANYID  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @CMPANYID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @NOTEINDX output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) begin  if (@iGetNextNoteIdxErrState <> 0)  begin  exec @iStatus = taUpdateString  @iGetNextNoteIdxErrState,  @oErrString,  @oErrString output,  @O_oErrorState output  end   select @O_iErrorState = 3231   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if  ( @I_vASSETID = '' ) begin  select @O_iErrorState = 3232     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  ( @I_vASSETDESC = '' ) begin  select @O_iErrorState = 3233     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vASSETIDSUF < 1 and @I_vASSETIDSUF > 999 )  begin   select @O_iErrorState = 7028     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  (( @I_vPROPTYPE is not null) and ( @I_vPROPTYPE < 1 or @I_vPROPTYPE > 9 )) begin  select @O_iErrorState = 3234     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  (( @I_vASSETTYPE is not null ) and ( @I_vASSETTYPE < 1 or @I_vASSETTYPE > 3 )) begin  select @O_iErrorState = 3235     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  (( @I_vASSETSTATUS is not null ) and ( @I_vASSETSTATUS < 1 or @I_vASSETSTATUS > 4 )) begin  select @O_iErrorState = 3236     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  ( @I_vASSETCLASSID = '' ) begin  select @O_iErrorState = 6624     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  ( @I_vASSETCLASSID <> '' ) begin  if (not exists(select 1 from FA40201 (nolock) where ASSETCLASSID = @I_vASSETCLASSID))  begin  select @O_iErrorState = 3238     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if @I_vACCTGRPID is not null  begin   if (not exists(select 1 from FA41300 (nolock) where ACCTGRPID = @I_vACCTGRPID))  begin  select @O_iErrorState = 11487     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  else   select @DEFACCTGRPINDX = ACCTGRPINDEX from FA41300 (nolock) where ACCTGRPID = @I_vACCTGRPID  end   else  begin  select @DEFACCTGRPINDX = DEFACCTGRPINDX from FA40201 (nolock) where ASSETCLASSID = @I_vASSETCLASSID  end   if ( @DEFACCTGRPINDX = 0 )  begin  select  @ASSETCOSTACCTINDX = ASSETCOSTACCTINDX,@CLEARINGACCTINDX = CLEARINGACCTINDX  from FA41300 (nolock) where ACCTGRPINDEX = 1  end  if ( @DEFACCTGRPINDX <> 0 ) begin  select  @ASSETCOSTACCTINDX = ASSETCOSTACCTINDX,  @CLEARINGACCTINDX = CLEARINGACCTINDX  from FA41300 (nolock) where @DEFACCTGRPINDX = ACCTGRPINDEX end  if  (( @I_vPhysical_Location_ID is not null ) and ( @I_vPhysical_Location_ID <> '' )) begin  if (not exists(select 1 from FA42400 (nolock) where Physical_Location_ID = @I_vPhysical_Location_ID))  begin  select @O_iErrorState = 3239     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if  (( @I_vLOCATNID is not null ) and ( @I_vLOCATNID <> '' )) begin  if (not exists(select 1 from FA41100 (nolock) where LOCATNID = @I_vLOCATNID))  begin  select @O_iErrorState = 3240     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vACQDATE = '' ) begin  select @O_iErrorState = 5101     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  (( @I_vSTRUCTUREID is not null ) and ( @I_vSTRUCTUREID <> '' )) begin  if (not exists(select 1 from FA41500 (nolock) where STRUCTUREID = @I_vSTRUCTUREID))  begin  select @O_iErrorState = 3241     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  select @Validate_Custodian = Validate_Custodian from FA49900 (nolock)  if  ((@I_vCUSTODIAN is not null) and (@I_vCUSTODIAN <> '') and (@Validate_Custodian = 1)) begin  if (not exists(select 1 from UPR00100 (nolock) where EMPLOYID = @I_vCUSTODIAN))  begin  select @O_iErrorState = 3242     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vAcquisition_Cost is not null ) and ( @I_vAcquisition_Cost < 0 ) begin  select @O_iErrorState = 3237     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if  ( @I_vASSETQTY = 0 ) begin  select @O_iErrorState = 9176     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if ( @I_vUpdateIfExists < 0 or @I_vUpdateIfExists > 1 ) begin  select @O_iErrorState = 7025     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vUpdateIfExists = 0)  begin  if exists( select 1 from FA00100 (nolock) where  ASSETID = @I_vASSETID and ASSETIDSUF = @I_vASSETIDSUF)  begin  select @O_iErrorState = 8692     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if (@O_iErrorState = 0) begin  if not exists( select 1 from FA00100 (nolock) where  ASSETID = @I_vASSETID and ASSETIDSUF = @I_vASSETIDSUF )   begin  insert into FA00100   (ASSETINDEX,  ASSETID,  ASSETIDSUF,  SHRTNAME,  ASSETDESC,  EXTASSETDESC,  Master_Asset_ID,  STRUCTUREID,  ASSETCLASSID,  LOCATNID,  ACQDATE,  Acquisition_Cost,  ASSETTYPE,  ASSETSTATUS,  PROPTYPE,  ASSETQTY,  ASSETBEGQTY,  ASSETCURRMAINT,  ASSETYTDMAINT,  ASSETLTDMAINT,  LASTMAINTDATE,  ASSESSEDVALUE,  MFGRNAME,  SERLNMBR,  MODELNUMBER,  WARRENTYDATE,  CUSTODIAN,  NOTEINDX,  DATEADDED,  DELETEDATE,  Physical_Location_ID,  Asset_Label,  Verified_Date,  PIN,  LASTPURCHLINESEQ,  LASTMNTDDATE,  LASTMNTDTIME,  LASTMNTDUSERID  )  select   @ASSETINDEX,     @I_vASSETID,     @I_vASSETIDSUF,     case       when @I_vSHRTNAME is null  then ''  else @I_vSHRTNAME  end,  @I_vASSETDESC,     case      when @I_vEXTASSETDESC is null  then ''  else @I_vEXTASSETDESC  end,  case      when @I_vMaster_Asset_ID is null  then ''  else @I_vMaster_Asset_ID  end,  case       when @I_vSTRUCTUREID is null  then ''  else @I_vSTRUCTUREID  end,  @I_vASSETCLASSID,    case       when @I_vLOCATNID is null  then ''  else @I_vLOCATNID  end,  @I_vACQDATE,     case      when @I_vAcquisition_Cost is null  then 0  else @I_vAcquisition_Cost  end,  case       when @I_vASSETTYPE is null  then 1   else @I_vASSETTYPE  end,  case       when @I_vASSETSTATUS is null  then 1   else @I_vASSETSTATUS  end,  case       when @I_vPROPTYPE is null  then 1   else @I_vPROPTYPE  end,  case       when @I_vASSETQTY is null  then 1   else @I_vASSETQTY  end,  case       when @I_vASSETBEGQTY is null  then 1   else @I_vASSETBEGQTY  end,  case       when @I_vASSETCURRMAINT is null  then 0  else @I_vASSETCURRMAINT  end,   case       when @I_vASSETYTDMAINT is null  then 0  else @I_vASSETYTDMAINT  end,  case       when @I_vASSETLTDMAINT is null  then 0   else @I_vASSETLTDMAINT  end,   case       when @I_vLASTMAINTDATE is null  then ''  else @I_vLASTMAINTDATE  end,  case       when @I_vASSESSEDVALUE is null  then 0  else @I_vASSESSEDVALUE  end,  case       when @I_vMFGRNAME is null  then ''  else @I_vMFGRNAME  end,  case       when @I_vSERLNMBR is null  then ''  else @I_vSERLNMBR  end,  case       when @I_vMODELNUMBER is null  then ''  else @I_vMODELNUMBER  end,   case       when @I_vWARRENTYDATE is null  then ''  else @I_vWARRENTYDATE   end,   case       when @I_vCUSTODIAN is null  then ''  else @I_vCUSTODIAN  end,   @NOTEINDX,     case   when @I_vDATEADDED is null  then convert(varchar(12),getdate())  else @I_vDATEADDED  end,   case        when @I_vDELETEDATE is null  then ''  else @I_vDELETEDATE  end,  case      when @I_vPhysical_Location_ID is null  then ''  else @I_vPhysical_Location_ID  end,   case       when @I_vAsset_Label is null  then ''  else @I_vAsset_Label  end,   case       when @I_vVerified_Date is null  then ''  else @I_vVerified_Date  end,  case       when @I_vPIN is null  then ''  else @I_vPIN   end,  1,      convert(varchar(12),getdate()),   '',      'eConnect'      if @@error <> 0  begin  select @O_iErrorState = 3243    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if not exists( select 1 from FA00400 (nolock) where  ASSETINDEX = @ASSETINDEX )  begin  insert into FA00400 (  ASSETINDEX,   DEPREXPACCTINDX,   DEPRRESVACCTINDX,   PRIORYRDEPRACCTINDX,   ASSETCOSTACCTINDX,   PROCEEDSACCTINDX,   RECGAINLOSSACCTINDX,   NONRECGAINLOSSACCTINDX,   CLEARINGACCTINDX,   NOTEINDX,   LASTMNTDDATE,   LASTMNTDTIME,   LASTMNTDUSERID   )  select  @ASSETINDEX,     DEPREXPACCTINDX,     DEPRRESVACCTINDX,     PRIORYRDEPRACCTINDX,               ASSETCOSTACCTINDX,    PROCEEDSACCTINDX,          RECGAINLOSSACCTINDX,    NONRECGAINLOSSACCTINDX,         CLEARINGACCTINDX,    0,       convert(varchar(12),getdate()),   '',      'eConnect'      from FA41300 (nolock) where (ACCTGRPINDEX = @DEFACCTGRPINDX and @DEFACCTGRPINDX <> 0)   or (@DEFACCTGRPINDX = 0 and ACCTGRPINDEX = 1)  if @@error <> 0  begin  select @O_iErrorState = 6622    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if not exists( select 1 from FA01400 (nolock) where  ASSETINDEX = @ASSETINDEX )  begin  insert into FA01400 (  ASSETINDEX,  PURCHLINESEQ,   PURCHDESC,  Acquisition_Cost,  Orig_Acquisition_Cost,  VENDORID,  DOCNUMBR,  DOCDATE,  TRXSORCE,  ORCTRNUM,  FA_AP_Post_Index,  PORDNMBR,  CURNCYID,  CURRNIDX,  XCHGRATE,  EXCHDATE,  TIME1,  EXGTBLID,  RATETPID,  RTCLCMTD,  DENXRATE,  MCTRXSTT,  LASTMNTDDATE,  LASTMNTDTIME,  LASTMNTDUSERID   )  select   @ASSETINDEX,     1,       '',      case       WHEN @I_vAcquisition_Cost is null  THEN 0  ELSE @I_vAcquisition_Cost  end,  case      WHEN @I_vAcquisition_Cost is null   THEN 0   ELSE @I_vAcquisition_Cost  end,  '',      '',      @I_vACQDATE,     '',      '',      0,      '',      @CURNCYID,     @CURRNIDX,     0,      '',      '',      '',      '',      0,      0,      0,      convert(varchar(12),getdate()),   '',      'eConnect'       if @@error <> 0  begin  select @O_iErrorState = 6623    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   if not exists( select 1 from FA00200 (nolock) where  ASSETINDEX = @ASSETINDEX) and @AUTOADDBOOKINFO = 1   begin  insert into FA00200 (  ASSETINDEX,  BOOKINDX,  PLINSERVDATE,  DELETEDATE,  DEPRBEGDATE,  FULLYDEPRFLAG,  FULLYDEPRDATE,  ORIGINALLIFEYEARS,  ORIGINALLIFEDAYS,  REMAININGLIFEYEARS,  REMAININGLIFEDAYS,  DEPRTODATE,  LASTRECALCDATE,  LASTRECALCDATEFISYR,  BEGINYEARCOST,  BAGINSALVAGE,  BEGINRESERVE,  COSTBASIS,  SALVAGEVALUE,  DEPRECIATIONMETHOD,  AVERAGINGCONV,  SWITCHOVER,  SWITCHFM1METHOD,  SWITCHFM1AMOUNT,  SWITCHFM1DATE,  DLYDEPRRATE,  PERDEPRRATE,  YRLYDEPRRATE,  SAVEDLYDEPRRATE,  SAVEPERDEPRRATE,  SAVEYRLYDEPRRATE,  AMORTIZATIONCODE,  AMORTIZATIONAMOUNT,  CURRUNDEPRAMT,  PREVRUNDEPRAMT,  YTDDEPRAMT,  LTDDEPRAMT,  NETBOOKVALUE,  LUXAUTOIND,  PRORATEDRETDATE,  DEPRTODATEBFRET,  RECGAINLOSS,  NONRECGAINLOSS,  STLINEDEPRATRET,  COSTBFRETORDEL,  Initial_Allowance_Perc,  Initial_Allowance_Amount,  SPECDEPRALLOW,  SPECDEPRALLOWPCT,  SPECDEPRALLOWAMT,  NOTEINDX,  DATEADDED,  LASTMNTDDATE,  LASTMNTDTIME,  LASTMNTDUSERID  )  select  @ASSETINDEX,     a.BOOKINDX,     @I_vACQDATE,     '',      @I_vACQDATE,     'N',       '',       b.ORIGINALLIFEYEARS,    b.ORIGINALLIFEDAYS,    b.ORIGINALLIFEYEARS,    b.ORIGINALLIFEDAYS,    @I_vACQDATE,     '',      0,      case      when @I_vAcquisition_Cost is null  then 0  else @I_vAcquisition_Cost  end,  case       when @I_vAcquisition_Cost is null  then 0  else @I_vAcquisition_Cost * (b.SALVAGEPCT /10000.00)  end,   0,      case      when @I_vAcquisition_Cost is null  then 0  else @I_vAcquisition_Cost  end,   case       when @I_vAcquisition_Cost is null  then 0   else @I_vAcquisition_Cost * (b.SALVAGEPCT /10000.00)  end,   b.DEPRECIATIONMETHOD,    b.AVERAGINGCONV,    b.SWITCHOVER,     0,      0,      '',      0,      0,      0,      0,      0,      0,      b.AMORTIZATIONCODE,    b.AMORTIZATIONAMOUNT,    0,      0,      0,      0,      case      when @I_vAcquisition_Cost is null  then 0  else @I_vAcquisition_Cost  end,   b.LUXAUTOIND,     '',      '',      0,      0,      0,      0,      0,       0,      b.SPECDEPRALLOW,    b.SPECDEPRALLOWPCT,    (@I_vAcquisition_Cost * b.SPECDEPRALLOWPCT)/10000,    0,      convert(varchar(12),getdate()),   convert(varchar(12),getdate()),   '',      'eConnect'     from FA40200 a, FA40202 b (nolock) where a.BOOKID = b.BOOKID and b.ASSETCLASSID = @I_vASSETCLASSID   if @@error <> 0  begin  select @O_iErrorState = 6628    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   if not exists( select 1 from FA00902 (nolock) where ASSETINDEX = @ASSETINDEX) and @AUTOADDBOOKINFO = 1   begin  declare FinIndex insensitive CURSOR for   select a.BOOKINDX, a.CURRFISCALYR, a.CALNDRID  from FA40200 a (nolock), FA40202 b (nolock) where a.BOOKID = b.BOOKID and b.ASSETCLASSID = @I_vASSETCLASSID    set nocount on   OPEN FinIndex  select @iCursorError = @@cursor_rows  if @iCursorError = 0  begin  deallocate FinIndex  end  else   begin  FETCH NEXT FROM FinIndex INTO @BOOKINDX, @CURRFISCALYR, @CalendarID  WHILE (@@FETCH_STATUS <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 9148     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  exec @iStatus = taGetFinancialIndex  @I_tInc_Dec = 1,   @O_vFinancialIndex = @FINANCIALINDEX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 5348   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   insert into FA00902   (  FINANCIALINDX,  ASSETINDEX,  BOOKINDX,  TRANSDATESTAMP,  TRANSTIMESTAMP,  FISCALYRADDED,  FAYEAR,  FAPERIOD,  DEPRFROMDATE,  DEPRTODATE,  AMOUNT,  TRANSUSERID,  SOURCDOC,  TRANSACCTTYPE,  INTERFACEGL,  GLINTTRXDATE,  GLINTDATESTAMP,  GLINTTIMESTAMP,  GLINTACCTINDX,  GLINTBTCHNUM  )  select   @FINANCIALINDEX,          @ASSETINDEX,                               @BOOKINDX,                   convert(varchar(12),getdate()),     '',        @CURRFISCALYR,       (select FISCALYEAR from FA42100 (nolock) where (@I_vACQDATE between PERIODSTARTDATE and PERIODENDDATE) and CALNDRID = @CalendarID),   (select PERIODID from FA42100 (nolock) where (@I_vACQDATE between PERIODSTARTDATE and PERIODENDDATE) and CALNDRID = @CalendarID) ,    @I_vACQDATE,       @I_vACQDATE,       case       when @I_vAcquisition_Cost is null  then 0  else @I_vAcquisition_Cost  end,   'eConnect',       'FAADD',       3,        1,        '',        '',        '',        @ASSETCOSTACCTINDX,      ''        if @@error <> 0  begin  select @O_iErrorState = 5349    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   exec @iStatus = taGetFinancialIndex  @I_tInc_Dec = 1,   @O_vFinancialIndex = @FINANCIALINDEX output,  @O_iErrorState = @O_iNumErrorState output  select @iError = @@error  if ((@iStatus <> 0) or (@O_iNumErrorState <> 0) or (@iError <> 0))  begin  select @O_iErrorState = 5350   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   insert into FA00902   (  FINANCIALINDX,  ASSETINDEX,  BOOKINDX,  TRANSDATESTAMP,  TRANSTIMESTAMP,  FISCALYRADDED,  FAYEAR,  FAPERIOD,  DEPRFROMDATE,  DEPRTODATE,  AMOUNT,  TRANSUSERID,  SOURCDOC,  TRANSACCTTYPE,  INTERFACEGL,  GLINTTRXDATE,  GLINTDATESTAMP,  GLINTTIMESTAMP,  GLINTACCTINDX,  GLINTBTCHNUM  )  select   @FINANCIALINDEX,          @ASSETINDEX,                        @BOOKINDX,             convert(varchar(12),getdate()),     '',        @CURRFISCALYR,       (select FISCALYEAR from FA42100 (nolock) where (@I_vACQDATE between PERIODSTARTDATE and PERIODENDDATE) and CALNDRID = @CalendarID),    (select PERIODID from FA42100 (nolock) where (@I_vACQDATE between PERIODSTARTDATE and PERIODENDDATE) and CALNDRID = @CalendarID) ,   @I_vACQDATE,       @I_vACQDATE,      case       when @I_vAcquisition_Cost is null  then 0  else @I_vAcquisition_Cost * -1  end,   'eConnect',       'FAADD',       7,        1,        '',        '',        '',        @CLEARINGACCTINDX,      ''        if @@error <> 0  begin  select @O_iErrorState = 5351    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  FETCH NEXT FROM FinIndex INTO @BOOKINDX, @CURRFISCALYR, @CalendarID  end  deallocate FinIndex  end  end  end  end  end   end  else  begin  if ( @I_vUpdateIfExists = 1 )  begin  update FA00100   set SHRTNAME =   case   when @I_vSHRTNAME is null  then SHRTNAME  else @I_vSHRTNAME  end,  ASSETDESC = @I_vASSETDESC,  EXTASSETDESC =   case   when @I_vEXTASSETDESC is null  then EXTASSETDESC  else @I_vEXTASSETDESC  end,   Master_Asset_ID =   case   when @I_vMaster_Asset_ID is null  then Master_Asset_ID  else @I_vMaster_Asset_ID  end,  STRUCTUREID =   case   when @I_vSTRUCTUREID is null  then STRUCTUREID  else @I_vSTRUCTUREID  end,  ASSETCLASSID = @I_vASSETCLASSID,  LOCATNID =   case   when @I_vLOCATNID is null  then LOCATNID  else @I_vLOCATNID  end,  ACQDATE = @I_vACQDATE,  Acquisition_Cost =   case   when @I_vAcquisition_Cost is null  then Acquisition_Cost  else @I_vAcquisition_Cost  end,  ASSETTYPE =   case   when @I_vASSETTYPE is null  then ASSETTYPE  else @I_vASSETTYPE  end,  ASSETSTATUS =   case   when @I_vASSETSTATUS is null  then ASSETSTATUS  else @I_vASSETSTATUS  end,  PROPTYPE =   case   when @I_vPROPTYPE is null  then PROPTYPE  else @I_vPROPTYPE  end,  ASSETQTY =   case   when @I_vASSETQTY is null  then ASSETQTY  else @I_vASSETQTY  end,  ASSETBEGQTY =   case  when @I_vASSETBEGQTY is null  then ASSETBEGQTY  else @I_vASSETBEGQTY  end,  ASSETCURRMAINT =   case   when @I_vASSETCURRMAINT is null  then 0  else @I_vASSETCURRMAINT  end,  ASSETYTDMAINT =   case   when @I_vASSETYTDMAINT is null  then ASSETYTDMAINT  else @I_vASSETYTDMAINT  end,  ASSETLTDMAINT =   case   when @I_vASSETLTDMAINT is null  then ASSETLTDMAINT  else @I_vASSETLTDMAINT  end,  LASTMAINTDATE =   case   when @I_vLASTMAINTDATE is null  then LASTMAINTDATE  else @I_vLASTMAINTDATE  end,  ASSESSEDVALUE =   case   when @I_vASSESSEDVALUE is null  then ASSESSEDVALUE  else @I_vASSESSEDVALUE  end,  MFGRNAME =   case   when @I_vMFGRNAME is null  then MFGRNAME  else @I_vMFGRNAME  end,  SERLNMBR =   case   when @I_vSERLNMBR is null  then SERLNMBR  else @I_vSERLNMBR  end,  MODELNUMBER =   case   when @I_vMODELNUMBER is null  then MODELNUMBER  else @I_vMODELNUMBER  end,  WARRENTYDATE =   case   when @I_vWARRENTYDATE is null  then WARRENTYDATE  else @I_vWARRENTYDATE  end,  CUSTODIAN =   case   when @I_vCUSTODIAN is null  then CUSTODIAN  else @I_vCUSTODIAN  end,   DATEADDED =   case   when @I_vDATEADDED is null  then DATEADDED  else @I_vDATEADDED  end,  DELETEDATE =   case   when @I_vDELETEDATE is null  then DELETEDATE  else @I_vDELETEDATE  end,   Physical_Location_ID =   case   when @I_vPhysical_Location_ID is null  then Physical_Location_ID  else @I_vPhysical_Location_ID  end,  Asset_Label =   case   when @I_vAsset_Label is null  then Asset_Label  else @I_vAsset_Label  end,  Verified_Date =   case   when @I_vVerified_Date is null  then Verified_Date  else @I_vVerified_Date  end,  PIN =   case   when @I_vPIN is null  then PIN  else @I_vPIN  end  where ASSETID = @I_vASSETID and ASSETIDSUF = @I_vASSETIDSUF   if @@error <> 0  begin  select @O_iErrorState = 6234     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end  end end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  exec @iStatus = taCreateAssetIDPost  @I_vASSETID,  @I_vASSETIDSUF,   @I_vSHRTNAME,  @I_vASSETDESC,  @I_vEXTASSETDESC,  @I_vMaster_Asset_ID,  @I_vSTRUCTUREID,  @I_vASSETCLASSID,  @I_vLOCATNID,  @I_vACQDATE,  @I_vAcquisition_Cost,  @I_vASSETTYPE,  @I_vASSETSTATUS,  @I_vPROPTYPE,  @I_vASSETQTY,  @I_vASSETBEGQTY,  @I_vASSETCURRMAINT,  @I_vASSETYTDMAINT,  @I_vASSETLTDMAINT,  @I_vLASTMAINTDATE,  @I_vASSESSEDVALUE,  @I_vMFGRNAME,  @I_vSERLNMBR,  @I_vMODELNUMBER,  @I_vWARRENTYDATE,  @I_vCUSTODIAN,  @I_vDATEADDED,  @I_vDELETEDATE,  @I_vPhysical_Location_ID,  @I_vAsset_Label,  @I_vVerified_Date,  @I_vPIN,  @I_vACCTGRPID,  @I_vUpdateIfExists,   @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 3245    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetID] TO [DYNGRP]
GO