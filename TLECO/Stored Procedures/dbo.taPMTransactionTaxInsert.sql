SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPMTransactionTaxInsert] @I_vVENDORID char(15),   @I_vVCHRNMBR char(17),   @I_vDOCTYPE smallint,   @I_vBACHNUMB char(15),   @I_vTAXDTLID char(15),   @I_vTAXAMNT numeric(19,5),   @I_vPCTAXAMT numeric(19,5)=0,  @I_vFRTTXAMT numeric(19,5)=0,  @I_vMSCTXAMT numeric(19,5)=0,  @I_vTDTTXPUR numeric(19,5)=0,  @I_vTXDTTPUR numeric(19,5)=0,  @I_vACTINDX int=0,    @I_vACTNUMST varchar(75) = '',  @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1  char(50) = '',   @I_vUSRDEFND2  char(50) = '',   @I_vUSRDEFND3  char(50) = '',   @I_vUSRDEFND4  varchar(8000) = '',  @I_vUSRDEFND5  varchar(8000) = '',  @O_iErrorState int output,  @oErrString varchar(255) output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @CURNCYID char(15),    @CURRNIDX smallint,    @BKOUTTAX smallint,    @iStatus int,  @iError int,  @iCustomState int,  @iCustomErrString varchar(255),  @O_oErrorState int,  @ENABLEREVERSETAXES tinyint           select  @O_oErrorState = 0,  @O_iErrorState = 0,  @BKOUTTAX = -1,    @iStatus = 0,  @CURRNIDX = 0,  @CURNCYID = '',  @ENABLEREVERSETAXES = 0            if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taPMTransactionTaxInsertPre  @I_vVENDORID output,  @I_vVCHRNMBR output,  @I_vDOCTYPE output,  @I_vBACHNUMB output,  @I_vTAXDTLID output,  @I_vTAXAMNT output,  @I_vPCTAXAMT output,  @I_vFRTTXAMT output,  @I_vMSCTXAMT output,  @I_vTDTTXPUR output,  @I_vTXDTTPUR output,  @I_vACTINDX output,  @I_vACTNUMST output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState= @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus = 0) and (@iError <> 0)) begin  select @iStatus = @iError end if ((@iStatus <> 0) or (@iCustomState <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 155    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ( @I_vVENDORID  is NULL or  @I_vVCHRNMBR  is NULL or  @I_vDOCTYPE  is NULL or  @I_vBACHNUMB  is NULL or  @I_vTAXDTLID  is NULL or  @I_vTAXAMNT  is NULL or  @I_vPCTAXAMT is NULL or  @I_vFRTTXAMT  is NULL or  @I_vMSCTXAMT  is NULL or  @I_vACTINDX  is NULL or  @I_vACTNUMST  is NULL or  @I_vTDTTXPUR  is NULL or  @I_vTXDTTPUR  is NULL) begin  select @O_iErrorState = 401    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if( @I_vVENDORID = '' or  @I_vVCHRNMBR = '' or  @I_vTAXDTLID = '' or  @I_vBACHNUMB = '') begin  select @O_iErrorState = 402    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @ENABLEREVERSETAXES = abs(sign(isnull(Company_Options, 0) & power(2,20))) from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  if (@ENABLEREVERSETAXES = 0) begin   if( @I_vPCTAXAMT < 0 or  @I_vFRTTXAMT < 0 or  @I_vMSCTXAMT < 0)  begin  select @O_iErrorState = 534    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end   select  @I_vVENDORID = UPPER(@I_vVENDORID),  @I_vBACHNUMB = UPPER(@I_vBACHNUMB),  @I_vTAXDTLID = UPPER(@I_vTAXDTLID)  if (@I_vDOCTYPE < 1 or @I_vDOCTYPE > 5) begin  select @O_iErrorState = 403    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @BKOUTTAX =   case TXDTLBSE  when 1 then 1  else 0  end   from TX00201 (nolock) where TAXDTLID = @I_vTAXDTLID  if (@BKOUTTAX = -1) begin  select @O_iErrorState = 404    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if exists(select 1 from PM10500 (nolock) where VCHRNMBR = @I_vVCHRNMBR and TRXSORCE = '' and TAXDTLID = @I_vTAXDTLID ) begin  select @O_iErrorState = 698    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vACTNUMST <> '') begin  select @I_vACTINDX = ACTINDX from GL00105 (nolock) where ACTNUMST = @I_vACTNUMST  select @I_vACTINDX = isnull(@I_vACTINDX,0)  if (@I_vACTINDX = 0)  begin  select @O_iErrorState = 447     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end else begin  if (@I_vACTINDX <> 0)  begin  select @I_vACTINDX = ACTINDX from GL00105 (nolock) where ACTINDX = @I_vACTINDX  select @I_vACTINDX = isnull(@I_vACTINDX,0)  if (@I_vACTINDX = 0)  begin  select @O_iErrorState = 448     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  else  begin  select @I_vACTINDX = isnull(ACTINDX,0) from TX00201 (nolock) where TAXDTLID = @I_vTAXDTLID   if (@I_vACTINDX = 0)  begin  select @O_iErrorState = 405    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end end  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1 ) begin  select @O_iErrorState = 5620     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @CURNCYID = isnull(CURNCYID,'') from PM00200 (nolock) where VENDORID  = @I_vVENDORID if (@CURNCYID <> '') begin  select @CURRNIDX = isnull(CURRNIDX,0) from DYNAMICS..MC40200 (nolock) where CURNCYID = @CURNCYID end else begin  select @CURNCYID = isnull(FUNLCURR,''), @CURRNIDX = isnull(FUNCRIDX,0) from MC40000 (nolock) end  if (@I_vRequesterTrx = 0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE = 'Payables_Transaction',  @I_vINDEX1 = @I_vVCHRNMBR,  @I_vINDEX2 = @I_vBACHNUMB,  @I_vINDEX3 = '',  @I_vINDEX4 = '',  @I_vINDEX5 = '',  @I_vINDEX6 = '',  @I_vINDEX7 = '',  @I_vINDEX8 = '',  @I_vINDEX9 = '',  @I_vINDEX10 = '',  @I_vINDEX11 = '',  @I_vINDEX12 = '',  @I_vINDEX13 = '',  @I_vINDEX14 = '',  @I_vINDEX15 = '',  @I_vDelete = 0,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  begin  select @iStatus = @iError  end  if ((@iStatus <> 0) or (@iCustomState <> 0))  begin  select @O_iErrorState = 2776   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  while 1=1 begin  insert into PM10500  (  VENDORID,  VCHRNMBR,  DOCTYPE,  BACHNUMB,  TAXDTLID,  BKOUTTAX,  TAXAMNT,  ORTAXAMT,  PCTAXAMT,  ORPURTAX,  FRTTXAMT,  ORFRTTAX,  MSCTXAMT,  ORMSCTAX,  ACTINDX,  TRXSORCE,   TDTTXPUR,  ORTXBPUR,  TXDTTPUR,  ORTOTPUR,  CURRNIDX,  POSTED  )  select  @I_vVENDORID,   @I_vVCHRNMBR,   @I_vDOCTYPE,   @I_vBACHNUMB,   @I_vTAXDTLID,   @BKOUTTAX,    @I_vTAXAMNT,   @I_vTAXAMNT,   @I_vPCTAXAMT,   @I_vPCTAXAMT,   @I_vFRTTXAMT,   @I_vFRTTXAMT,   @I_vMSCTXAMT,   @I_vMSCTXAMT,   @I_vACTINDX,   '',      @I_vTDTTXPUR,   @I_vTDTTXPUR,   @I_vTXDTTPUR,   @I_vTXDTTPUR,   @CURRNIDX,    0      if (@@error <> 0)  begin  select @O_iErrorState = 406    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  break  end  break end  if (@O_iErrorState <> 0)  return (@O_iErrorState)  exec @iStatus = taPMTransactionTaxInsertPost  @I_vVENDORID,  @I_vVCHRNMBR,  @I_vDOCTYPE,  @I_vBACHNUMB,  @I_vTAXDTLID,  @I_vTAXAMNT,  @I_vPCTAXAMT,  @I_vFRTTXAMT,  @I_vMSCTXAMT,  @I_vTDTTXPUR,  @I_vTXDTTPUR,  @I_vACTINDX,  @I_vACTNUMST,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState= @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if ((@iStatus = 0) and (@iError <> 0)) begin  select @iStatus = @iError end  if ((@iStatus <> 0) or (@iCustomState <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 156    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vRequesterTrx = 0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE = 'Payables_Transaction',  @I_vINDEX1 = @I_vVCHRNMBR,  @I_vINDEX2 = @I_vBACHNUMB,  @I_vINDEX3 = '',  @I_vINDEX4 = '',  @I_vINDEX5 = '',  @I_vINDEX6 = '',  @I_vINDEX7 = '',  @I_vINDEX8 = '',  @I_vINDEX9 = '',  @I_vINDEX10 = '',  @I_vINDEX11 = '',  @I_vINDEX12 = '',  @I_vINDEX13 = '',  @I_vINDEX14 = '',  @I_vINDEX15 = '',  @I_vDelete = 1,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus = 0) and (@iError <> 0))  begin  select @iStatus = @iError  end  if ((@iStatus <> 0) or (@iCustomState <> 0))  begin  select @O_iErrorState = 2775   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPMTransactionTaxInsert] TO [DYNGRP]
GO
