SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSServiceCallLineLot] @I_vSRVRECTYPE  smallint,   @I_vCALLNBR char(11),    @I_vEQPLINE int = 1,    @I_vLINITMTYP char(3) = 'P',   @I_vLNITMSEQ int = 1,    @I_vQTYTYPE smallint = 1,   @I_vITEMNMBR char(31) = null,   @I_vSERLTNUM char(21) = null,   @I_vSERLTQTY numeric(19,5) = 1,   @I_vSLTSQNUM bigint = 0,   @I_vLOCNCODE char(11) = null,   @I_vDTSEQNUM numeric(19,5) = 0,   @I_vDATERECD datetime = '',   @I_vBIN char(15) = '',    @I_vENTDTE datetime = '',   @I_vAUTOCREATELOT smallint = 0,   @I_vMFGDATE datetime = '',   @I_vEXPNDATE datetime = '',   @I_vUpdateIfExists tinyint = 1,   @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',   @I_vUSRDEFND2 char(50) = '',     @I_vUSRDEFND3 char(50) = '',   @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set deadlock_priority low  set transaction isolation level read uncommitted set nocount on  declare  @O_TODAY datetime,  @O_DUMMYDT datetime,  @Line_Seq_Exists smallint,  @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @iAddCodeErrState int,    @O_oErrorState int,  @iError int,  @EQUIPID int,  @I_vTRXSORCE char(13),  @O_vPOSTED tinyint,  @iLotSold numeric(19,5),  @iLotAlloc numeric(19,5),  @iLotRecvd numeric(19,5),  @O_vSERLTQTY numeric(17,5),  @iValueExists smallint,  @O_vUNITCOST numeric(17,5),  @O_vOVRSERLT int,  @iCURRCOST numeric(19,5),  @iSTNDCOST numeric(19,5),  @iLISTPRCE numeric(17,5),  @O_vITMSHNAM char(15),  @O_vITMGEDSC char(10),  @O_vITMCLSCD char(10),  @O_vITEMSHWT bigint,  @iITMTRKOP smallint,  @iITEMTYPE smallint,  @iUOMSCHDL char(11),  @iSELNGUOM char(11),  @O_PREVLOTNUMBR char(21),  @iPREVLOTQTY numeric(19,5),  @O_PREVDTSEQNUM numeric(19,5),  @O_PREVDATERECD datetime,  @iQtySold numeric(19,5),  @iRecordCount int,  @iRecordCount2 int,  @I_vSOLD tinyint,  @O_vMFGDATE datetime,  @O_vEXPNDATE datetime,  @iLotExists tinyint,  @AmntOverExst numeric(19,5),  @ENABLEMULTIBIN tinyint  select   @O_TODAY = convert(char(11), convert(datetime, getdate()), 101),  @O_DUMMYDT = convert(char(11), convert(datetime, '1900-01-01'), 101),  @Line_Seq_Exists = 0,  @iStatus  = 0,  @iCustomState  = 0,  @iCustomErrString = '',  @iAddCodeErrState  = 0,  @O_oErrorState  = 0,  @iError  = 0,  @EQUIPID = 0,  @I_vTRXSORCE = '0',  @O_vPOSTED = 0,  @O_iErrorState = 0,  @oErrString = '',  @iLotSold = 0,  @iLotAlloc = 0,  @iLotRecvd = 0,  @O_vSERLTQTY =1,  @iValueExists = 0,  @O_vUNITCOST = 0,  @O_vOVRSERLT = 0,  @iCURRCOST = 0.0,  @iSTNDCOST = 0.0,  @iLISTPRCE = 0.0,  @O_vITMSHNAM = '',  @O_vITMGEDSC = '',  @O_vITMCLSCD = '',  @O_vITEMSHWT = '',  @iITMTRKOP = 0,  @iITEMTYPE = 0,  @iUOMSCHDL = '',  @iSELNGUOM = '',  @O_PREVLOTNUMBR = '',  @iPREVLOTQTY = 0,  @O_PREVDTSEQNUM = 0,  @O_PREVDATERECD = @O_DUMMYDT,  @iQtySold = 0,  @iRecordCount = 0,  @iRecordCount2 = 0,  @I_vSOLD = 0,  @O_vMFGDATE = @O_DUMMYDT,  @O_vEXPNDATE = @O_DUMMYDT,  @iLotExists = 0,  @AmntOverExst = 0,  @ENABLEMULTIBIN = 0 if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taFSServiceCallLineLotPre  @I_vSRVRECTYPE output,  @I_vCALLNBR output,  @I_vEQPLINE output,  @I_vLINITMTYP output,  @I_vLNITMSEQ output,  @I_vQTYTYPE output,  @I_vITEMNMBR output,  @I_vSERLTNUM output,  @I_vSERLTQTY output,  @I_vSOLD output,  @I_vSLTSQNUM output,  @I_vLOCNCODE output,  @I_vDTSEQNUM output,  @I_vDATERECD output,  @I_vBIN output,  @I_vENTDTE output,  @I_vAUTOCREATELOT output,  @I_vMFGDATE output,  @I_vEXPNDATE output,  @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  set @O_iErrorState = 8805    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vSRVRECTYPE is NULL or  @I_vCALLNBR  is NULL or  @I_vEQPLINE  is NULL or  @I_vLNITMSEQ  is NULL or  @I_vITEMNMBR  is NULL or  @I_vLOCNCODE is NULL or  @I_vLINITMTYP is NULL or  @I_vQTYTYPE is NULL or  @I_vSERLTNUM is NULL or  @I_vSERLTQTY is NULL or   @I_vSLTSQNUM is NULL  ) begin  set @O_iErrorState = 8806    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vSRVRECTYPE=0 or  @I_vCALLNBR='' or  @I_vLINITMTYP = '' or  @I_vITEMNMBR = '' or  @I_vSERLTNUM = '' or  @I_vLOCNCODE = '' or  @I_vLNITMSEQ = 0 or  @I_vEQPLINE = 0  ) begin  set @O_iErrorState = 8807    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vLNITMSEQ < 0 or  @I_vEQPLINE < 0 or  @I_vSLTSQNUM < 0 or  @I_vQTYTYPE < 0  ) begin  set @O_iErrorState = 8808    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vCALLNBR = UPPER(@I_vCALLNBR),  @I_vLINITMTYP = UPPER(@I_vLINITMTYP),  @I_vITEMNMBR = UPPER(rtrim(@I_vITEMNMBR)),  @I_vSERLTNUM = UPPER(rtrim(@I_vSERLTNUM)),  @I_vLOCNCODE = UPPER(rtrim(@I_vLOCNCODE))  if (@I_vLINITMTYP <> 'P' ) begin  set @O_iErrorState = 8809    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end   set @iValueExists = 0 select @iValueExists = 1 from SVC30200 (nolock) where CALLNBR = @I_vCALLNBR and SRVRECTYPE = 3 if (@iValueExists <> 1)  select @iValueExists = 1 from SVC00200 (nolock) where CALLNBR = @I_vCALLNBR and SRVRECTYPE = 3  if (@iValueExists = 1) begin  select @O_iErrorState = 8963     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ((@I_vSRVRECTYPE < 1) or (@I_vSRVRECTYPE > 3)) begin  set @O_iErrorState = 8810    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vUpdateIfExists not in (0,1)) begin  set @O_iErrorState = 8811     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if exists(select 1 from SVC00215 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and MKDTOPST = 1) begin  set @O_iErrorState = 8812    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vQTYTYPE < 1 or @I_vQTYTYPE > 5) begin  set @O_iErrorState = 8813     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if (@I_vSLTSQNUM = 0) begin  select @I_vSLTSQNUM = (isnull(max(SLTSQNUM),0) + 16384) from SVC00250 (nolock)   where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE end  set @iValueExists = 0 select @iValueExists = 1,  @iPREVLOTQTY = isnull(SERLTQTY, 0),  @O_PREVDTSEQNUM = isnull(DTSEQNUM, 0),  @O_PREVDATERECD = isnull(DATERECD, @O_DUMMYDT),  @O_PREVLOTNUMBR = isnull(SERLTNUM, ''),  @O_vPOSTED = isnull(POSTED, 0),  @O_vSERLTQTY = case  when @I_vSERLTQTY <= 0 then isnull(SERLTQTY, 1)  else @I_vSERLTQTY  end,  @I_vBIN = case  when @I_vBIN is null then isnull(BIN, '')  else @I_vBIN  end,  @I_vDTSEQNUM = case  when (@I_vDTSEQNUM is null or @I_vDTSEQNUM = 0) and (@O_PREVLOTNUMBR = @I_vSERLTNUM) then isnull(DTSEQNUM, 0)  else @I_vDTSEQNUM  end,  @I_vDATERECD = case  when (@I_vDATERECD is null or @I_vDATERECD = @O_DUMMYDT or @I_vDATERECD = '') and (@O_PREVLOTNUMBR = @I_vSERLTNUM) then isnull(DATERECD, @O_DUMMYDT)  else @I_vDATERECD  end   from SVC00250 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE  and ITEMNMBR = @I_vITEMNMBR and SLTSQNUM = @I_vSLTSQNUM  if (@iValueExists = 1) begin  select @Line_Seq_Exists=1 end  if (@Line_Seq_Exists=1) and (@I_vUpdateIfExists = 0) and (@I_vSERLTQTY > 0) begin  set @O_iErrorState = 8814     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@O_vPOSTED = 1) begin  set @O_iErrorState = 8815     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vITEMNMBR <> '') begin  set @iValueExists = 0  select @iValueExists = 1, @iITMTRKOP = ITMTRKOP, @iITEMTYPE = ITEMTYPE, @iUOMSCHDL = UOMSCHDL, @iSELNGUOM = SELNGUOM,   @iSTNDCOST = isnull(STNDCOST, 0.0), @iCURRCOST = isnull(CURRCOST, 0.0),   @O_vUNITCOST = case  when VCTNMTHD in (4,5) then isnull(STNDCOST, 0.0)  when @iCURRCOST > 0 then isnull(CURRCOST, 0.0)  else 0  end,  @O_vITMSHNAM = isnull(ITMSHNAM,''), @O_vITMGEDSC = isnull(ITMGEDSC, ''), @O_vITMCLSCD = isnull(ITMCLSCD, ''),  @O_vITEMSHWT = isnull(ITEMSHWT, '')  from IV00101 (nolock) where ITEMNMBR=rtrim(@I_vITEMNMBR)  if (@iValueExists <> 1)  begin  set @O_iErrorState = 8816     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if (@iITMTRKOP <> 3)  begin  set @O_iErrorState = 8817     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  set @iValueExists = 0 select @iValueExists = 1,  @iQtySold = QTYSOLD  from SVC00203  where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ if (@iValueExists = 1 and @iQtySold > 0 and @O_vPOSTED <> 0) begin  set @O_iErrorState = 8818     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  if (@I_vSERLTNUM <> '') begin  select @iLotExists = 0,  @I_vMFGDATE = case  when @I_vMFGDATE = '' then @O_DUMMYDT  else convert(char(10), @I_vMFGDATE, 101)  end,  @I_vEXPNDATE = case  when @I_vEXPNDATE = '' then @O_DUMMYDT  else convert(char(10), @I_vEXPNDATE, 101)  end   if (@I_vDTSEQNUM = 0 or @I_vDATERECD = '' or @I_vDATERECD = @O_DUMMYDT)  begin  select TOP 1 @iLotExists = 1,   @iLotRecvd = isnull(QTYRECVD, 0),  @iLotSold = isnull(QTYSOLD, 0),  @iLotAlloc = isnull(ATYALLOC, 0),  @I_vDATERECD = isnull(DATERECD, @O_DUMMYDT),  @I_vDTSEQNUM = isnull(DTSEQNUM, 1),  @O_vMFGDATE = isnull(MFGDATE, @O_DUMMYDT),  @O_vEXPNDATE = isnull(EXPNDATE, @O_DUMMYDT)  from IV00300 (nolock) where ITEMNMBR=@I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND LOTNUMBR = @I_vSERLTNUM  and (QTYRECVD - QTYSOLD - ATYALLOC > 0)  end  else   begin  select @iLotExists = 1,   @iLotRecvd = isnull(QTYRECVD, 0),  @iLotSold = isnull(QTYSOLD, 0),  @iLotAlloc = isnull(ATYALLOC, 0),  @O_vMFGDATE = isnull(MFGDATE, @O_DUMMYDT),  @O_vEXPNDATE = isnull(EXPNDATE, @O_DUMMYDT)  from IV00300 (nolock) where ITEMNMBR=@I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND LOTNUMBR = @I_vSERLTNUM  and DATERECD = @I_vDATERECD and DTSEQNUM = @I_vDTSEQNUM  end   if (@iLotExists <> 1)  begin  select @O_vMFGDATE = case  when @I_vMFGDATE is null or @I_vEXPNDATE = '' or @I_vMFGDATE = @O_DUMMYDT then @O_vMFGDATE  else @I_vMFGDATE  end,  @O_vEXPNDATE = case  when @I_vEXPNDATE is null or @I_vEXPNDATE = '' or @I_vEXPNDATE = @O_DUMMYDT then @O_vEXPNDATE  else @I_vEXPNDATE  end  end   if (@iLotExists <> 1) and (@I_vAUTOCREATELOT = 0)  begin  set @O_iErrorState = 8819     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  else if (@iLotExists = 0) and (@I_vAUTOCREATELOT = 1)  begin  set @I_vDATERECD = @O_TODAY  select @I_vDTSEQNUM = isnull(max(DTSEQNUM)+16384, 16384) from IV00300 (nolock)  where ITEMNMBR = @I_vITEMNMBR and LOCNCODE = @I_vLOCNCODE and QTYTYPE = @I_vQTYTYPE and DATERECD = @I_vDATERECD  end  else if (@iLotExists = 1)  begin  select @I_vENTDTE = case   when @I_vENTDTE = '' or @I_vENTDTE = @O_DUMMYDT then @O_TODAY   else @I_vENTDTE   end   if (@O_vEXPNDATE <> @O_DUMMYDT and @O_vEXPNDATE <= @I_vENTDTE)  begin  if not exists(select 1 from IV40100 where ALLEXPLOTSOTHER = 1)  begin  set @O_iErrorState = 8820     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  if (((@iLotRecvd - @iLotSold - @iLotAlloc) + @iPREVLOTQTY) < @I_vSERLTQTY)  begin  if not exists (select 1 from SVC00250 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE   and SERLTNUM = @I_vSERLTNUM and SLTSQNUM = @I_vSLTSQNUM)  begin  set @O_iErrorState = 8821     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  end end  if (@I_vDATERECD is NULL)  set @I_vDATERECD = ''  if (@I_vDATERECD <> '') and not (datepart(hour,@I_vDATERECD) = 0 and datepart(minute,@I_vDATERECD) = 0 and datepart(second,@I_vDATERECD) = 0   and datepart(millisecond,@I_vDATERECD) = 0) begin  set @O_iErrorState = 8822     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end if (@I_vDATERECD = '')  set @I_vDATERECD = @O_DUMMYDT  if  (@O_PREVLOTNUMBR <> '') and (@O_PREVLOTNUMBR <> @I_vSERLTNUM) begin  select @iValueExists = 0, @iRecordCount = 0, @iRecordCount2 = 0   select @iRecordCount = count(*) from IV30400 (nolock) left join IV30200 on IV30200.DOCNUMBR = IV30400.DOCNUMBR   left join IV30300 on IV30400.DOCNUMBR = IV30300.DOCNUMBR and IV30400.LNSEQNBR = IV30300.LNSEQNBR  where IV30400.IVDOCTYP = 1 and IV30400.ITEMNMBR = @I_vITEMNMBR AND IV30400.SERLTNUM = @O_PREVLOTNUMBR   AND IV30400.SERLTQTY > 0 AND IV30400.SLTSQNUM > 0   and IV30200.SRCRFRNCNMBR = @I_vCALLNBR and IV30300.TRXQTY < 0   select @iRecordCount2 = count(*) from IV10002 (nolock) left join IV10000 on IV10000.IVDOCNBR = IV10002.IVDOCNBR  left join IV10001 on IV10002.IVDOCNBR = IV10001.IVDOCNBR and IV10002.LNSEQNBR = IV10001.LNSEQNBR  where IV10002.IVDOCTYP = 1 and IV10002.ITEMNMBR = @I_vITEMNMBR AND IV10002.SERLTNUM = @O_PREVLOTNUMBR  AND IV10002.SERLTQTY > 0 AND IV10002.SLTSQNUM > 0   AND IV10002.DATERECD = @O_PREVDATERECD AND IV10002.DTSEQNUM = @O_PREVDTSEQNUM  and IV10000.SRCRFRNCNMBR = @I_vCALLNBR and IV10001.TRXQTY < 0   set @iRecordCount = @iRecordCount + @iRecordCount2  if (@iRecordCount % 2 <> 0)   set @iValueExists = 1  if (@iValueExists <> 0)  begin  set @O_iErrorState = 8823     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)   end end  if (@Line_Seq_Exists = 1) and (@I_vSERLTQTY < 0) begin  delete from SVC00250 where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE  and SLTSQNUM = @I_vSLTSQNUM  if (@@error <> 0)  begin  set @O_iErrorState = 8824     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   if (@I_vITEMNMBR <> '' and @I_vLOCNCODE <> '' and @I_vSERLTNUM <> '')   and (@I_vSERLTNUM <> '' and exists(select 1 from IV00300 (nolock) where ITEMNMBR = @I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND LOTNUMBR = @O_PREVLOTNUMBR and DATERECD = @O_PREVDATERECD AND DTSEQNUM = @O_PREVDTSEQNUM))  begin  update IV00300 set   ATYALLOC = case  when @I_vSOLD = 0 and (ATYALLOC - @iPREVLOTQTY >= 0) then ATYALLOC - @iPREVLOTQTY  when @I_vSOLD = 0 then 0  else ATYALLOC  end,  QTYSOLD = case  when @I_vSOLD = 1 and (QTYSOLD - @iPREVLOTQTY >= 0) then QTYSOLD - @iPREVLOTQTY  when @I_vSOLD = 1 then 0  else QTYSOLD  end  where ITEMNMBR = @I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND LOTNUMBR = @I_vSERLTNUM AND DATERECD = @O_PREVDATERECD AND DTSEQNUM = @O_PREVDTSEQNUM  if (@@error <> 0)  begin  set @O_iErrorState = 8825     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end  update IV00301 set IUSCOUNT = IUSCOUNT - @iPREVLOTQTY from IV00301 (updlock) where ITEMNMBR = @I_vITEMNMBR and LOTNUMBR = @O_PREVLOTNUMBR  if (@@error <> 0)  begin  set @O_iErrorState = 8952     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  return (0)  end else if (@I_vSERLTQTY < 0)  return (0)   select @O_vSERLTQTY = case  when @I_vSERLTQTY <= 0 then 1  else @I_vSERLTQTY  end,  @I_vITEMNMBR = case  when @I_vITEMNMBR is null then ''  else @I_vITEMNMBR  end,  @I_vSERLTNUM = case  when @I_vSERLTNUM is null then ''  else @I_vSERLTNUM  end,  @I_vBIN = case  when @I_vBIN is null then ''  else @I_vBIN  end,  @I_vDATERECD = case  when @I_vDATERECD is null or @I_vDATERECD = '' then @O_DUMMYDT  else @I_vDATERECD  end  if ((@I_vLOCNCODE <> '') and (@I_vLINITMTYP = 'P')) begin  if not exists(select 1 from IV40700 (nolock) where LOCNCODE = @I_vLOCNCODE)  begin  set @O_iErrorState = 8826    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)   end  else   begin  if not exists(select 1 from IV00102 (nolock) where ITEMNMBR = @I_vITEMNMBR and LOCNCODE = @I_vLOCNCODE)  begin  set @O_iErrorState = 8827    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end end  if (@I_vSOLD = 1)  select @O_vPOSTED = 1  if (@O_iErrorState <> '')  return (@O_iErrorState)  if (@Line_Seq_Exists=0) begin  insert into SVC00250( SRVRECTYPE,  CALLNBR,  EQPLINE,  LINITMTYP,  LNITMSEQ,  QTYTYPE,  SERLTNUM,  SERLTQTY,  SLTSQNUM,  DATERECD,  DTSEQNUM,  UNITCOST,  ITEMNMBR,  TRXSORCE,  POSTED,  OVRSERLT,  EQUIPID,  BIN,  MFGDATE,  EXPNDATE,  CMPNTSEQ  )  select  @I_vSRVRECTYPE,  @I_vCALLNBR,  @I_vEQPLINE,  @I_vLINITMTYP,  @I_vLNITMSEQ,  @I_vQTYTYPE,  @I_vSERLTNUM,  @O_vSERLTQTY,  @I_vSLTSQNUM,  @I_vDATERECD,  @I_vDTSEQNUM,  @O_vUNITCOST,  @I_vITEMNMBR,  @I_vTRXSORCE,  @O_vPOSTED,  @O_vOVRSERLT,  @EQUIPID,  @I_vBIN,  @O_vMFGDATE,  @O_vEXPNDATE,  0      if (@@error <> 0)  begin  set @O_iErrorState = 8828    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end else begin  if (@I_vUpdateIfExists > 0)  begin  update SVC00250 set  SRVRECTYPE = @I_vSRVRECTYPE,  CALLNBR = @I_vCALLNBR,  EQPLINE = @I_vEQPLINE,  LINITMTYP = @I_vLINITMTYP,  LNITMSEQ = @I_vLNITMSEQ,  QTYTYPE = @I_vQTYTYPE,  SERLTNUM = @I_vSERLTNUM,  SERLTQTY = @O_vSERLTQTY,  SLTSQNUM = @I_vSLTSQNUM,  DATERECD = @I_vDATERECD,  DTSEQNUM = @I_vDTSEQNUM,  UNITCOST = @O_vUNITCOST,  ITEMNMBR = @I_vITEMNMBR,  TRXSORCE = @I_vTRXSORCE,  POSTED = @O_vPOSTED,  OVRSERLT = @O_vOVRSERLT,  EQUIPID = @EQUIPID,  BIN = @I_vBIN,  MFGDATE = @O_vMFGDATE,  EXPNDATE = @O_vEXPNDATE  where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE  and SLTSQNUM = @I_vSLTSQNUM  if (@@error <> 0)  begin  set @O_iErrorState = 8829    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  if @I_vITEMNMBR <> '' and @I_vLOCNCODE <> '' and @O_PREVLOTNUMBR <> '' begin  update IV00300 set   ATYALLOC = case  when (ATYALLOC - @iPREVLOTQTY >= 0) then ATYALLOC - @iPREVLOTQTY  else ATYALLOC  end,  QTYSOLD = case  when @I_vSOLD = 1 and (QTYSOLD - @iPREVLOTQTY >= 0) then QTYSOLD - @iPREVLOTQTY  when @I_vSOLD = 1 then 0  else QTYSOLD  end  where ITEMNMBR = @I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND LOTNUMBR = @O_PREVLOTNUMBR AND DATERECD = @O_PREVDATERECD AND DTSEQNUM = @O_PREVDTSEQNUM   if (@@error <> 0)  begin  set @O_iErrorState = 8830     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end   update IV00301 set IUSCOUNT = IUSCOUNT - @iPREVLOTQTY from IV00301 (updlock) where ITEMNMBR = @I_vITEMNMBR and LOTNUMBR = @O_PREVLOTNUMBR  if (@@error <> 0)  begin  set @O_iErrorState = 8953     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if @I_vITEMNMBR <> '' and @I_vLOCNCODE <> '' and @I_vSERLTNUM <> '' begin  if (@iLotExists <> 1) and (@I_vAUTOCREATELOT = 1)  begin  if (@I_vAUTOCREATELOT = 1)  begin  select @AmntOverExst = isnull(sum(QTYRECVD - QTYSOLD - ATYALLOC),0) - @I_vSERLTQTY from IV00300 (nolock)  where QTYTYPE = 1 and ITEMNMBR = @I_vITEMNMBR and LOCNCODE = @I_vLOCNCODE and LTNUMSLD = 0 and LOTNUMBR = @I_vSERLTNUM  and DATERECD = @I_vDATERECD and DTSEQNUM = @I_vDTSEQNUM  if (@AmntOverExst < 0)  begin  select @AmntOverExst = @AmntOverExst * -1  end  else  begin  select @AmntOverExst = 0  end  end  if ((@I_vAUTOCREATELOT = 1) and (@AmntOverExst >= 0) and (@I_vSERLTNUM <> ''))  begin  select @ENABLEMULTIBIN = ENABLEMULTIBIN from IV40100 (nolock) where SETUPKEY = 1  if (@ENABLEMULTIBIN = 1) and (@I_vBIN <> '')  begin  if (not exists(select 1 from IV00112 (nolock) where ITEMNMBR = @I_vITEMNMBR and LOCNCODE = @I_vLOCNCODE and BIN = @I_vBIN and QTYTYPE = 1))  begin  insert IV00112 (ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, ATYALLOC)  select @I_vITEMNMBR, @I_vLOCNCODE, @I_vBIN,1,0,0  if (@@error <> 0)  begin  set @O_iErrorState = 8969     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  else  begin  update IV00112 set QUANTITY = QUANTITY + @I_vSERLTQTY  from IV00112 (updlock)  where ITEMNMBR = @I_vITEMNMBR and LOCNCODE = @I_vLOCNCODE and  BIN = @I_vBIN and QTYTYPE = @I_vQTYTYPE  if (@@error <> 0)  begin  set @O_iErrorState = 8968     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  end   insert IV00300  (  ITEMNMBR,  LOCNCODE,  DATERECD,  DTSEQNUM,  LOTNUMBR,  QTYRECVD,  QTYSOLD,  ATYALLOC,  UNITCOST,  RCTSEQNM,  VNDRNMBR,  LTNUMSLD,  QTYTYPE,  BIN,  MFGDATE,  EXPNDATE  )  select   @I_vITEMNMBR,    @I_vLOCNCODE,    @I_vDATERECD,    @I_vDTSEQNUM,    @I_vSERLTNUM,    @AmntOverExst,    0,     @I_vSERLTQTY,    @O_vUNITCOST,    0,     '',     0,     @I_vQTYTYPE,    case @ENABLEMULTIBIN   when 1 then @I_vBIN  else ''  end,  @I_vMFGDATE,    @I_vEXPNDATE    if (@@error <> 0)  begin  set @O_iErrorState = 8947     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end   if ((select isnull(LOTTYPE,'') from IV00101 (nolock) where ITEMNMBR = @I_vITEMNMBR) <> '')  begin  if not exists(select 1 from IV00301 (nolock) where ITEMNMBR = @I_vITEMNMBR and LOTNUMBR = @I_vSERLTNUM)  begin  insert IV00301  (  ITEMNMBR,  LOTNUMBR,  LOTATRB1,  LOTATRB2,  LOTATRB3,  LOTATRB4,  LOTATRB5,  IUSCOUNT,  RCRDSTTS   )  select  @I_vITEMNMBR,    @I_vSERLTNUM,    '',     '',     '',     '',     '',     1,     2      if (@@error <> 0)  begin  set @O_iErrorState = 8948     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  else  begin  update IV00301 set IUSCOUNT = IUSCOUNT + 1 from IV00301 (updlock) where ITEMNMBR = @I_vITEMNMBR and LOTNUMBR = @I_vSERLTNUM  if (@@error <> 0)  begin  set @O_iErrorState = 8949     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  end  update IV00102 set QTYONHND = QTYONHND + @I_vSERLTQTY from IV00102 (updlock) where ITEMNMBR = @I_vITEMNMBR and LOCNCODE = @I_vLOCNCODE  if (@@error <> 0)  begin  set @O_iErrorState = 8950     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  update IV00102 set QTYONHND = QTYONHND + @I_vSERLTQTY from IV00102 (updlock) where ITEMNMBR = @I_vITEMNMBR and LOCNCODE = ''  if (@@error <> 0)  begin  set @O_iErrorState = 8951     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  end  else  begin  update IV00300 set   ATYALLOC = case  when @I_vSOLD = 0 and (ATYALLOC + @I_vSERLTQTY + @iLotSold <= @iLotRecvd) then ATYALLOC + @I_vSERLTQTY  when @I_vSOLD = 0 and (@iLotRecvd - @iLotSold - ATYALLOC >= 0) then @iLotRecvd - @iLotSold - ATYALLOC  else ATYALLOC  end,  QTYSOLD = case  when @I_vSOLD = 1 and (QTYSOLD + @I_vSERLTQTY + @iLotAlloc <= @iLotRecvd) then QTYSOLD + @I_vSERLTQTY  when @I_vSOLD = 1 and (@iLotRecvd - @iLotAlloc - QTYSOLD >= 0) then @iLotRecvd - @iLotAlloc - QTYSOLD  else QTYSOLD  end  where ITEMNMBR = @I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND LOTNUMBR = @I_vSERLTNUM   AND DATERECD = @I_vDATERECD AND DTSEQNUM = @I_vDTSEQNUM  if (@@error <> 0)  begin  set @O_iErrorState = 8831     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  exec @iStatus = taFSServiceCallLineLotPost  @I_vSRVRECTYPE,  @I_vCALLNBR,  @I_vEQPLINE,  @I_vLINITMTYP,  @I_vLNITMSEQ,  @I_vQTYTYPE,  @I_vITEMNMBR,  @I_vSERLTNUM,  @I_vSERLTQTY,  @I_vSOLD,  @I_vSLTSQNUM,  @I_vLOCNCODE,  @I_vDTSEQNUM,  @I_vDATERECD,  @I_vBIN,  @I_vENTDTE,  @I_vAUTOCREATELOT,  @I_vMFGDATE,  @I_vEXPNDATE,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  set @O_iErrorState = 8832    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSServiceCallLineLot] TO [DYNGRP]
GO