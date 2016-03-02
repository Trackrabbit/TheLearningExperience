SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSServiceCallLineSerial] @I_vSRVRECTYPE  smallint,   @I_vCALLNBR char(11),    @I_vCUSTNMBR char(15) = null,   @I_vADRSCODE char(15) = null,   @I_vEQPLINE int = 1,    @I_vLINITMTYP char(3) = 'P',   @I_vLNITMSEQ int = 1,    @I_vQTYTYPE smallint = 1,   @I_vITEMNMBR char(31) = null,   @I_vSERLTNUM char(21) = null,   @I_vSERLTQTY int = 1,    @I_vSLTSQNUM bigint = 0,   @I_vLOCNCODE char(11) = null,   @I_vBIN char(15) = '',    @I_vUpdateIfExists tinyint = 1,   @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',   @I_vUSRDEFND2 char(50) = '',     @I_vUSRDEFND3 char(50) = '',   @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @O_DUMMYDT datetime,  @Line_Seq_Exists smallint,  @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @iAddCodeErrState int,    @O_oErrorState int,  @iError int,  @sCompanyID smallint,    @EQUIPID int,  @I_vTRXSORCE char(13),  @I_vPOSTED tinyint,  @iQtySold numeric(19,5),  @iSerialSold smallint,  @SRLSTAT char(10),  @O_vADDRESS1 char(30),  @O_vADDRESS2 char(30),  @O_vADDRESS3 char(30),  @O_vCOUNTRY char(30),  @O_vCITY char(30),  @O_vSTATE char(30),  @O_vZIP char(10),  @O_vCNTCPRSN char(30),  @O_vPHONE1 char(22),  @O_vSERLTQTY numeric(17,5),  @iValueExists smallint,  @O_vDATERECD datetime,  @O_vDTSEQNUM numeric(19,5),  @O_vUNITCOST numeric(17,5),  @O_vOVRSERLT int,  @iCURRCOST numeric(19,5),  @iSTNDCOST numeric(19,5),  @iLISTPRCE numeric(17,5),  @O_vITMSHNAM char(15),  @O_vITMGEDSC char(10),  @O_vITMCLSCD char(10),  @O_vITEMSHWT bigint,  @iITMTRKOP smallint,  @iITEMTYPE smallint,  @iUOMSCHDL char(11),  @iSELNGUOM char(11),  @iCurrDecPlaces smallint,  @iQtyDecPlaces smallint,  @iPREVSERLNMBR char(21),  @iPREVEQUIPID int,  @INSTOCKCUSTNMBR char(15),  @EQUIPCUSTNMBR char(15),  @O_vINSTDTE datetime,  @iEquipExists smallint,  @SITEINACTIVE tinyint,  @ITEMSITEINACTIVE tinyint,  @INACTIVEITEM tinyint  select   @O_DUMMYDT = convert(char(10), '1900/01/01', 108),  @Line_Seq_Exists = 0,  @iStatus  = 0,  @iCustomState  = 0,  @iCustomErrString = '',  @iAddCodeErrState  = 0,  @O_oErrorState  = 0,  @iError  = 0,  @sCompanyID  = 0,  @EQUIPID = 0,  @I_vTRXSORCE = '0',  @I_vPOSTED = 0,  @O_iErrorState = 0,  @oErrString = '',  @iQtySold = 0,  @iSerialSold = 0,  @SRLSTAT = '',  @O_vADDRESS1 = '',  @O_vADDRESS2 = '',  @O_vADDRESS3 = '',  @O_vCOUNTRY = '',  @O_vCITY = '',  @O_vSTATE = '',  @O_vZIP = '',  @O_vCNTCPRSN = '',  @O_vPHONE1 = '',  @O_vSERLTQTY =1,  @iValueExists = 0,  @O_vDATERECD = '1900/01/01',  @O_vDTSEQNUM = 0,  @O_vUNITCOST = 0,  @O_vOVRSERLT = 0,  @iCURRCOST = 0.0,  @iSTNDCOST = 0.0,  @iLISTPRCE = 0.0,  @O_vITMSHNAM = '',  @O_vITMGEDSC = '',  @O_vITMCLSCD = '',  @O_vITEMSHWT = '',  @iITMTRKOP = 0,  @iITEMTYPE = 0,  @iUOMSCHDL = '',  @iSELNGUOM = '',  @iCurrDecPlaces = 0,  @iQtyDecPlaces = 0,  @iPREVSERLNMBR = '',  @iPREVEQUIPID = 0,  @INSTOCKCUSTNMBR = '',  @EQUIPCUSTNMBR = '',  @O_vINSTDTE = @O_DUMMYDT,  @iEquipExists = 0,  @SITEINACTIVE = 0,  @ITEMSITEINACTIVE = 0,  @INACTIVEITEM = 0  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taFSServiceCallLineSerialPre  @I_vSRVRECTYPE output,  @I_vCALLNBR output,  @I_vCUSTNMBR output,  @I_vADRSCODE output,  @I_vEQPLINE output,  @I_vLINITMTYP output,  @I_vLNITMSEQ output,  @I_vQTYTYPE output,  @I_vITEMNMBR output,  @I_vSERLTNUM output,  @I_vSERLTQTY output,   @I_vSLTSQNUM output,  @I_vLOCNCODE output,   @I_vBIN output,  @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  set @O_iErrorState = 9805     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @SRLSTAT = isnull(SRLSTAT, ''),  @INSTOCKCUSTNMBR = isnull(SVC_InStock_Customer, '')  from SVC00998 (nolock)  if( @I_vSRVRECTYPE is NULL or  @I_vCALLNBR  is NULL or  @I_vEQPLINE  is NULL or  @I_vLNITMSEQ  is NULL or  @I_vITEMNMBR  is NULL or  @I_vCUSTNMBR is NULL or  @I_vADRSCODE is NULL or  @I_vLOCNCODE is NULL or  @I_vLINITMTYP is NULL or  @I_vQTYTYPE is NULL or  @I_vSERLTNUM is NULL or  @I_vSERLTQTY is NULL or   @I_vSLTSQNUM is NULL  ) begin  set @O_iErrorState = 9806    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vSRVRECTYPE=0 or  @I_vCALLNBR='' or  @I_vEQPLINE = 0 or  @I_vCUSTNMBR = '' or  @I_vADRSCODE = '' or  @I_vLINITMTYP = '' or  @I_vITEMNMBR = '' or  @I_vSERLTNUM = '' or  @I_vLOCNCODE = '' or  @I_vLNITMSEQ = 0 or  @I_vEQPLINE = 0  ) begin  set @O_iErrorState = 9807    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vLNITMSEQ < 0 or  @I_vEQPLINE < 0 or  @I_vSLTSQNUM < 0 or  @I_vQTYTYPE < 0  ) begin  set @O_iErrorState = 9808    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vCALLNBR = UPPER(@I_vCALLNBR),  @I_vLINITMTYP = UPPER(@I_vLINITMTYP),  @I_vITEMNMBR = UPPER(rtrim(@I_vITEMNMBR)),  @I_vSERLTNUM = UPPER(rtrim(@I_vSERLTNUM)),  @I_vCUSTNMBR = UPPER(rtrim(@I_vCUSTNMBR)),  @I_vADRSCODE = UPPER(rtrim(@I_vADRSCODE)),  @I_vLOCNCODE = UPPER(rtrim(@I_vLOCNCODE))  if (@I_vLINITMTYP <> 'P' ) begin  set @O_iErrorState = 9809    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end   set @iValueExists = 0 select @iValueExists = 1 from SVC30200 (nolock) where CALLNBR = @I_vCALLNBR and SRVRECTYPE = 3 if (@iValueExists <> 1)  select @iValueExists = 1 from SVC00200 (nolock) where CALLNBR = @I_vCALLNBR and SRVRECTYPE = 3  if (@iValueExists = 1) begin  select @O_iErrorState = 8960     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vSRVRECTYPE < 1 or @I_vSRVRECTYPE > 3) begin  set @O_iErrorState = 9810    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vUpdateIfExists not in (0,1)) begin  set @O_iErrorState = 9829     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if exists(select 1 from SVC00215 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and MKDTOPST = 1) begin  set @O_iErrorState = 9811    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vQTYTYPE < 1 or @I_vQTYTYPE > 5) begin  set @O_iErrorState = 9828     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if (@I_vSLTSQNUM = 0) begin  select @I_vSLTSQNUM = (isnull(max(SLTSQNUM),0) + 1) from SVC00250 (nolock)   where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE end  if exists (select 1 from SVC00250 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE  and ITEMNMBR = @I_vITEMNMBR and SLTSQNUM = @I_vSLTSQNUM) begin  select @Line_Seq_Exists=1 end  if (@Line_Seq_Exists=1) and (@I_vUpdateIfExists = 0) and (@I_vSERLTQTY > 0) begin  set @O_iErrorState = 9812     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vITEMNMBR <> '') begin  set @iValueExists = 0  select @iValueExists = 1, @iITMTRKOP = ITMTRKOP, @iITEMTYPE = ITEMTYPE, @iUOMSCHDL = UOMSCHDL, @iSELNGUOM = SELNGUOM,   @iCurrDecPlaces = (isnull(DECPLCUR, 1)-1), @iQtyDecPlaces = (isnull(DECPLQTY,1)-1),  @iSTNDCOST = isnull(STNDCOST, 0.0), @iCURRCOST = isnull(CURRCOST, 0.0),   @O_vITMSHNAM = isnull(ITMSHNAM,''), @O_vITMGEDSC = isnull(ITMGEDSC, ''), @O_vITMCLSCD = isnull(ITMCLSCD, ''),  @O_vITEMSHWT = isnull(ITEMSHWT, '')  from IV00101 (nolock) where ITEMNMBR=rtrim(@I_vITEMNMBR)  if (@iValueExists <> 1)  begin  set @O_iErrorState = 9813     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@Line_Seq_Exists = 1) and (@I_vSERLTQTY < 0) begin   if exists(select 1 from IV10002 where ITEMNMBR = @I_vITEMNMBR AND SERLTNUM = @I_vSERLTNUM AND SERLTQTY > 0 and SLTSQNUM > 0)  begin  set @O_iErrorState = 9832     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   delete from SVC00250 where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE  and SLTSQNUM = @I_vSLTSQNUM   if (@@error <> 0)  begin  set @O_iErrorState = 9827     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   if (@I_vITEMNMBR <> '' and @I_vLOCNCODE <> '' and @I_vSERLTNUM <> '')   and (@I_vSERLTNUM <> '' and exists(select 1 from IV00200 (nolock) where ITEMNMBR = @I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND SERLNMBR = @I_vSERLTNUM))  begin  update IV00200 set SERLNSLD = 0 where ITEMNMBR = @I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND SERLNMBR = @I_vSERLTNUM  if (@@error <> 0)  begin  set @O_iErrorState = 9833     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end   return (0)  end else if (@I_vSERLTQTY < 0)  return (0)   if (@Line_Seq_Exists = 1) begin  select @O_vSERLTQTY = case  when @I_vSERLTQTY <= 0 then isnull(SERLTQTY, 1)  else @I_vSERLTQTY  end,  @I_vITEMNMBR = case     when @I_vITEMNMBR is null then isnull(ITEMNMBR, '')  else @I_vITEMNMBR  end,  @iPREVEQUIPID = isnull(EQUIPID, 0),  @I_vBIN = case  when @I_vBIN is null then isnull(BIN, '')  else @I_vBIN  end,  @EQUIPID = case  when @I_vSERLTNUM is null then isnull(EQUIPID, 0)  else 0  end,  @O_vDATERECD = isnull(DATERECD, @O_DUMMYDT),  @O_vDTSEQNUM = isnull(DTSEQNUM, 1)  from SVC00250 (nolock)  where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE  and ITEMNMBR = @I_vITEMNMBR and SLTSQNUM = @I_vSLTSQNUM end  select @O_vSERLTQTY = case  when @I_vSERLTQTY <= 0 then 1  else @I_vSERLTQTY  end,  @I_vITEMNMBR = case   when @I_vITEMNMBR is null then ''  else @I_vITEMNMBR  end,  @I_vSERLTNUM = case  when @I_vSERLTNUM is null then ''  else @I_vSERLTNUM  end,  @I_vBIN = case  when @I_vBIN is null then ''  else @I_vBIN  end,  @O_vDATERECD = @O_DUMMYDT  if (@O_vUNITCOST <= 0.0) begin  if (@iCURRCOST = 0)  set @O_vUNITCOST = @iSTNDCOST  else  set @O_vUNITCOST = @iCURRCOST end  if (@I_vCUSTNMBR <> '') begin  if not exists(select 1 from RM00101 (nolock) where CUSTNMBR=@I_vCUSTNMBR)  begin  set @O_iErrorState = 9814     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@I_vADRSCODE <> '') begin  set @iValueExists = 0  select  @iValueExists = 1,   @O_vADDRESS1=isnull(ADDRESS1,''),  @O_vADDRESS2=isnull(ADDRESS2,''),  @O_vADDRESS3=isnull(ADDRESS3,''),  @O_vCOUNTRY=isnull(COUNTRY,''),  @O_vCITY=isnull(CITY,''),  @O_vSTATE=isnull(STATE,''),  @O_vZIP=isnull(ZIP,''),  @O_vCNTCPRSN=isnull(CNTCPRSN,0),  @O_vPHONE1=isnull(PHONE1,'')  from RM00102 (nolock) where CUSTNMBR=@I_vCUSTNMBR and ADRSCODE = @I_vADRSCODE   if (@iValueExists <> 1)  begin  set @O_iErrorState = 9815    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if ((@I_vLOCNCODE <> '') and (@I_vLINITMTYP = 'P')) begin  if not exists(select 1 from IV40700 (nolock) where LOCNCODE = @I_vLOCNCODE)  begin  set @O_iErrorState = 9816    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)   end  else   begin  if not exists(select 1 from IV00102 (nolock) where ITEMNMBR = @I_vITEMNMBR and LOCNCODE = @I_vLOCNCODE)  begin  set @O_iErrorState = 9817    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end end  select @SITEINACTIVE = INACTIVE from IV40700 (nolock) where LOCNCODE = @I_vLOCNCODE select @ITEMSITEINACTIVE = INACTIVE from IV00102 (nolock) where (ITEMNMBR = @I_vITEMNMBR and LOCNCODE = @I_vLOCNCODE)  if (@I_vLOCNCODE <> '' and @SITEINACTIVE = 1) begin  select @O_iErrorState = 11979     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end if (@I_vLOCNCODE <> '' and @I_vITEMNMBR <> '' and @ITEMSITEINACTIVE = 1) begin  select @O_iErrorState = 11980     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @INACTIVEITEM = INACTIVE from IV00101 (nolock) where ITEMNMBR = @I_vITEMNMBR  if (@I_vITEMNMBR <> '' and @INACTIVEITEM = 1) begin  select @O_iErrorState = 11981     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vSERLTNUM <> '') begin  select @EQUIPID = 0, @iValueExists = 0  select @iValueExists = 1, @iSerialSold = SERLNSLD, @O_vDATERECD = DATERECD, @O_vDTSEQNUM = isnull(DTSEQNUM, 1) from IV00200 (nolock) where ITEMNMBR=@I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND SERLNMBR = @I_vSERLTNUM   if (@iValueExists <> 1)  begin  set @O_iErrorState = 9818     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   set @iEquipExists = 0  select @iEquipExists = 1, @EQUIPID = isnull(EQUIPID,0),   @EQUIPCUSTNMBR = isnull(CUSTNMBR, ''),  @O_vINSTDTE = isnull(INSTDTE, @O_DUMMYDT) from SVC00300 (nolock)   where ITEMNMBR=@I_vITEMNMBR AND SERLNMBR = @I_vSERLTNUM  if (@iEquipExists = 1)   and ((@EQUIPCUSTNMBR is not null) and (@EQUIPCUSTNMBR <> @I_vCUSTNMBR) and (@EQUIPCUSTNMBR <> @INSTOCKCUSTNMBR))  begin  set @O_iErrorState = 9819     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  if (@iSerialSold = 1)  begin  if not exists (select 1 from SVC00250 (nolock) where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE   and SERLTNUM = @I_vSERLTNUM and SLTSQNUM = @I_vSLTSQNUM)  begin  set @O_iErrorState = 9820     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end   if (@EQUIPID = 0)  begin  select @EQUIPID = isnull(max(EQUIPID)+1, 1) from SVC00300 (nolock)   end end  if (@iPREVEQUIPID <> 0) and (@iPREVEQUIPID <> @EQUIPID) begin  select @iPREVSERLNMBR = isnull(SERLNMBR, '') from SVC00300 (nolock) where EQUIPID = @iPREVEQUIPID end  if (@O_vDATERECD is NULL)  set @O_vDATERECD = ''  if (@O_vDATERECD <> '') and not (datepart(hour,@O_vDATERECD) = 0 and datepart(minute,@O_vDATERECD) = 0 and datepart(second,@O_vDATERECD) = 0   and datepart(millisecond,@O_vDATERECD) = 0) begin  set @O_iErrorState = 9821     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end if (@O_vDATERECD = '')  set @O_vDATERECD = '01/01/1900'  if (@Line_Seq_Exists=0) begin  select @sCompanyID = CMPANYID from DYNAMICS..SY01500 c (nolock) where c.INTERID = db_name() end  if (@O_iErrorState <> '')  return (@O_iErrorState)  if (@Line_Seq_Exists=0) begin  insert into SVC00250( SRVRECTYPE,  CALLNBR,  EQPLINE,  LINITMTYP,  LNITMSEQ,  QTYTYPE,  SERLTNUM,  SERLTQTY,  SLTSQNUM,  DATERECD,  DTSEQNUM,  UNITCOST,  ITEMNMBR,  TRXSORCE,  POSTED,  OVRSERLT,  EQUIPID,  BIN,  MFGDATE,  EXPNDATE,  CMPNTSEQ  )  select  @I_vSRVRECTYPE,  @I_vCALLNBR,  @I_vEQPLINE,  @I_vLINITMTYP,  @I_vLNITMSEQ,  @I_vQTYTYPE,  @I_vSERLTNUM,  @O_vSERLTQTY,  @I_vSLTSQNUM,  @O_vDATERECD,  @O_vDTSEQNUM,  @O_vUNITCOST,  @I_vITEMNMBR,  @I_vTRXSORCE,  @I_vPOSTED,  @O_vOVRSERLT,  @EQUIPID,  @I_vBIN,  '1900-01-01',    '1900-01-01',    0       if (@@error <> 0)  begin  set @O_iErrorState = 9822    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end else begin  if (@I_vUpdateIfExists > 0)  begin  update SVC00250 set  SRVRECTYPE = @I_vSRVRECTYPE,  CALLNBR = @I_vCALLNBR,  EQPLINE = @I_vEQPLINE,  LINITMTYP = @I_vLINITMTYP,  LNITMSEQ = @I_vLNITMSEQ,  QTYTYPE = @I_vQTYTYPE,  SERLTNUM = @I_vSERLTNUM,  SERLTQTY = @O_vSERLTQTY,  SLTSQNUM = @I_vSLTSQNUM,  DATERECD = @O_vDATERECD,  DTSEQNUM = @O_vDTSEQNUM,  UNITCOST = @O_vUNITCOST,  ITEMNMBR = @I_vITEMNMBR,  TRXSORCE = @I_vTRXSORCE,  POSTED = @I_vPOSTED,  OVRSERLT = @O_vOVRSERLT,  EQUIPID = @EQUIPID,  BIN = @I_vBIN  where SRVRECTYPE = @I_vSRVRECTYPE and CALLNBR = @I_vCALLNBR and EQPLINE = @I_vEQPLINE   and LINITMTYP = @I_vLINITMTYP and LNITMSEQ = @I_vLNITMSEQ and QTYTYPE = @I_vQTYTYPE  and SLTSQNUM = @I_vSLTSQNUM  if (@@error <> 0)  begin  set @O_iErrorState = 9823    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end end  if (@Line_Seq_Exists = 0 or (@Line_Seq_Exists = 1 and @I_vUpdateIfExists = 1)) begin  select @O_vINSTDTE = case  when @O_vINSTDTE is null or @O_vINSTDTE = @O_DUMMYDT then convert(char(10), getdate(), 101)  else @O_vINSTDTE  end  exec @iStatus = taFSEquipmentMaster  @I_vSERLNMBR = @I_vSERLTNUM,  @I_vITEMNMBR = @I_vITEMNMBR,  @I_vCUSTNMBR = @I_vCUSTNMBR,  @I_vADRSCODE = @I_vADRSCODE,  @I_vADDRESS1 = @O_vADDRESS1,  @I_vADDRESS2 = @O_vADDRESS2,  @I_vADDRESS3 = @O_vADDRESS3,  @I_vCITY = @O_vCITY,  @I_vSTATE = @O_vSTATE,  @I_vZIP = @O_vZIP,  @I_vCOUNTRY = @O_vCOUNTRY,  @I_vCNTCPRSN = @O_vCNTCPRSN,  @I_vINSTDTE = @O_vINSTDTE,  @O_iErrorState = @O_iErrorState output,  @oErrString = @oErrString output   if (@iStatus <> 0) or (@O_iErrorState <> 0)  begin  return (@O_iErrorState)  end  if (@@error <> 0)  begin  set @O_iErrorState = 9824    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end  end  if @I_vITEMNMBR <> '' and @I_vLOCNCODE <> '' and @iPREVSERLNMBR <> '' and @I_vSERLTNUM <> '' begin  if exists(select 1 from IV10002 where ITEMNMBR = @I_vITEMNMBR AND SERLTNUM = @iPREVSERLNMBR AND SERLTQTY > 0 and SLTSQNUM > 0)  begin  set @O_iErrorState = 9834     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)   end  update IV00200 set SERLNSLD = 0 where ITEMNMBR = @I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND SERLNMBR = @iPREVSERLNMBR  if (@@error <> 0)  begin  set @O_iErrorState = 9830     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end  if @iSerialSold <> 1 and @I_vITEMNMBR <> '' and @I_vLOCNCODE <> '' and @I_vSERLTNUM <> '' begin  update IV00200 set SERLNSLD = 1 where ITEMNMBR = @I_vITEMNMBR AND LOCNCODE = @I_vLOCNCODE AND SERLNMBR = @I_vSERLTNUM  if (@@error <> 0)  begin  set @O_iErrorState = 9831     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end  exec @iStatus = taFSServiceCallLineSerialPost  @I_vSRVRECTYPE,  @I_vCALLNBR,  @I_vCUSTNMBR,  @I_vADRSCODE,  @I_vEQPLINE,  @I_vLINITMTYP,  @I_vLNITMSEQ,  @I_vQTYTYPE,  @I_vITEMNMBR,  @I_vSERLTNUM,  @I_vSERLTQTY,   @I_vSLTSQNUM,  @I_vLOCNCODE,   @I_vBIN,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  set @O_iErrorState = 9826    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSServiceCallLineSerial] TO [DYNGRP]
GO