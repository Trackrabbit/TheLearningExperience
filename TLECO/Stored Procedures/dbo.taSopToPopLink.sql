SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopToPopLink]  @I_vSOPTYPE smallint,    @I_vSOPNUMBE char(21),     @I_vVENDORID char(15) = '',    @I_vDOCDATE datetime = '',   @I_vCURNCYID char(15) = '',   @I_vSHIPMTHD char(15) = null,   @I_vUSERID char(15) = null,   @I_vUSRDEFND1 char(50) = '',   @I_vUSRDEFND2 char(50) = '',   @I_vUSRDEFND3 char(50) = '',   @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @iStatus int,  @O_oErrorState int,  @iCustomState int,  @iCustomErrString varchar(255),  @iError int,  @SEQNUMBR int,  @ORD int,  @SOPTYPE smallint,  @SOPNUMBE char(21),  @LNITMSEQ int,  @CMPNTSEQ int,  @iCursorRows int,  @PONUMBER char(17),  @iGetNextPONumberErrState int,  @iAddPOLine int,  @vAddPOLineErrString varchar(255),  @iAddPOHdr int,  @vAddPOHdrErrString varchar(255),  @REQDATEPO smallint,  @Required_Days smallint,  @QTYBSUOM numeric(19,5),  @QTYTBAOR numeric(19,5),  @QTYCANCE numeric(19,5),  @QUANTITY numeric(19,5),  @QTYREMAI numeric(19,5),  @DROPSHIP smallint,  @ITEMNMBR char(30),  @NONINVEN smallint,  @LOCNCODE char(10),    @POTYPE smallint,  @QTYONPO numeric(19,5),  @UNITCOST numeric(19,5),  @UOFM char(8),  @ReqShipDate datetime,  @HdrPRSTADCD char(15),  @HdrCUSTNMBR char(15),  @HdrShipToName char(65),  @HdrCNTCPRSN char(30),  @HdrADDRESS1 char(30),  @HdrADDRESS2 char(30),  @HdrADDRESS3 char(30),  @HdrCITY char(30),  @HdrSTATE char(4),  @HdrZIPCODE char(10),  @HdrCCode char(6),  @HdrCOUNTRY char(20),  @HdrPHNUMBR1 char(20),  @HdrPHNUMBR2 char(20),  @HdrPHONE3 char(14),  @HdrFAXNUMBR char(20),  @CurrDateTime datetime,  @TransferLineComments tinyint,  @AUTOHOLD tinyint,  @COMMNTID char(15),  @CMMTTEXT varchar(500),  @SOPHdrTbl char(18),  @HdrVENDORID char(15),  @HdrPONUMBER char(17),  @HdrDROPSHIP smallint,  @DexRowID int,  @VENDORID char(15),  @CMPANYID smallint,  @oExists Int,  @OInsStatus Int,  @DexLockErrorState int  if (@oErrString is NULL) begin  select @oErrString = '' end  select  @iStatus = 0,  @O_oErrorState = 0,  @SEQNUMBR = 16384,  @ORD = 16384,  @iCursorRows = 0,  @PONUMBER = '',  @iGetNextPONumberErrState = 0,  @Required_Days = 0,  @iAddPOLine = 0,  @vAddPOLineErrString = '',  @iAddPOHdr = 0,  @vAddPOHdrErrString = '',  @POTYPE = 0,  @CurrDateTime = convert(varchar(12),getdate()),  @HdrPRSTADCD = '',  @HdrCUSTNMBR = '',  @HdrShipToName = '',  @HdrCNTCPRSN = '',  @HdrADDRESS1 = '',  @HdrADDRESS2 = '',  @HdrADDRESS3 = '',  @HdrCITY = '',  @HdrSTATE = '',  @HdrZIPCODE = '',  @HdrCCode = '',  @HdrCOUNTRY = '',  @HdrPHNUMBR1 = '',  @HdrPHNUMBR2 = '',  @HdrPHONE3 = '',  @HdrFAXNUMBR = '',  @TransferLineComments = 0,  @CMMTTEXT = '',  @SOPHdrTbl = '',  @HdrVENDORID = '',  @HdrPONUMBER = '',  @HdrDROPSHIP = 0,  @DexRowID = 0,  @VENDORID = '',  @CMPANYID = 0,  @oExists = 0,  @OInsStatus = 0,  @DexLockErrorState = 0,  @O_iErrorState = 0  exec @iStatus = taSopToPopLinkPre  @I_vSOPTYPE output,  @I_vSOPNUMBE output,  @I_vVENDORID output,  @I_vDOCDATE output,  @I_vCURNCYID output,  @I_vSHIPMTHD output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus = 0) and (@iError <> 0)) begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 1602    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ( @I_vSOPTYPE is NULL or  @I_vSOPNUMBE is NULL or  @I_vVENDORID is NULL or  @I_vDOCDATE is NULL or  @I_vCURNCYID is NULL) begin  select @O_iErrorState = 1603    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (  @I_vSOPNUMBE = '' or  @I_vSOPTYPE = 0) begin  select @O_iErrorState = 1604     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @I_vSOPNUMBE = upper(@I_vSOPNUMBE),  @I_vCURNCYID = upper(@I_vCURNCYID),  @I_vVENDORID = upper(@I_vVENDORID),  @I_vSHIPMTHD = upper(@I_vSHIPMTHD)  if (@I_vSOPTYPE <> 2 and @I_vSOPTYPE <> 5) begin  select @O_iErrorState = 1605     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if not exists(select 1 from SOP10100 (nolock) where SOPTYPE = @I_vSOPTYPE and SOPNUMBE = @I_vSOPNUMBE) begin  select @O_iErrorState = 1606     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vCURNCYID <> '') and not exists(select 1 from DYNAMICS..MC40200 (nolock) where CURNCYID = @I_vCURNCYID) begin  select @O_iErrorState = 1607     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vDOCDATE = '') begin  select @I_vDOCDATE = @CurrDateTime end  if ((@I_vSHIPMTHD is not null) and (@I_vSHIPMTHD <> '') and (not exists (select 1 from SY03000 (nolock) where SHIPMTHD = @I_vSHIPMTHD))) begin  select @O_iErrorState = 1608     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vVENDORID <> '' and not exists (select 1 from PM00200 (nolock) where VENDORID = @I_vVENDORID)) begin  select @O_iErrorState = 1639     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (exists(select 1 from WF100001 where FormID = 829)) and (exists (select 1 from WF100002 where WF100002.ACTIVE = 1))  Begin  select @O_iErrorState = 12014     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output End  select  @HdrCUSTNMBR = CUSTNMBR,  @I_vUSERID =   case  when @I_vUSERID is null  then USER2ENT  else @I_vUSERID  end  from SOP10100 (nolock) where  SOPNUMBE = @I_vSOPNUMBE  and SOPTYPE = @I_vSOPTYPE  if (@O_iErrorState <> 0)  return (@O_iErrorState)  if (exists (select 1 from tempdb..sysobjects where id = (select object_id('tempdb..#VendorPOs')))) begin  drop table #VendorPOs end create table #VendorPOs  (  VENDORID char(15),  PONUMBER char(17),  DROPSHIP smallint,  TotalUNITCOST numeric(19,5),  ORD int,  PRSTADCD char(15),  ShipToName char(65),  CNTCPRSN char(30),  ADDRESS1 char(30),  ADDRESS2 char(30),  ADDRESS3 char(30),  CITY char(30),  STATE char(4),  ZIPCODE char(10),  CCode char(6),  COUNTRY char(20),  PHNUMBR1 char(20),  PHNUMBR2 char(20),  FAXNUMBR char(20),  PHONE3 char(14)  ) create index AK1#VendorPOs on #VendorPOs (VENDORID,DROPSHIP)  declare POLines insensitive cursor for  select  s.SOPTYPE,  s.SOPNUMBE,  s.LNITMSEQ,  s.CMPNTSEQ,  s.ReqShipDate,  s.QTYBSUOM,  s.QTYTBAOR,  s.QTYCANCE,  s.QUANTITY,  s.QTYREMAI,  s.DROPSHIP,  s.ITEMNMBR,  s.NONINVEN,  s.LOCNCODE,  s.UNITCOST,  s.UOFM,  s.COMMNTID,  s.PRSTADCD,  s.ShipToName,  s.CNTCPRSN,  s.ADDRESS1,  s.ADDRESS2,  s.ADDRESS3,  s.CITY,  s.STATE,  s.ZIPCODE,  s.CCode,  s.COUNTRY,  s.PHONE1,  s.PHONE2,  s.PHONE3,  s.FAXNUMBR  from SOP10200 s (nolock) left outer join IV00101 i (nolock) on s.ITEMNMBR = i.ITEMNMBR and i.ITEMTYPE <> 2  where  s.SOPTYPE = @I_vSOPTYPE  and s.SOPNUMBE = @I_vSOPNUMBE  and ( (s.SOPTYPE = 2 and s.QTYTBAOR > 0)  or (s.SOPTYPE = 2 and s.DROPSHIP = 1 and ((s.QUANTITY - s.QTYCANCE) > 0))  or (s.SOPTYPE = 5 and s.QTYREMAI > 0)  or ((s.SOPTYPE = 2 or s.SOPTYPE = 5) and s.NONINVEN = 1))  open POLines select @iCursorRows = @@cursor_rows  if (@iCursorRows <= 0) begin  select @O_iErrorState = 1631    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  deallocate POLines  drop table #VendorPOs  return (@O_iErrorState) end  select @REQDATEPO = REQDATEPO,  @Required_Days = Required_Days  from SOP40100 (nolock) where SETUPKEY = 1  select  @TransferLineComments = TransferLineComments,  @AUTOHOLD = AUTOHOLD  from POP40100 (nolock) where INDEX1 = 1  if (exists (select 1  from DYNAMICS..SY00800 b join DYNAMICS..SY01500 c on c.INTERID = db_name() and b.CMPNYNAM = c.CMPNYNAM  where (b.TRXSOURC = 'Reconcile' or b.TRXSOURC = 'Item ABC Analysis')  or (b.TRXSOURC = 'PM RECONCILE' and b.BACHNUMB = 'PM RECONCILE'))) begin  select @O_iErrorState = 1601    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  deallocate POLines  drop table #VendorPOs  return (@O_iErrorState) end  fetch next from POLines into  @SOPTYPE,  @SOPNUMBE,  @LNITMSEQ,  @CMPNTSEQ,  @ReqShipDate,  @QTYBSUOM,  @QTYTBAOR,  @QTYCANCE,  @QUANTITY,  @QTYREMAI,  @DROPSHIP,  @ITEMNMBR,  @NONINVEN,  @LOCNCODE,  @UNITCOST,  @UOFM,  @COMMNTID,  @HdrPRSTADCD,  @HdrShipToName,  @HdrCNTCPRSN,  @HdrADDRESS1,  @HdrADDRESS2,  @HdrADDRESS3,  @HdrCITY,  @HdrSTATE,  @HdrZIPCODE,  @HdrCCode,  @HdrCOUNTRY,  @HdrPHNUMBR1,  @HdrPHNUMBR2,  @HdrPHONE3,  @HdrFAXNUMBR while (@@fetch_status <> -1) begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 1613    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   if (exists(select 1 from SOP60100 (nolock) where SOPTYPE = @I_vSOPTYPE and SOPNUMBE = @I_vSOPNUMBE and LNITMSEQ = @LNITMSEQ and CMPNTSEQ = @CMPNTSEQ))  begin  select @O_iErrorState = 4656    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   if (@NONINVEN = 0)  begin   select @VENDORID = PRIMVNDR from IV00102 (nolock) where ITEMNMBR = @ITEMNMBR and LOCNCODE = @LOCNCODE   if (@VENDORID = '')  begin  select @O_iErrorState = 1609    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  end  else  begin  select @VENDORID = @I_vVENDORID  if (@VENDORID = '')  begin  select @O_iErrorState = 1640     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  end   select @PONUMBER = ''   select @PONUMBER = PONUMBER, @ORD = ORD + 16384 from #VendorPOs  where  VENDORID = @VENDORID  and DROPSHIP = @DROPSHIP  and CNTCPRSN = @HdrCNTCPRSN  and ADDRESS1 = @HdrADDRESS1  and ADDRESS2 = @HdrADDRESS2  and ADDRESS3 = @HdrADDRESS3  and CITY = @HdrCITY  and STATE = @HdrSTATE  and ZIPCODE = @HdrZIPCODE  and CCode = @HdrCCode  and COUNTRY = @HdrCOUNTRY  if (@PONUMBER = '')  begin   exec @iStatus = taGetPONextNumber  @I_vInc_Dec = 1,  @O_vPONUMBER = @PONUMBER output,  @O_iErrorState = @iGetNextPONumberErrState output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  select @iStatus = @iError  if (@iStatus <> 0) or (@iGetNextPONumberErrState <> 0)  begin  if (@iGetNextPONumberErrState <> 0)  begin  exec @iStatus = taUpdateString  @iGetNextPONumberErrState,   @oErrString,  @oErrString output,  @O_oErrorState output  end  select @O_iErrorState = 1723    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  insert #VendorPOs  (  VENDORID,  PONUMBER,  DROPSHIP,  TotalUNITCOST,  ORD,  PRSTADCD,  ShipToName,  CNTCPRSN,  ADDRESS1,  ADDRESS2,  ADDRESS3,  CITY,  STATE,  ZIPCODE,  CCode,  COUNTRY,  PHNUMBR1,  PHNUMBR2,  FAXNUMBR,  PHONE3  )  select  @VENDORID,  @PONUMBER,  @DROPSHIP,  0,  0,   case  when @DROPSHIP = 0 then ''  else @HdrPRSTADCD  end,  case  when @DROPSHIP = 0 then ''  else @HdrShipToName  end,  @HdrCNTCPRSN,  @HdrADDRESS1,  @HdrADDRESS2,  @HdrADDRESS3,  @HdrCITY,  @HdrSTATE,  @HdrZIPCODE,  @HdrCCode,  @HdrCOUNTRY,  @HdrPHNUMBR1,  @HdrPHNUMBR2,  @HdrPHONE3,  @HdrFAXNUMBR   select @ORD = @SEQNUMBR  end   select @POTYPE = case when @DROPSHIP = 0 then 1 else 2 end,  @QTYONPO =  case  when @NONINVEN = 1 and @SOPTYPE = 5 then @QTYREMAI  when @NONINVEN = 1 and @SOPTYPE = 2 and @QTYTBAOR > 0 then @QTYTBAOR  when @NONINVEN = 1 and @SOPTYPE = 2 and @QTYTBAOR = 0 then @QTYREMAI  when @SOPTYPE = 2 and @DROPSHIP = 0 then @QTYTBAOR  when @SOPTYPE = 2 and @DROPSHIP = 1 and @QTYTBAOR > 0 then @QTYTBAOR  when @SOPTYPE = 2 and @DROPSHIP = 1 and @QTYTBAOR = 0 then @QUANTITY - @QTYCANCE  else @QTYREMAI  end   select @CMMTTEXT = ''   if ((@TransferLineComments = 1) and (@COMMNTID <> ''))  begin  select  @CMMTTEXT = CMMTTEXT  from SOP10202 (nolock) where SOPTYPE = @SOPTYPE and SOPNUMBE = @SOPNUMBE and CMPNTSEQ = @CMPNTSEQ and LNITMSEQ = @LNITMSEQ  end   select @UNITCOST = Last_Originating_Cost  from IV00103 (nolock)  where VENDORID = @VENDORID and ITEMNMBR = @ITEMNMBR   select @UNITCOST = (@UNITCOST * @QTYBSUOM)   exec @iStatus = taPoLine  @I_vPOTYPE = @POTYPE,  @I_vPONUMBER = @PONUMBER,  @I_vVENDORID = @VENDORID,  @I_vLOCNCODE = @LOCNCODE,  @I_vITEMNMBR = @ITEMNMBR,  @I_vQUANTITY = @QTYONPO,  @I_vREQDATE = @ReqShipDate,  @I_vPRMDATE = @I_vDOCDATE,  @I_vPRMSHPDTE = @I_vDOCDATE,  @I_vNONINVEN = @NONINVEN,  @I_vUNITCOST = @UNITCOST,  @I_vCOMMNTID = @COMMNTID,  @I_vCMMTTEXT = @CMMTTEXT,  @I_vUOFM = @UOFM,  @I_vCUSTNMBR = @HdrCUSTNMBR,       @O_iErrorState = @iAddPOLine output,  @oErrString = @vAddPOLineErrString output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  select @iStatus = @iError  if (@iStatus <> 0) or (@iAddPOLine <> 0)  begin  if (@iAddPOLine <> 0)  begin  select @oErrString = rtrim(@oErrString) + ' ' + @vAddPOLineErrString  end  select @O_iErrorState = 1611    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   update POP10110 set  QTYCMTBASE = QTYUNCMTBASE,  QTYUNCMTBASE = 0,  LINEORIGIN = 3   where PONUMBER = @PONUMBER and ITEMNMBR = @ITEMNMBR and ORD = @ORD  if (@@error <> 0)  begin  select @O_iErrorState = 1635    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   update #VendorPOs set TotalUNITCOST = TotalUNITCOST + ((@UNITCOST * @QTYONPO) * @QTYBSUOM), ORD = @ORD  where  VENDORID = @VENDORID  and DROPSHIP = @DROPSHIP  and CNTCPRSN = @HdrCNTCPRSN  and ADDRESS1 = @HdrADDRESS1  and ADDRESS2 = @HdrADDRESS2  and ADDRESS3 = @HdrADDRESS3  and CITY = @HdrCITY  and STATE = @HdrSTATE  and ZIPCODE = @HdrZIPCODE  and CCode = @HdrCCode  and COUNTRY = @HdrCOUNTRY   insert SOP60100  (  SOPNUMBE,  SOPTYPE,  LNITMSEQ,  CMPNTSEQ,  PONUMBER,  ORD,  RCTINVCERRORS,  RCPTCOST,  RCPTPRIORITY,  QTYONPO,  QTYONPOBASE,  QTYRECVD,  QTYRECINBASE,  RQSTFFDATE,  QTYBSUOM,  LOCNCODE  )  select  @SOPNUMBE,    @SOPTYPE,    @LNITMSEQ,    @CMPNTSEQ,    @PONUMBER,    @ORD,     0,     0,     0,     @QTYONPO,    @QTYBSUOM * @QTYONPO,   0,     0,     case     when @REQDATEPO = 1   then @ReqShipDate  else @ReqShipDate - @Required_Days  end,  @QTYBSUOM,    @LOCNCODE    if (@@error <> 0)  begin  select @O_iErrorState = 1610    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   fetch next from POLines into  @SOPTYPE,  @SOPNUMBE,  @LNITMSEQ,  @CMPNTSEQ,  @ReqShipDate,  @QTYBSUOM,  @QTYTBAOR,  @QTYCANCE,  @QUANTITY,  @QTYREMAI,  @DROPSHIP,  @ITEMNMBR,  @NONINVEN,  @LOCNCODE,  @UNITCOST,  @UOFM,  @COMMNTID,  @HdrPRSTADCD,  @HdrShipToName,  @HdrCNTCPRSN,  @HdrADDRESS1,  @HdrADDRESS2,  @HdrADDRESS3,  @HdrCITY,  @HdrSTATE,  @HdrZIPCODE,  @HdrCCode,  @HdrCOUNTRY,  @HdrPHNUMBR1,  @HdrPHNUMBR2,  @HdrPHONE3,  @HdrFAXNUMBR end deallocate POLines  if (@O_iErrorState <> 0) begin  drop table #VendorPOs  return (@O_iErrorState) end  select @SOPHdrTbl = rtrim(db_name()) + '.dbo.SOP10100' select @DexRowID = DEX_ROW_ID from SOP10100 (nolock) where SOPTYPE = @I_vSOPTYPE and SOPNUMBE = @I_vSOPNUMBE exec @iStatus = DYNAMICS..taDEXLOCKS  @I_vOperation = 1,  @I_vtable_path_name = @SOPHdrTbl,   @I_vrow_id = @DexRowID,     @O_oExists = @oExists output,    @O_oInsertStatus = @OInsStatus output,   @O_iErrorState = @DexLockErrorState output if (@OInsStatus <> 1) begin  if (@DexLockErrorState <> 0)  begin  exec @iStatus = taUpdateString  @DexLockErrorState,   @oErrString,  @oErrString output,  @O_oErrorState output  end  select @O_iErrorState = 1636    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  drop table #VendorPOs  return (@O_iErrorState) end  while (1=1) begin  update s set  s.QTYONPO =  case  when s.SOPTYPE = 2 and s.DROPSHIP = 0 then s.QTYTBAOR  when s.SOPTYPE = 2 and s.DROPSHIP = 1 and s.QTYTBAOR > 0 then s.QTYTBAOR  when s.SOPTYPE = 2 and s.DROPSHIP = 1 and s.QTYTBAOR = 0 then s.QUANTITY - s.QTYCANCE  else s.QTYREMAI  end,  s.PURCHSTAT = 3  from SOP10200 s (nolock) left join IV00101 i (nolock) on s.ITEMNMBR = i.ITEMNMBR and i.ITEMTYPE <> 2  where  s.SOPTYPE = @I_vSOPTYPE  and s.SOPNUMBE = @I_vSOPNUMBE  and ( (s.SOPTYPE = 2 and s.QTYTBAOR > 0)  or (s.SOPTYPE = 2 and s.DROPSHIP = 1 and ((s.QUANTITY - s.QTYCANCE) > 0))  or (s.SOPTYPE = 5 and s.QTYREMAI > 0))  if (@@error <> 0)  begin  select @O_iErrorState = 1625    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   declare POHeader insensitive cursor for  select  VENDORID,  PONUMBER,  DROPSHIP,  PRSTADCD,  ShipToName,  CNTCPRSN,  ADDRESS1,  ADDRESS2,  ADDRESS3,  CITY,  STATE,  ZIPCODE,  CCode,  COUNTRY,  PHNUMBR1,  PHNUMBR2,  FAXNUMBR,  PHONE3  from #VendorPOs (nolock)  open POHeader   fetch next from POHeader into  @HdrVENDORID,  @HdrPONUMBER,  @HdrDROPSHIP,  @HdrPRSTADCD,  @HdrShipToName,  @HdrCNTCPRSN,  @HdrADDRESS1,  @HdrADDRESS2,  @HdrADDRESS3,  @HdrCITY,  @HdrSTATE,  @HdrZIPCODE,  @HdrCCode,  @HdrCOUNTRY,  @HdrPHNUMBR1,  @HdrPHNUMBR2,  @HdrPHONE3,  @HdrFAXNUMBR  while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 1724    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   if (@HdrDROPSHIP = 0)  begin  select @POTYPE = 1,  @HdrCNTCPRSN = '',  @HdrPRSTADCD = '',   @HdrShipToName = '',  @HdrADDRESS1 = '',  @HdrADDRESS2 = '',  @HdrADDRESS3 = '',  @HdrCITY = '',  @HdrSTATE = '',  @HdrZIPCODE = '',  @HdrCCode = '',  @HdrCOUNTRY = '',  @HdrPHNUMBR1 = '',  @HdrPHNUMBR2 = '',  @HdrPHONE3 = '',  @HdrFAXNUMBR = '',  @HdrCUSTNMBR = ''    select @HdrPRSTADCD = LOCATNID, @CMPANYID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()   select @HdrCNTCPRSN = ADRCNTCT,  @HdrShipToName = LOCATNNM,  @HdrADDRESS1 = ADDRESS1,  @HdrADDRESS2 = ADDRESS2,  @HdrADDRESS3 = ADDRESS3,  @HdrCITY = CITY,  @HdrSTATE = STATE,  @HdrZIPCODE = ZIPCODE,  @HdrCOUNTRY = COUNTRY,  @HdrPHNUMBR1 = PHONE1,  @HdrPHNUMBR2 = PHONE2,  @HdrPHONE3 = PHONE3,  @HdrFAXNUMBR = FAXNUMBR from SY00600 (nolock) where CMPANYID = @CMPANYID and LOCATNID = @HdrPRSTADCD  end  else  begin  select @POTYPE = 2  end   exec @iStatus = taPoHdr  @I_vPOTYPE = @POTYPE,  @I_vPONUMBER = @HdrPONUMBER,  @I_vVENDORID = @HdrVENDORID,  @I_vDOCDATE = @I_vDOCDATE,  @I_vALLOWSOCMTS = 1,     @I_vUSERID = @I_vUSERID,  @I_vCUSTNMBR = @HdrCUSTNMBR,  @I_vPRSTADCD = @HdrPRSTADCD,  @I_vCMPNYNAM = @HdrShipToName,  @I_vADDRESS1 = @HdrADDRESS1,  @I_vADDRESS2 = @HdrADDRESS2,  @I_vADDRESS3 = @HdrADDRESS3,  @I_vCITY = @HdrCITY,  @I_vSTATE = @HdrSTATE,  @I_vZIPCODE = @HdrZIPCODE,  @I_vCCode = @HdrCCode,  @I_vCOUNTRY = @HdrCOUNTRY,  @I_vCONTACT = @HdrCNTCPRSN,  @I_vPHONE1 = @HdrPHNUMBR1,  @I_vPHONE2 = @HdrPHNUMBR2,  @I_vPHONE3 = @HdrPHONE3,  @I_vFAX = @HdrFAXNUMBR,  @I_vSHIPMTHD = @I_vSHIPMTHD,  @I_vCOMMNTID = '',     @I_vCOMMENT_1 = '',     @I_vCOMMENT_2 = '',     @I_vCOMMENT_3 = '',     @I_vCOMMENT_4 = '',     @I_vHOLD = @AUTOHOLD,     @I_vPOSTATUS = 1,     @I_vCURNCYID = @I_vCURNCYID,  @O_iErrorState = @iAddPOHdr output,  @oErrString = @vAddPOHdrErrString output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  select @iStatus = @iError  if (@iStatus <> 0) or (@iAddPOHdr <> 0)  begin  if (@iAddPOHdr <> 0)  begin  select @oErrString = rtrim(@oErrString) + ' ' + @vAddPOHdrErrString  end  select @O_iErrorState = 1630    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end   fetch next from POHeader into  @HdrVENDORID,  @HdrPONUMBER,  @HdrDROPSHIP,  @HdrPRSTADCD,  @HdrShipToName,  @HdrCNTCPRSN,  @HdrADDRESS1,  @HdrADDRESS2,  @HdrADDRESS3,  @HdrCITY,  @HdrSTATE,  @HdrZIPCODE,  @HdrCCode,  @HdrCOUNTRY,  @HdrPHNUMBR1,  @HdrPHNUMBR2,  @HdrPHONE3,  @HdrFAXNUMBR  end   deallocate POHeader  break end  drop table #VendorPOs  exec @iStatus = DYNAMICS..taDEXLOCKS  @I_vOperation = 3,   @I_vtable_path_name = @SOPHdrTbl,   @I_vrow_id = @DexRowID,     @O_oExists = @oExists output,    @O_oInsertStatus = @OInsStatus output,   @O_iErrorState = @DexLockErrorState output if ((@DexLockErrorState <> 0) or (@@error <> 0) or (@iStatus <> 0)) begin  select @O_iErrorState = 1637    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@O_iErrorState <> 0) begin  return (@O_iErrorState) end  exec @iStatus = taSopToPopLinkPost  @I_vSOPTYPE,  @I_vSOPNUMBE,  @I_vVENDORID,  @I_vDOCDATE,  @I_vCURNCYID,  @I_vSHIPMTHD,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if (@iStatus = 0 and @iError <> 0) begin  select @iStatus = @iError end  if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 1612    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopToPopLink] TO [DYNGRP]
GO