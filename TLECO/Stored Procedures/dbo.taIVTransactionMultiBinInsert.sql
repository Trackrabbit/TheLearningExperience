SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVTransactionMultiBinInsert] @I_vIVDOCNBR char(17),    @I_vIVDOCTYP smallint,   @I_vITEMNMBR  char(30),   @I_vLNSEQNBR numeric(19,5) = 0,  @I_vQUANTITY  numeric(19,5),   @I_vADJTYPE tinyint = 0,   @I_vBIN  char(15),   @I_vCreateBin  tinyint = 0,   @I_vOverrideBin tinyint = 0,   @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1  char(50) = '',       @I_vUSRDEFND2  char(50) = '',       @I_vUSRDEFND3  char(50) = '',       @I_vUSRDEFND4  varchar(8000) = '',  @I_vUSRDEFND5  varchar(8000) = '',  @O_iErrorState int output,   @oErrString varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @LNSEQNBR int,  @SEQNUMBR int,  @LineQty numeric(19,5),  @LOCNCODE char(10),  @SERIALOT int,  @QtyAvailBin numeric(19,5),  @DECPLQTY smallint,  @ITEMTYPE tinyint,  @count smallint,  @QtyDone numeric(19,5),  @QtyLeft numeric(19,5),  @sCompanyID int,  @NOTEINDX numeric(19,5),  @iGetNextNoteIdxErrState int,  @iStatus int,  @iError int,  @O_oErrorState int,  @iCustomState int,  @iCustomErrString varchar(255)  select  @LNSEQNBR = 0,  @SEQNUMBR = 0,  @LineQty = 0,  @LOCNCODE = '',  @SERIALOT = 0,  @QtyAvailBin = 0,  @DECPLQTY = 0,  @ITEMTYPE = 0,  @count = 0,  @QtyDone = 0,  @QtyLeft = 0,  @sCompanyID = 0,  @NOTEINDX = 0,  @iGetNextNoteIdxErrState = 0,  @iStatus = 0,  @O_oErrorState = 0,  @O_iErrorState = 0  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taIVTransactionMultiBinInsertPre  @I_vIVDOCNBR output,  @I_vIVDOCTYP output,  @I_vITEMNMBR  output,  @I_vLNSEQNBR output,  @I_vQUANTITY  output,  @I_vADJTYPE output,  @I_vBIN  output,  @I_vCreateBin  output,  @I_vOverrideBin output,  @I_vRequesterTrx output,  @I_vUSRDEFND1  output,  @I_vUSRDEFND2  output,  @I_vUSRDEFND3  output,  @I_vUSRDEFND4  output,  @I_vUSRDEFND5  output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + rtrim(@iCustomErrString)  select @O_iErrorState = 5922    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ((select ENABLEMULTIBIN from IV40100 (nolock)) <> 1) begin  select @O_iErrorState = 5923   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ( @I_vIVDOCNBR is null or  @I_vITEMNMBR is null or  @I_vLNSEQNBR is null or  @I_vBIN is null or  @I_vQUANTITY is null or  @I_vADJTYPE is null or  @I_vCreateBin is null or  @I_vOverrideBin is null or  @I_vRequesterTrx is null) begin  select @O_iErrorState = 5924    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select  @I_vIVDOCNBR = upper(@I_vIVDOCNBR),  @I_vITEMNMBR = upper(@I_vITEMNMBR),  @I_vBIN      = upper(@I_vBIN)  select @SERIALOT = ITMTRKOP,  @ITEMTYPE = ITEMTYPE,  @DECPLQTY = DECPLQTY  from IV00101 (nolock) where ITEMNMBR = @I_vITEMNMBR  if (@SERIALOT in (2,3)) begin  select @O_iErrorState = 5925    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vIVDOCNBR = '') begin  select @O_iErrorState = 5926    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if not exists(select 1 from IV10001 (nolock) where IVDOCNBR = @I_vIVDOCNBR and IVDOCTYP = @I_vIVDOCTYP) begin  select @O_iErrorState = 5927    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vITEMNMBR = '') begin  select @O_iErrorState = 5928    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end   if (@ITEMTYPE = 0) begin  select @O_iErrorState = 5929    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@ITEMTYPE not in (1,2)) begin  select @O_iErrorState = 5930    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vADJTYPE not in (0,1)) begin  select @O_iErrorState = 5931   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @count = count(*) from IV10001 (nolock)  where IVDOCNBR = @I_vIVDOCNBR and IVDOCTYP = @I_vIVDOCTYP and ITEMNMBR = @I_vITEMNMBR  if (@count = 0) begin  select @O_iErrorState = 5932    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if ((@count > 1) and (@I_vLNSEQNBR = 0)) begin  select @O_iErrorState = 5933     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@count = 1) begin  select @LNSEQNBR = LNSEQNBR from IV10001 (nolock)  where IVDOCNBR = @I_vIVDOCNBR and IVDOCTYP = @I_vIVDOCTYP and ITEMNMBR = @I_vITEMNMBR end  if ((@I_vLNSEQNBR <> 0) and (@count > 1)) begin  if (not exists(select 1 from IV10001 (nolock)  where IVDOCNBR = @I_vIVDOCNBR and IVDOCTYP = @I_vIVDOCTYP and LNSEQNBR = @I_vLNSEQNBR and ITEMNMBR = @I_vITEMNMBR))  begin  select @O_iErrorState = 5934    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  else  begin  select @LNSEQNBR = @I_vLNSEQNBR  end end  select @LOCNCODE = TRXLOCTN,  @LineQty = abs(QTYBSUOM * TRXQTY)   from IV10001 (nolock) where IVDOCTYP = @I_vIVDOCTYP and IVDOCNBR = @I_vIVDOCNBR and LNSEQNBR = @LNSEQNBR  if (@I_vCreateBin not in (0,1)) begin  select @O_iErrorState = 5935    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if not exists(select 1 from IV40701 (nolock) where LOCNCODE = @LOCNCODE and BIN = @I_vBIN) begin  if (@I_vCreateBin = 0)  begin  select @O_iErrorState = 5936    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end   if (@I_vCreateBin = 1)  begin  select @sCompanyID = CMPANYID from DYNAMICS..SY01500 a (nolock) where a.INTERID = db_name()   exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @sCompanyID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @NOTEINDX output,  @O_iErrorState  = @iGetNextNoteIdxErrState output  select @iError = @@error  if ((@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) or (@iError <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + @iGetNextNoteIdxErrState  select @O_iErrorState = 5937   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end   insert IV40701 (LOCNCODE, BIN, NOTEINDX)  select @LOCNCODE, @I_vBIN, @NOTEINDX  if (@@error <> 0)  begin  select @O_iErrorState = 5938    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end end  if (not exists(select 1 from IV00112 (nolock) where ITEMNMBR = @I_vITEMNMBR and LOCNCODE = @LOCNCODE and  BIN = @I_vBIN and QTYTYPE = 1) and (@I_vADJTYPE = 1)) begin  if (@I_vCreateBin = 1)  begin  insert IV00112 (ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, ATYALLOC)  select @I_vITEMNMBR, @LOCNCODE, @I_vBIN, 1,0,0  if (@@error <> 0)  begin  select @O_iErrorState = 5939    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  else  if (@I_vCreateBin = 0)  begin  select @O_iErrorState = 5940    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@I_vOverrideBin not in (0,1)) begin  select @O_iErrorState = 5941    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vQUANTITY <= 0) begin  select @O_iErrorState = 5942    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @QtyAvailBin = (QUANTITY - ATYALLOC) from IV00112 (nolock)  where ITEMNMBR = @I_vITEMNMBR and  LOCNCODE = @LOCNCODE and  BIN = @I_vBIN and  QTYTYPE = 1  if (@I_vADJTYPE = 1) begin  if ((@I_vQUANTITY > @QtyAvailBin) and (@I_vOverrideBin = 0))  begin  select @O_iErrorState = 5943    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@I_vQUANTITY <> round(@I_vQUANTITY,@DECPLQTY - 1)) begin  select @O_iErrorState = 5944    exec @iStatus = taUpdateString   @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @QtyDone = isnull(sum(QUANTITY),0) from IV10003 (nolock) where IVDOCTYP = @I_vIVDOCTYP and IVDOCNBR = @I_vIVDOCNBR and LNSEQNBR = @LNSEQNBR select @QtyLeft = (@LineQty - @QtyDone)  if (@QtyLeft < @I_vQUANTITY) begin  select @O_iErrorState = 5945    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vRequesterTrx not in (0,1)) begin  select @O_iErrorState = 5946     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @SEQNUMBR = isnull(max(SEQNUMBR),0) + 16384 from IV10003 (nolock)   where IVDOCTYP = @I_vIVDOCTYP and IVDOCNBR = @I_vIVDOCNBR and LNSEQNBR = @LNSEQNBR  insert IV10003  (  IVDOCNBR,  IVDOCTYP,  LNSEQNBR,  SEQNUMBR,  ITEMNMBR,  LOCNCODE,  BIN,  TOBIN,  QTYTYPE,  QUANTITY,  QTYSCRAPPED  ) select  @I_vIVDOCNBR,    @I_vIVDOCTYP,    @LNSEQNBR,    @SEQNUMBR,    @I_vITEMNMBR,    @LOCNCODE,    @I_vBIN,    '',     1,     @I_vQUANTITY,    0    if (@@error <> 0) begin  select @O_iErrorState = 5947    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  if (@I_vRequesterTrx = 0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE = 'IV_Transaction',  @I_vINDEX1 = @I_vIVDOCNBR,  @I_vINDEX2 = @I_vIVDOCTYP,  @I_vINDEX3 = '',  @I_vINDEX4 = '',  @I_vINDEX5 = '',  @I_vINDEX6 = '',  @I_vINDEX7 = '',  @I_vINDEX8 = '',  @I_vINDEX9 = '',  @I_vINDEX10 = '',  @I_vINDEX11 = '',  @I_vINDEX12 = '',  @I_vINDEX13 = '',  @I_vINDEX14 = '',  @I_vINDEX15 = '',  @I_vDelete = 0,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  begin  select @iStatus = @iError  end  if ((@iStatus <> 0) or (@iCustomState <> 0))  begin  select @O_iErrorState = 5948   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  if (@I_vADJTYPE = 1) begin  update IV00112 set ATYALLOC = ATYALLOC + @I_vQUANTITY  where  ITEMNMBR = @I_vITEMNMBR and  LOCNCODE = @LOCNCODE and  BIN = @I_vBIN and  QTYTYPE = 1  if (@@error <> 0)  begin  select @O_iErrorState = 5949    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  exec @iStatus = taIVTransactionMultiBinInsertPost  @I_vIVDOCNBR,  @I_vIVDOCTYP,  @I_vITEMNMBR,  @I_vLNSEQNBR,  @I_vQUANTITY,  @I_vADJTYPE,  @I_vBIN,  @I_vCreateBin,  @I_vOverrideBin,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus = 0) and (@iError <> 0)) begin  select @iStatus = @iError end if ((@iStatus <> 0) or (@iCustomState <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 5950    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vRequesterTrx = 0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE = 'IV_Transaction',  @I_vINDEX1 = @I_vIVDOCNBR,  @I_vINDEX2 = @I_vIVDOCTYP,  @I_vINDEX3 = '',  @I_vINDEX4 = '',  @I_vINDEX5 = '',  @I_vINDEX6 = '',  @I_vINDEX7 = '',  @I_vINDEX8 = '',  @I_vINDEX9 = '',  @I_vINDEX10 = '',  @I_vINDEX11 = '',  @I_vINDEX12 = '',  @I_vINDEX13 = '',  @I_vINDEX14 = '',  @I_vINDEX15 = '',  @I_vDelete = 1,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  begin  select @iStatus = @iError  end  if ((@iStatus <> 0) or (@iCustomState <> 0))  begin  select @O_iErrorState = 5951   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVTransactionMultiBinInsert] TO [DYNGRP]
GO