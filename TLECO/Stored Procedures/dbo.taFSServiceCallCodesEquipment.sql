SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSServiceCallCodesEquipment] @I_vSRVRECTYPE  smallint,   @I_vCALLNBR char(11),    @I_vITEMNMBR char(31) = '',   @I_vSERLNMBR char(21) = '',   @I_vCUSTNMBR char(15) = '',   @I_vPROBCDE char(11) = null,   @I_vCAUSECDE char(11) = null,   @I_vRPRCODE char(11) = null,   @I_vPMPERF tinyint = 0,    @I_vUpdateIfExists tinyint = 1,   @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',   @I_vUSRDEFND2 char(50) = '',     @I_vUSRDEFND3 char(50) = '',   @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @O_TODAY datetime,  @I_vEQPLINE int,  @I_vLNITMSEQ bigint,  @Note_Index_1 numeric (19,5),  @Note_Index_2 numeric (19,5),  @Note_Index_3 numeric (19,5),  @Line_Seq_Exists_1 smallint,  @Line_Seq_Exists_2 smallint,  @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @iAddCodeErrState int,    @O_oErrorState int,  @iError int,  @iGetNextNoteIdxErrState int,   @sCompanyID smallint,    @EQUIPID int,  @LINEEQUIPID int,  @SERLNMBR char(21),  @LSTDTEDT datetime,  @O_iBadReading tinyint,  @O_iItemMetered tinyint,  @iValueExists smallint,  @O_vPRDLINE char(21),  @iMULEQUIP smallint,  @iTotalNoEquipments int  select   @O_TODAY = convert(varchar(10), getdate(), 101),  @I_vEQPLINE = 0,  @I_vLNITMSEQ = 0,  @Note_Index_1 = 0,  @Note_Index_2 = 0,  @Note_Index_3 = 0,  @Line_Seq_Exists_1 = 0,  @Line_Seq_Exists_2 = 0,  @iStatus  = 0,  @iCustomState  = 0,  @iCustomErrString = '',  @iAddCodeErrState  = 0,  @O_oErrorState  = 0,  @iError  = 0,  @iGetNextNoteIdxErrState  = 0,  @sCompanyID  = 0,  @EQUIPID = 0,  @LINEEQUIPID = 0,  @SERLNMBR = '',  @LSTDTEDT = @O_TODAY,  @O_iErrorState = 0,  @oErrString = '',  @O_iBadReading = 0,  @O_iItemMetered = 0,  @iValueExists = 0,  @O_vPRDLINE = '',  @iMULEQUIP = 0,  @iTotalNoEquipments = 0  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taFSServiceCallCodesEquipmentPre  @I_vSRVRECTYPE output,  @I_vCALLNBR  output,   @I_vITEMNMBR  output,  @I_vSERLNMBR output,  @I_vCUSTNMBR output,   @I_vPROBCDE  output,  @I_vCAUSECDE  output,  @I_vRPRCODE  output,  @I_vPMPERF output,  @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  set @O_iErrorState = 1418     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vSRVRECTYPE is NULL or  @I_vCALLNBR is NULL or  @I_vCUSTNMBR is NULL or  ((@I_vITEMNMBR is NULL and @I_vSERLNMBR is NULL) and  (@I_vPROBCDE is NULL and @I_vCAUSECDE is NULL and @I_vRPRCODE is NULL)) or  (@I_vITEMNMBR is NULL and @I_vSERLNMBR is not NULL)  ) begin  set @O_iErrorState = 1419    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vSRVRECTYPE = 0 or  @I_vCALLNBR = '' or   (@I_vITEMNMBR = '' and @I_vSERLNMBR <> '')   ) begin  set @O_iErrorState = 1420    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vLNITMSEQ < 0 or  @I_vSRVRECTYPE < 0  ) begin  set @O_iErrorState = 1427    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vUpdateIfExists not in (0,1)) begin  set @O_iErrorState = 9896     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vCALLNBR = UPPER(@I_vCALLNBR),  @I_vITEMNMBR = UPPER(@I_vITEMNMBR),  @I_vSERLNMBR = UPPER(@I_vSERLNMBR),  @I_vCUSTNMBR = UPPER(@I_vCUSTNMBR),  @I_vPROBCDE = UPPER(@I_vPROBCDE),  @I_vCAUSECDE = UPPER(@I_vCAUSECDE),  @I_vRPRCODE = UPPER(@I_vRPRCODE)  set @iValueExists = 0 select @iValueExists = 1 from SVC30200 (nolock) where CALLNBR = @I_vCALLNBR and SRVRECTYPE = 3 if (@iValueExists <> 1)  select @iValueExists = 1 from SVC00200 (nolock) where CALLNBR = @I_vCALLNBR and SRVRECTYPE = 3  if (@iValueExists = 1) begin  select @O_iErrorState = 8959     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vSRVRECTYPE < 1 or @I_vSRVRECTYPE > 3) begin  set @O_iErrorState = 1421    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if exists(select 1 from SVC00215 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and MKDTOPST = 1) begin  set @O_iErrorState = 1422    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vSERLNMBR <> '') and (@I_vITEMNMBR <> '') begin  set @iValueExists = 0  select @iValueExists = 1, @SERLNMBR = isnull(SERLNMBR,''), @EQUIPID = isnull(EQUIPID,0) from SVC00300 (nolock)   where ITEMNMBR=@I_vITEMNMBR AND SERLNMBR = @I_vSERLNMBR AND CUSTNMBR = @I_vCUSTNMBR  if (@iValueExists <> 1)  begin  set @O_iErrorState = 1425     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vLNITMSEQ is null) or (@I_vLNITMSEQ = 0) begin  if (@I_vITEMNMBR = '' and @I_vSERLNMBR = '')  select TOP 1 @I_vLNITMSEQ=isnull(LNITMSEQ, 1),  @I_vITEMNMBR = case  when @I_vITEMNMBR = '' then isnull(ITEMNMBR, '')  else @I_vITEMNMBR  end,  @LINEEQUIPID = case  when @I_vSERLNMBR = '' and @EQUIPID = 0 then isnull(EQUIPID, 0)  else EQUIPID  end  from SVC00201 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR   else if (@I_vITEMNMBR <> '' and @I_vSERLNMBR <> '')  begin  select TOP 1 @I_vLNITMSEQ=isnull(LNITMSEQ, 1)  from SVC00201 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and ITEMNMBR = @I_vITEMNMBR and EQUIPID = @EQUIPID  set @LINEEQUIPID = @EQUIPID  end  else if (@I_vITEMNMBR <> '' and @I_vSERLNMBR = '')  begin  select TOP 1 @I_vLNITMSEQ=isnull(LNITMSEQ, 1)  from SVC00201 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and ITEMNMBR = @I_vITEMNMBR and EQUIPID = 0  set @LINEEQUIPID = 0  end  else   begin  select TOP 1 @I_vLNITMSEQ=isnull(LNITMSEQ, 1)  from SVC00201 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR  end   if (@I_vLNITMSEQ is null) or (@I_vLNITMSEQ = 0)  select @I_vLNITMSEQ=(isnull(max(LNITMSEQ),0)+1) from SVC00201 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR  end  if (@I_vEQPLINE is null) or (@I_vEQPLINE = 0) begin  if @I_vITEMNMBR = '' and @I_vSERLNMBR = ''   select TOP 1 @I_vEQPLINE=isnull(EQPLINE, 1),  @I_vITEMNMBR = case  when @I_vITEMNMBR = '' then isnull(ITEMNMBR, '')  else @I_vITEMNMBR  end,  @EQUIPID = case  when @I_vSERLNMBR = '' and @EQUIPID = 0 then isnull(EQUIPID, 0)  else EQUIPID  end,  @LSTDTEDT = isnull(LSTDTEDT, @O_TODAY),  @I_vPMPERF = isnull(PMPERF, 0)  from SVC00202 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR  else  begin  set @iValueExists = 0  if (@I_vSERLNMBR <> '')   begin  select @EQUIPID = isnull(EQUIPID, 0) from SVC00300 (nolock) where ITEMNMBR = @I_vITEMNMBR and SERLNMBR = @I_vSERLNMBR  if (@EQUIPID <> 0)  begin  select @iValueExists = 1, @I_vEQPLINE = EQPLINE from SVC00202 (nolock)   where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and ITEMNMBR = @I_vITEMNMBR and EQUIPID = @EQUIPID  end  if (@iValueExists <> 1)   select @I_vEQPLINE=(isnull(max(EQPLINE),0)+1) from SVC00202 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR  end  else   begin  set @iValueExists = 0  select @iValueExists = 1, @I_vEQPLINE = isnull(EQPLINE, 0) from SVC00202 (nolock)   where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and ITEMNMBR = @I_vITEMNMBR and EQUIPID = 0  if (@iValueExists <> 1)  select @I_vEQPLINE=(isnull(max(EQPLINE),0)+1) from SVC00202 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR  end  end   if (@I_vEQPLINE is null or @I_vEQPLINE = 0)  set @I_vEQPLINE = 1 end  set @iValueExists = 0 select @iValueExists = 1,   @I_vITEMNMBR = case  when @I_vITEMNMBR = '' then isnull(ITEMNMBR, '')  else @I_vITEMNMBR  end,  @I_vPROBCDE = case   when @I_vPROBCDE is null then isnull(PROBCDE, '')  else @I_vPROBCDE  end,  @I_vCAUSECDE = case  when @I_vCAUSECDE is null then isnull(CAUSECDE, '')  else @I_vCAUSECDE  end,  @I_vRPRCODE = case  when @I_vRPRCODE is null then isnull(RPRCODE, '')  else @I_vRPRCODE  end  from SVC00201 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and LNITMSEQ = @I_vLNITMSEQ if (@iValueExists = 1) begin  select @Line_Seq_Exists_1=1 end  set @iValueExists = 0 select @iValueExists = 1,  @EQUIPID = case  when @I_vSERLNMBR = '' and @EQUIPID = 0 then isnull(EQUIPID, 0)  else EQUIPID  end  from SVC00202 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE if (@iValueExists = 1) begin  select @Line_Seq_Exists_2=1 end  if (@Line_Seq_Exists_1 = 1 or @Line_Seq_Exists_2 = 1) and (@I_vUpdateIfExists = 0)  begin  set @O_iErrorState = 1430    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @I_vPROBCDE = case  when @I_vPROBCDE is null then ''  else @I_vPROBCDE  end,  @I_vCAUSECDE = case  when @I_vCAUSECDE is null then ''  else @I_vCAUSECDE  end,  @I_vRPRCODE = case  when @I_vRPRCODE is null then ''  else @I_vRPRCODE   end,  @I_vITEMNMBR = case  when @I_vITEMNMBR is null then ''  else @I_vITEMNMBR  end  select TOP 1 @iMULEQUIP = MULEQUIP from SVC00998 (nolock)  if (@iMULEQUIP = 0) begin  select @iTotalNoEquipments = count(*) from SVC00201 where (ITEMNMBR <> '' or EQUIPID <> 0) and SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR  if (@iTotalNoEquipments >= 1)  and not exists(select 1 from SVC00201 where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and LNITMSEQ = @I_vLNITMSEQ)  begin  set @O_iErrorState = 8970    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vITEMNMBR <> '') begin  if not exists(select 1 from IV00101 (nolock) where ITEMNMBR=@I_vITEMNMBR)  begin  set @O_iErrorState = 1423     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vITEMNMBR <> '') begin  set @iValueExists = 0  select @iValueExists = 1, @O_iItemMetered = isnull(METERED, 0) from SVC00951 where ITEMNMBR = @I_vITEMNMBR  if (@@ERROR <> 0)  begin  set @O_iErrorState = 9894    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end   if (@I_vCUSTNMBR <> '') begin  if not exists(select 1 from RM00101 (nolock) where CUSTNMBR=@I_vCUSTNMBR)  begin  set @O_iErrorState = 1424     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vPROBCDE <> '') begin  if not exists(select 1 from SVC00907 (nolock) where PROBCDE=@I_vPROBCDE)  begin  set @O_iErrorState = 1426     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vCAUSECDE <> '') begin  if not exists(select 1 from SVC00901 (nolock) where CAUSECDE=@I_vCAUSECDE)  begin  set @O_iErrorState = 1717     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vRPRCODE <> '') begin  if not exists(select 1 from SVC00908 (nolock) where RPRCODE=@I_vRPRCODE)  begin  set @O_iErrorState = 1428     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if ((@I_vPMPERF < 0) or (@I_vPMPERF > 1)) begin  set @O_iErrorState = 1429     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@Line_Seq_Exists_1=0) begin  select @sCompanyID = CMPANYID from DYNAMICS..SY01500 c (nolock) where c.INTERID = db_name()   exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @sCompanyID,  @I_iSQLSessionID = 0,  @I_noteincrement = 3,  @O_mNoteIndex   = @Note_Index_1 output,  @O_iErrorState  = @iGetNextNoteIdxErrState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end  if (@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0)  begin  if (@iGetNextNoteIdxErrState <> 0)  begin  exec @iStatus = taUpdateString  @iGetNextNoteIdxErrState,  @oErrString,  @oErrString output,  @O_oErrorState output  end   set @O_iErrorState = 1718   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  else  begin  select @Note_Index_2 = (@Note_Index_1+1),  @Note_Index_3 = (@Note_Index_1+2)  end end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  if (@Line_Seq_Exists_1 = 0) begin  insert into SVC00201( SRVRECTYPE,  CALLNBR,  LNITMSEQ,  EQUIPID,  ITEMNMBR,  PRDLINE,  PROBCDE,  CAUSECDE,  RPRCODE,  Note_Index_1,  Note_Index_2,  Note_Index_3  )  select  @I_vSRVRECTYPE,  @I_vCALLNBR,  @I_vLNITMSEQ,  @LINEEQUIPID,  @I_vITEMNMBR,  @O_vPRDLINE,  @I_vPROBCDE,  @I_vCAUSECDE,  @I_vRPRCODE,  @Note_Index_1,  @Note_Index_2,  @Note_Index_3  if (@@error <> 0)  begin  set @O_iErrorState = 1431    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end else begin  if (@I_vUpdateIfExists > 0)  begin  update SVC00201 set  SRVRECTYPE = @I_vSRVRECTYPE,  CALLNBR = @I_vCALLNBR,  LNITMSEQ = @I_vLNITMSEQ,  EQUIPID = @LINEEQUIPID,  ITEMNMBR = @I_vITEMNMBR,  PRDLINE = @O_vPRDLINE,  PROBCDE = @I_vPROBCDE,  CAUSECDE = @I_vCAUSECDE,  RPRCODE = @I_vRPRCODE  where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and LNITMSEQ = @I_vLNITMSEQ  if (@@error <> 0)  begin  set @O_iErrorState = 1433    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  if (@Line_Seq_Exists_2 = 0) begin  if (@I_vITEMNMBR <> '')  begin  insert into SVC00202( SRVRECTYPE,  CALLNBR,  EQPLINE,  EQUIPID,  ITEMNMBR,  METER1,  METER2,  METER3,  LSTDTEDT,  PMPERF  )  select  @I_vSRVRECTYPE,  @I_vCALLNBR,  @I_vEQPLINE,  @EQUIPID,  @I_vITEMNMBR,  0,  0,  0,  @LSTDTEDT,  @I_vPMPERF  if (@@error <> 0)  begin  set @O_iErrorState = 1719    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end else begin  if (@I_vUpdateIfExists > 0)  begin  update SVC00202 set  SRVRECTYPE = @I_vSRVRECTYPE,  CALLNBR = @I_vCALLNBR,  EQPLINE = @I_vEQPLINE,  EQUIPID = @EQUIPID,  ITEMNMBR = @I_vITEMNMBR,  METER1 = 0,  METER2 = 0,  METER3 = 0,  LSTDTEDT = @LSTDTEDT,  PMPERF = @I_vPMPERF  where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE  if (@@error <> 0)  begin  set @O_iErrorState = 1434    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  exec @iStatus = taFSServiceCallCodesEquipmentPost  @I_vSRVRECTYPE,  @I_vCALLNBR,   @I_vITEMNMBR,  @I_vSERLNMBR,  @I_vCUSTNMBR,   @I_vPROBCDE,  @I_vCAUSECDE,  @I_vRPRCODE,  @I_vPMPERF,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  set @O_iErrorState = 1435    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSServiceCallCodesEquipment] TO [DYNGRP]
GO
