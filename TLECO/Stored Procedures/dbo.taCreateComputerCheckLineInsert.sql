SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateComputerCheckLineInsert] @I_vBACHNUMB char(15),    @I_vEMPLOYID char(15),    @I_vCOMPTRTP smallint=1,   @I_vSALCHG smallint=0,     @I_vUPRTRXCD char(6),    @I_vTRXBEGDT datetime='',   @I_vTRXENDDT datetime='',   @I_vTRXHRUNT numeric(19,5)=0,      @I_vHRLYPYRT numeric(19,5)=0,   @I_vPAYRTAMT numeric(19,5)=0,    @I_vVARDBAMT numeric(19,5)=0,   @I_vVARDBPCT numeric(19,5)=0,     @I_vRECEIPTS numeric(19,5)=0,   @I_vDAYSWRDK numeric(19,5)=0,     @I_vWKSWRKD numeric(19,5)=0,     @I_vDEPRTMNT char(6)='',   @I_vJOBTITLE char(6)='',   @I_vSTATECD char(2)='',    @I_vLOCALTAX char(6)='',   @I_vSUTASTAT char(2)='',   @I_vWRKRCOMP char(6)='',   @I_vSHFTCODE char(6)='',   @I_vSHFTPREM numeric(19,5)=0,   @I_vRequesterTrx smallint = 0,   @I_vUSERID char(15) = '',   @I_vUSRDEFND1 char(50) = '',       @I_vUSRDEFND2 char(50) = '',       @I_vUSRDEFND3 char(50) = '',       @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare @COMPTRNM int,      @SHFTPREM numeric(19,5),  @SHFTTYPE int,  @PAYPEROD smallint,  @PAYTYPE smallint,  @PAYRTAMT numeric(19,5),  @DEDNMTHD smallint,  @BNFTMTHD smallint,  @sCompanyID int,  @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @nNextNoteIndex numeric(19,5),    @iGetNextNoteIdxErrState int,    @iAddCodeErrState int,  @iGetNextUPRManualTrxNumberErrState int,  @O_oErrorState int,  @iError int,      @INACTIVE tinyint,  @DSPYRTRX tinyint,  @SBJTSTTX tinyint,  @SBJTLTAX tinyint  select @COMPTRNM = 0,  @SHFTPREM = 0,  @SHFTTYPE = 0,  @PAYPEROD = 0,  @PAYTYPE = 0,  @PAYRTAMT = 0,  @DEDNMTHD = 0,  @BNFTMTHD = 0,  @sCompanyID = 0,  @iStatus = 0,  @iCustomState = 0,  @iCustomErrString = '',  @nNextNoteIndex = 0,  @iGetNextNoteIdxErrState = 0,  @iAddCodeErrState = 0,  @iGetNextUPRManualTrxNumberErrState = 0,  @O_oErrorState = 0,  @iError = 0,  @O_iErrorState = 0,  @INACTIVE = 0,  @DSPYRTRX = 0,  @SBJTSTTX = 0,  @SBJTLTAX = 0   select @sCompanyID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  select @DSPYRTRX = DSPYRTRX from UPR40200 (nolock)  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateComputerCheckLineInsertPre  @I_vBACHNUMB output,  @I_vEMPLOYID output,  @I_vCOMPTRTP output,  @I_vSALCHG output,  @I_vUPRTRXCD output,  @I_vTRXBEGDT output,  @I_vTRXENDDT output,  @I_vTRXHRUNT output,  @I_vHRLYPYRT output,  @I_vPAYRTAMT output,  @I_vVARDBAMT output,  @I_vVARDBPCT output,  @I_vRECEIPTS output,  @I_vDAYSWRDK output,  @I_vWKSWRKD output,  @I_vDEPRTMNT output,  @I_vJOBTITLE output,  @I_vSTATECD output,  @I_vLOCALTAX output,  @I_vSUTASTAT output,  @I_vWRKRCOMP output,  @I_vSHFTCODE output,  @I_vSHFTPREM output,  @I_vRequesterTrx output,  @I_vUSERID output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 3536    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vBACHNUMB is NULL or  @I_vEMPLOYID is NULL or  @I_vCOMPTRTP is NULL or  @I_vSALCHG is NULL or  @I_vUPRTRXCD is NULL or  @I_vTRXBEGDT is NULL or  @I_vTRXENDDT is NULL or  @I_vTRXHRUNT is NULL or  @I_vHRLYPYRT is NULL or  @I_vPAYRTAMT is NULL or  @I_vVARDBAMT is NULL or  @I_vVARDBPCT is NULL or  @I_vRECEIPTS is NULL or  @I_vDAYSWRDK is NULL or  @I_vWKSWRKD is NULL or  @I_vDEPRTMNT is NULL or  @I_vJOBTITLE is NULL or  @I_vSTATECD is NULL or  @I_vLOCALTAX is NULL or  @I_vSUTASTAT is NULL or  @I_vWRKRCOMP is NULL or  @I_vSHFTCODE is NULL or  @I_vSHFTPREM is NULL or  @I_vRequesterTrx is NULL or  @I_vUSERID is NULL or   @I_vUSRDEFND1 is NULL or  @I_vUSRDEFND2 is NULL or  @I_vUSRDEFND3 is NULL or  @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL   ) begin  select @O_iErrorState = 3537    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  select @I_vEMPLOYID = UPPER(@I_vEMPLOYID),  @I_vUPRTRXCD = UPPER(@I_vUPRTRXCD),  @I_vDEPRTMNT = UPPER(@I_vDEPRTMNT),  @I_vJOBTITLE = UPPER(@I_vJOBTITLE),  @I_vSTATECD = UPPER(@I_vSTATECD),  @I_vLOCALTAX = UPPER(@I_vLOCALTAX),  @I_vWRKRCOMP = UPPER(@I_vWRKRCOMP),  @I_vSUTASTAT = UPPER(@I_vSUTASTAT),  @I_vSHFTCODE = UPPER(@I_vSHFTCODE)  begin  exec @iStatus = taGetUPRNextComputerTrxNumber  @I_vInc_Dec = 1,  @O_vCOMPTRNM = @COMPTRNM output,  @O_vPYRLCTYP = 1,  @O_iErrorState = @iGetNextUPRManualTrxNumberErrState output  select @iError = @@error  if ((@iStatus <> 0) or (@iGetNextUPRManualTrxNumberErrState <> 0) or (@iError <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + @iGetNextUPRManualTrxNumberErrState  select @O_iErrorState = 3580   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if ( @I_vBACHNUMB = '' )  begin  select @O_iErrorState = 3539    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vEMPLOYID = '' ) begin  select @O_iErrorState = 3540    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUPRTRXCD = '' ) begin  select @O_iErrorState = 3541    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vEMPLOYID <> '' ) begin  if (not exists (select 1 from UPR00100 (nolock) where EMPLOYID = @I_vEMPLOYID ))  begin  select @O_iErrorState = 3586    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  select @INACTIVE = INACTIVE from UPR00100 (nolock) where EMPLOYID = @I_vEMPLOYID   if ( @I_vEMPLOYID <> '') and (@INACTIVE = 1) begin  select @O_iErrorState = 9504    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if ( @I_vCOMPTRTP < 1 or @I_vCOMPTRTP > 3 ) begin  select @O_iErrorState = 3582     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSALCHG < 0 or @I_vSALCHG > 5 ) begin  select @O_iErrorState = 3583     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vCOMPTRTP = 1)  begin  if (exists (select 1 from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD and INACTIVE = 1))  begin  select @O_iErrorState = 9505    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end   if (@I_vCOMPTRTP = 2)  begin  if (exists (select 1 from UPR00500 (nolock) where EMPLOYID = @I_vEMPLOYID and DEDUCTON = @I_vUPRTRXCD and INACTIVE = 1))  begin  select @O_iErrorState = 9506    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if (@I_vCOMPTRTP = 3)  begin  if (exists (select 1 from UPR00600 (nolock) where EMPLOYID = @I_vEMPLOYID and BENEFIT = @I_vUPRTRXCD and INACTIVE = 1))  begin  select @O_iErrorState = 9507    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vTRXBEGDT = '' ) begin  select @I_vTRXBEGDT = convert(varchar(12),getdate()) end  if ( @I_vTRXENDDT = '' ) begin  select @I_vTRXENDDT = convert(varchar(12),getdate()) end  if ( @I_vDEPRTMNT = '' and @I_vCOMPTRTP = 1 ) begin  select @I_vDEPRTMNT = DEPRTMNT from UPR00100 (nolock) where EMPLOYID = @I_vEMPLOYID end  if ( @I_vJOBTITLE = '' and @I_vCOMPTRTP = 1 ) begin  select @I_vJOBTITLE = JOBTITLE from UPR00100 (nolock) where EMPLOYID = @I_vEMPLOYID end  if ( @I_vSTATECD = '' and @I_vCOMPTRTP = 1 ) begin  select @I_vSTATECD = STATECD from UPR00300 (nolock) where EMPLOYID = @I_vEMPLOYID    end  if ( @I_vLOCALTAX = '' and @I_vCOMPTRTP = 1 ) begin  select @I_vLOCALTAX = LOCALTAX from UPR00300 (nolock) where EMPLOYID = @I_vEMPLOYID end  if ( @I_vSUTASTAT = '' and @I_vCOMPTRTP = 1 ) begin  select @I_vSUTASTAT = SUTASTAT from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD and SBJTSUTA = 1 end  if ( @I_vWRKRCOMP = '' and @I_vCOMPTRTP = 1 ) begin  select @I_vWRKRCOMP = WRKRCOMP from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD end  if ( @I_vSHFTCODE = '' and @I_vCOMPTRTP = 1 ) begin  select @I_vSHFTCODE = SHFTCODE from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD end  if ( @I_vEMPLOYID <> '' and @I_vUPRTRXCD <> '' and @I_vCOMPTRTP = 1 )  begin  if (not exists (select 1 from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD))  begin  select @O_iErrorState = 3588    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end  else  begin  select @SBJTSTTX = SBJTSTTX, @SBJTLTAX = SBJTLTAX from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD  end end  if ( @I_vEMPLOYID <> '' and @I_vUPRTRXCD <> '' and @I_vCOMPTRTP = 2 ) begin  if (not exists (select 1 from UPR00500 (nolock) where EMPLOYID = @I_vEMPLOYID and DEDUCTON = @I_vUPRTRXCD))  begin  select @O_iErrorState = 3589    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vEMPLOYID <> '' and @I_vUPRTRXCD <> '' and @I_vCOMPTRTP = 2 ) begin  if (not exists (select 1 from UPR00500 (nolock) where EMPLOYID = @I_vEMPLOYID and DEDUCTON = @I_vUPRTRXCD and VARDEDTN = 1))  begin  select @O_iErrorState = 3601    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vEMPLOYID <> '' and @I_vUPRTRXCD <> '' and @I_vCOMPTRTP = 3 ) begin  if (not exists (select 1 from UPR00600 (nolock) where EMPLOYID = @I_vEMPLOYID and BENEFIT = @I_vUPRTRXCD))  begin  select @O_iErrorState = 3590    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vEMPLOYID <> '' and @I_vUPRTRXCD <> '' and @I_vCOMPTRTP = 3 ) begin  if (not exists (select 1 from UPR00600 (nolock) where EMPLOYID = @I_vEMPLOYID and BENEFIT = @I_vUPRTRXCD and VARBENFT = 1))  begin  select @O_iErrorState = 3602    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vEMPLOYID <> '' and @I_vSTATECD <> '' and @I_vCOMPTRTP = 1 ) begin  if (not exists (select 1 from UPR00700 (nolock) where EMPLOYID = @I_vEMPLOYID and STATECD = @I_vSTATECD))  begin  select @I_vSTATECD = ''  end end  if ( @I_vEMPLOYID <> '' and @I_vLOCALTAX <> '' and @I_vCOMPTRTP = 1 ) begin  if (not exists (select 1 from UPR00800 (nolock) where EMPLOYID = @I_vEMPLOYID and LOCALTAX = @I_vLOCALTAX))  begin  select @I_vLOCALTAX = ''  end end  if ( @COMPTRNM <> 0 )  begin  if (exists (select 1 from UPR10309 (nolock) where PYRLCTYP = 1 and PYRLCNBR = @COMPTRNM))  begin  select @O_iErrorState = 3581    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vCOMPTRTP = 1 ) begin  select  @PAYTYPE = PAYTYPE,  @PAYPEROD = PAYPEROD  from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD end  if ( @I_vTRXHRUNT = 0 and @I_vCOMPTRTP = 1 and @PAYTYPE = 1) begin  select @I_vTRXHRUNT =  case  WHEN @PAYPEROD = 1    THEN 40  WHEN @PAYPEROD = 2   THEN 80  WHEN @PAYPEROD = 3   THEN 86.67  WHEN @PAYPEROD = 4   THEN 173.33  WHEN @PAYPEROD = 5   THEN 520  WHEN @PAYPEROD = 6   THEN 1040  WHEN @PAYPEROD = 7    THEN 2080  WHEN @PAYPEROD = 8   THEN 8  end end  if (@I_vHRLYPYRT = 0 and @I_vCOMPTRTP = 1) or (@I_vHRLYPYRT <> 0 and @DSPYRTRX = 0) begin  select @I_vHRLYPYRT = PAYRTAMT from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD end  if ( @I_vPAYRTAMT = 0 and @I_vCOMPTRTP = 1 ) and ( @PAYTYPE = 4 or @PAYTYPE = 5 or @PAYTYPE = 12 ) begin   select @I_vPAYRTAMT = PAYRTAMT from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD end  if ( @I_vCOMPTRTP = 2 ) begin  select  @DEDNMTHD = DEDNMTHD from UPR00500 (nolock) where EMPLOYID = @I_vEMPLOYID and DEDUCTON = @I_vUPRTRXCD end  if ( @I_vVARDBPCT = 0 and @I_vCOMPTRTP = 2 ) and ( @DEDNMTHD = 1 or @DEDNMTHD = 2 ) begin  select @I_vVARDBPCT = DEDNPRCT_1 from UPR00500 (nolock) where EMPLOYID = @I_vEMPLOYID and DEDUCTON = @I_vUPRTRXCD end  if ( @I_vVARDBAMT = 0 and @I_vCOMPTRTP = 2 ) and ( @DEDNMTHD = 3 or @DEDNMTHD = 4 ) begin  select @I_vVARDBAMT = DEDCAMNT_1 from UPR00500 (nolock) where EMPLOYID = @I_vEMPLOYID and DEDUCTON = @I_vUPRTRXCD end  if ( @I_vCOMPTRTP = 3 ) begin   select @BNFTMTHD = BNFTMTHD from UPR00600 (nolock) where EMPLOYID = @I_vEMPLOYID and BENEFIT = @I_vUPRTRXCD end  if ( @I_vVARDBPCT = 0 and @I_vCOMPTRTP = 3 ) and ( @BNFTMTHD = 1 or @BNFTMTHD = 2 or @BNFTMTHD = 3 ) begin  select @I_vVARDBPCT = BNFPRCNT_1 from UPR00600 (nolock) where EMPLOYID = @I_vEMPLOYID and BENEFIT = @I_vUPRTRXCD end  if ( @I_vVARDBAMT = 0 and @I_vCOMPTRTP = 3 ) and ( @BNFTMTHD = 4 or @BNFTMTHD = 5 ) begin  select @I_vVARDBAMT = BNFITAMT_1 from UPR00600 (nolock) where EMPLOYID = @I_vEMPLOYID and BENEFIT = @I_vUPRTRXCD end  if ( @PAYTYPE = 2 and @I_vSALCHG = 0 ) begin  select @O_iErrorState = 3605     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 2 and @I_vSALCHG = 1 and @I_vPAYRTAMT = 0) begin  select @O_iErrorState = 3606     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 2 and @I_vSALCHG = 2 and @I_vTRXHRUNT = 0) begin  select @O_iErrorState = 3607     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 2 and @I_vSALCHG = 3 and @I_vPAYRTAMT = 0) begin  select @O_iErrorState = 3608     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 2 and @I_vSALCHG = 4 and @I_vTRXHRUNT = 0) begin  select @O_iErrorState = 3609     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 2 and @I_vSALCHG = 5 and @I_vPAYRTAMT = 0) begin  select @O_iErrorState = 3610     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 3 and @I_vTRXHRUNT = 0) begin  select @O_iErrorState = 4418     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 6 and @I_vTRXHRUNT = 0) begin  select @O_iErrorState = 3641     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 7 and @I_vTRXHRUNT = 0) begin  select @O_iErrorState = 4306     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 8 and @I_vTRXHRUNT = 0) begin  select @O_iErrorState = 4307     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 9 and @I_vTRXHRUNT = 0) begin  select @O_iErrorState = 4308     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 10 and @I_vTRXHRUNT = 0) begin  select @O_iErrorState = 4309     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 11 ) begin  select @O_iErrorState = 4310    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 13 ) begin  select @O_iErrorState = 4311    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 14 and @I_vPAYRTAMT = 0)  begin  select @O_iErrorState = 4312     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 15 and @I_vPAYRTAMT = 0) begin  select @O_iErrorState = 4313     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @PAYTYPE = 16 and @I_vTRXHRUNT = 0)  begin  select @O_iErrorState = 4314     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEPRTMNT = '' and @I_vCOMPTRTP = 1 ) begin  select @O_iErrorState = 3584     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vJOBTITLE = '' and @I_vCOMPTRTP = 1 ) begin  select @O_iErrorState = 3585     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vTRXENDDT < @I_vTRXBEGDT )  begin  select @O_iErrorState = 3587     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEPRTMNT <> '' ) begin  if (not exists (select 1 from UPR40300 (nolock) where DEPRTMNT = @I_vDEPRTMNT ))  begin  select @O_iErrorState = 3591     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vJOBTITLE <> '' ) begin  if (not exists (select 1 from UPR40301 (nolock) where JOBTITLE = @I_vJOBTITLE ))  begin  select @O_iErrorState = 3592     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vLOCALTAX <> '' ) begin  if (not exists (select 1 from UPR41400 (nolock) where LOCALTAX = @I_vLOCALTAX ))  begin  select @O_iErrorState = 3593     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vWRKRCOMP <> '' ) begin  if (not exists (select 1 from UPR40700 (nolock) where WRKRCOMP = @I_vWRKRCOMP ))  begin  select @O_iErrorState = 3594     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vSTATECD <> '' ) begin  if (not exists (select 1 from UPR41100 (nolock) where STATECD = @I_vSTATECD ))  begin  select @O_iErrorState = 3595     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vSUTASTAT <> '' ) begin  if (not exists (select 1 from UPR41100 (nolock) where STATECD = @I_vSUTASTAT ))  begin  select @O_iErrorState = 3596     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if ( @I_vSHFTCODE <> '' ) begin  if (not exists (select 1 from UPR41500 (nolock) where SHFTCODE = @I_vSHFTCODE ))  begin  select @O_iErrorState = 3597     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end  if (exists (select 1 from UPR41500 (nolock) where SHFTCODE = @I_vSHFTCODE and INACTIVE = 1))  begin  select @I_vSHFTCODE = ''  end  end  if ( @I_vSHFTCODE <> '' and @I_vCOMPTRTP <> 1 )  begin  select @O_iErrorState = 3598     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDAYSWRDK < 0 )  begin  select @O_iErrorState = 3574     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vWKSWRKD < 0 )  begin  select @O_iErrorState = 3575     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1)  begin  select @O_iErrorState = 3576     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSHFTCODE <> '' and @I_vCOMPTRTP = 1 and @I_vSHFTPREM = 0 ) begin  select @SHFTTYPE = SHFTTYPE from UPR41500 (nolock) where SHFTCODE = @I_vSHFTCODE end  if ( @I_vSHFTCODE <> '' and @I_vCOMPTRTP = 1 and @I_vSHFTPREM = 0 ) begin  select @PAYRTAMT = PAYRTAMT from UPR00400 (nolock) where EMPLOYID = @I_vEMPLOYID and PAYRCORD = @I_vUPRTRXCD end  if ( @I_vSHFTCODE <> '' and @SHFTTYPE = 0 and @I_vCOMPTRTP = 1 and @I_vSHFTPREM = 0 ) begin  select @I_vSHFTPREM = SHFTAMT from UPR41500 (nolock) where SHFTCODE = @I_vSHFTCODE end  if ( @I_vSHFTCODE <> '' and @SHFTTYPE = 1 and @I_vCOMPTRTP = 1 and @I_vSHFTPREM = 0 ) begin  select @I_vSHFTPREM = @PAYRTAMT * SHFTPCT/100 from UPR41500 (nolock) where SHFTCODE = @I_vSHFTCODE end  if (@I_vPAYRTAMT < 0) and (@PAYTYPE <> 4)    begin  select @O_iErrorState = 7388     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vHRLYPYRT < 0) and (@I_vCOMPTRTP = 1) begin  select @O_iErrorState = 9500     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vTRXHRUNT < 0) and (@I_vSALCHG in (2,4)) begin  select @O_iErrorState = 9502     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if @O_iErrorState <> 0 begin  return (@O_iErrorState) end   exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @sCompanyID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @nNextNoteIndex output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if ((@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iGetNextNoteIdxErrState))  select @O_iErrorState = 3538   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if not exists( select 1 from UPR10309 (nolock) where PYRLCTYP = 1 and PYRLCNBR = @COMPTRNM ) begin  insert UPR10309(  PYRLCTYP,  PYRLCNBR,  USERID  )  select   1,      @COMPTRNM,    @I_vUSERID    if @@error <> 0  begin  select @O_iErrorState = 5371    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end else begin  select @O_iErrorState = 5372    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  begin  if not exists( select 1 from UPR10302 (nolock) where COMPTRNM = @COMPTRNM )  begin  insert UPR10302(  COMPTRNM,  BACHNUMB,  EMPLOYID,  COMPTRTP,  SALCHG,  UPRTRXCD,  TRXBEGDT,  TRXENDDT,  TRXHRUNT,  HRLYPYRT,  PAYRTAMT,  VARDBAMT,  VARDBPCT,  RECEIPTS,  DAYSWRDK,  WKSWRKD,  DEPRTMNT,  JOBTITLE,  STATECD,  LOCALTAX,  SUTASTAT,  WRKRCOMP,  LASTUSER,  LSTDTEDT,  TRXSORCE,  DOCTYPE,  VOIDED,  NOTEINDX,  INADDNTOSAL,  SHFTCODE,  SHFTPREM,  JOBNUMBR,  UNIONCD  )  select  @COMPTRNM,       @I_vBACHNUMB,       @I_vEMPLOYID,       @I_vCOMPTRTP,       case        WHEN @I_vCOMPTRTP = 1 and @PAYTYPE = 2  THEN @I_vSALCHG  ELSE 0  end,  @I_vUPRTRXCD,       @I_vTRXBEGDT,       @I_vTRXENDDT,       @I_vTRXHRUNT * 100,      case        WHEN @I_vCOMPTRTP = 1  THEN @I_vHRLYPYRT  ELSE 0  end,  case        WHEN @I_vCOMPTRTP = 2 or @I_vCOMPTRTP = 3  THEN 0  WHEN (@I_vCOMPTRTP = 1 and @PAYTYPE = 2) and ( @I_vSALCHG = 2 or @I_vSALCHG = 4 )  THEN 0  ELSE @I_vPAYRTAMT  end,  case        WHEN @I_vCOMPTRTP = 1  THEN 0  ELSE @I_vVARDBAMT  end,  case        WHEN @I_vCOMPTRTP = 1  THEN 0  ELSE @I_vVARDBPCT * 100000  end,  @I_vRECEIPTS,       @I_vDAYSWRDK * 100,      @I_vWKSWRKD * 100,       case        WHEN @I_vCOMPTRTP = 1  THEN @I_vDEPRTMNT  ELSE ''  end,  case        WHEN @I_vCOMPTRTP = 1  THEN @I_vJOBTITLE  ELSE ''  end,  case        WHEN @I_vCOMPTRTP = 1 and @SBJTSTTX = 1  THEN @I_vSTATECD  ELSE ''  end,  case        WHEN @I_vCOMPTRTP = 1 and @SBJTLTAX = 1  THEN @I_vLOCALTAX  ELSE ''  end,  case        WHEN @I_vCOMPTRTP = 1  THEN @I_vSUTASTAT  ELSE ''  end,  case        WHEN @I_vCOMPTRTP = 1   THEN @I_vWRKRCOMP  ELSE ''  end,  'eConnect',       convert(varchar(12),getdate()),     '',        0,        0,        @nNextNoteIndex,      0,        @I_vSHFTCODE,       case        WHEN @I_vCOMPTRTP = 1  THEN @I_vSHFTPREM  ELSE 0  end,  '',        ''        if @@error <> 0  begin  select @O_iErrorState = 3599    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  exec @iStatus = taCreateComputerCheckLineInsertPost  @I_vBACHNUMB,  @I_vEMPLOYID,  @I_vCOMPTRTP,  @I_vSALCHG,  @I_vUPRTRXCD,  @I_vTRXBEGDT,  @I_vTRXENDDT,  @I_vTRXHRUNT,  @I_vHRLYPYRT,  @I_vPAYRTAMT,  @I_vVARDBAMT,  @I_vVARDBPCT,  @I_vRECEIPTS,  @I_vDAYSWRDK,  @I_vWKSWRKD,  @I_vDEPRTMNT,  @I_vJOBTITLE,  @I_vSTATECD,  @I_vLOCALTAX,  @I_vSUTASTAT,  @I_vWRKRCOMP,  @I_vSHFTCODE,  @I_vSHFTPREM,  @I_vRequesterTrx ,  @I_vUSERID,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 3600    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateComputerCheckLineInsert] TO [DYNGRP]
GO
