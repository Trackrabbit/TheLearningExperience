SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRMTransactionTaxInsert] @I_vCUSTNMBR char(15),          @I_vDOCNUMBR char(20),    @I_vRMDTYPAL smallint,     @I_vBACHNUMB char(15),          @I_vTAXDTLID char(15),   @I_vTAXAMNT numeric(19,5),   @I_vSTAXAMNT numeric(19,5),   @I_vFRTTXAMT numeric(19,5) = 0,      @I_vMSCTXAMT numeric(19,5) = 0,      @I_vTAXDTSLS numeric(19,5),   @I_vSEQNUMBR int = 0,   @I_vACTINDX int = 0,   @I_vACTNUMST varchar(75) = '',  @I_vTDTTXSLS numeric(19,5) = null,  @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1  char(50) = '',   @I_vUSRDEFND2  char(50) = '',   @I_vUSRDEFND3  char(50) = '',   @I_vUSRDEFND4  varchar(8000) = '',  @I_vUSRDEFND5  varchar(8000) = '',  @O_iErrorState int output, @oErrString varchar(255) output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @CURNCYID char(15),  @CURRNIDX smallint,    @TRXSORCE char(13),  @iStatus int,  @iError int,  @iCustomState int,  @iCustomErrString varchar(255),  @iStatement int,  @iAddCodeErrState int,  @O_oErrorState int,  @ISMCREG tinyint,  @TXDTLBSE tinyint  select  @O_oErrorState = 0,  @TRXSORCE = '',  @CURNCYID = '',  @CURRNIDX = 0,  @O_iErrorState = 0,  @iStatement = 0,  @iStatus = 0,  @ISMCREG = 0,  @TXDTLBSE = 0  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taRMTransactionTaxInsertPre  @I_vCUSTNMBR output,  @I_vDOCNUMBR output,  @I_vRMDTYPAL output,  @I_vBACHNUMB output,  @I_vTAXDTLID output,  @I_vTAXAMNT output,  @I_vSTAXAMNT output,  @I_vFRTTXAMT output,  @I_vMSCTXAMT output,  @I_vTAXDTSLS output,  @I_vSEQNUMBR output,  @I_vACTINDX output,  @I_vACTNUMST output,  @I_vTDTTXSLS output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState= @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 291    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ( @I_vCUSTNMBR is NULL or  @I_vDOCNUMBR is NULL or  @I_vRMDTYPAL is NULL or  @I_vBACHNUMB is NULL or  @I_vTAXDTLID is NULL or  @I_vTAXAMNT is NULL or  @I_vSTAXAMNT is NULL or  @I_vFRTTXAMT is NULL or  @I_vMSCTXAMT is NULL or  @I_vTAXDTSLS is NULL or  @I_vSEQNUMBR is NULL or  @I_vACTINDX is NULL or  @I_vACTNUMST is NULL or  @I_vRequesterTrx is NULL) begin  select @O_iErrorState = 292    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vDOCNUMBR = '' and @I_vTAXDTLID = '') begin  select @O_iErrorState = 293    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select  @I_vCUSTNMBR = UPPER(@I_vCUSTNMBR),  @I_vDOCNUMBR = UPPER(@I_vDOCNUMBR),  @I_vBACHNUMB = UPPER(@I_vBACHNUMB),  @I_vTAXDTLID = UPPER(@I_vTAXDTLID)   if @I_vRMDTYPAL not in (1,3,4,5,6,7,8) begin  select @O_iErrorState = 294     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vBACHNUMB = '') begin  select @O_iErrorState = 259      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if not exists(select 1 from TX00201 (nolock) where TAXDTLID = @I_vTAXDTLID ) begin  select @O_iErrorState = 295     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vTAXDTLID <> '') begin  select @TXDTLBSE = TXDTLBSE from TX00201 (nolock) where TAXDTLID = @I_vTAXDTLID end  if (@I_vRequesterTrx < 0 or @I_vRequesterTrx > 1) begin  select @O_iErrorState = 3724     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vACTNUMST <> '') begin  select @I_vACTINDX = ACTINDX from GL00105 (nolock) where ACTNUMST = @I_vACTNUMST  select @I_vACTINDX = isnull(@I_vACTINDX,0)  if (@I_vACTINDX = 0)  begin  select @O_iErrorState = 716     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end else begin  if (@I_vACTINDX <> 0)  begin  select @I_vACTINDX = ACTINDX from GL00105 (nolock) where ACTINDX = @I_vACTINDX  select @I_vACTINDX = isnull(@I_vACTINDX,0)  if (@I_vACTINDX = 0)  begin  select @O_iErrorState = 455     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end  end  else  begin  select @I_vACTINDX = isnull(ACTINDX,0) from TX00201 (nolock) where TAXDTLID = @I_vTAXDTLID   if (@I_vACTINDX = 0)  begin  select @O_iErrorState = 296     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end end  if (@I_vSEQNUMBR = 0)  begin  select @I_vSEQNUMBR = max(SEQNUMBR)+16384 from RM10601 (nolock) where TAXDTLID = @I_vTAXDTLID and DOCNUMBR = @I_vDOCNUMBR and RMDTYPAL = @I_vRMDTYPAL  select @I_vSEQNUMBR = isnull(@I_vSEQNUMBR,16384) end  if exists (select 1 from RM10601 (nolock) where DOCNUMBR = @I_vDOCNUMBR and SEQNUMBR = @I_vSEQNUMBR and RMDTYPAL = @I_vRMDTYPAL and TRXSORCE = @TRXSORCE and TAXDTLID = @I_vTAXDTLID) begin  select @O_iErrorState = 262     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ( @I_vTDTTXSLS > @I_vTAXDTSLS )  begin  select @O_iErrorState = 5443     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ( @I_vTDTTXSLS is not null ) and ( @I_vTDTTXSLS < 0 ) begin  select @O_iErrorState = 5444     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end   select @CURNCYID = isnull(CURNCYID,'') from RM00101 (nolock) where CUSTNMBR  = @I_vCUSTNMBR if (@CURNCYID <> '') begin  select @CURRNIDX = isnull(CURRNIDX,0) from DYNAMICS..MC40200 (nolock) where CURNCYID = @CURNCYID end else begin  select @CURNCYID = isnull(FUNLCURR,''), @CURRNIDX = isnull(FUNCRIDX,0) from MC40000 (nolock) end  if (exists(select 1 from CM00100 (nolock) where CURNCYID <> '')) begin  select @ISMCREG = 1 end  if (@I_vRequesterTrx=0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE='Receivables_Transaction',  @I_vINDEX1=@I_vRMDTYPAL,  @I_vINDEX2=@I_vDOCNUMBR,  @I_vINDEX3='',  @I_vINDEX4='',  @I_vINDEX5='',  @I_vINDEX6='',  @I_vINDEX7='',  @I_vINDEX8='',  @I_vINDEX9='',  @I_vINDEX10='',  @I_vINDEX11='',  @I_vINDEX12='',  @I_vINDEX13='',  @I_vINDEX14='',  @I_vINDEX15='',  @I_vDelete = 0,  @O_iErrorState = @iCustomState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end  if (@iStatus <> 0) or (@iCustomState <> 0)  begin  select @O_iErrorState = 2778    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  if (@O_iErrorState = 0) begin  if not exists(select 1 from RM10601 (nolock) where RMDTYPAL = @I_vRMDTYPAL and DOCNUMBR = @I_vDOCNUMBR and   TRXSORCE = @TRXSORCE and TAXDTLID = @I_vTAXDTLID )   begin  insert RM10601  (  BACHNUMB,  RMDTYPAL,  DOCNUMBR,  CUSTNMBR,  TAXDTLID,  TRXSORCE,  ACTINDX,  BKOUTTAX,  TAXAMNT,  ORTAXAMT,  STAXAMNT,  ORSLSTAX,  FRTTXAMT,  ORFRTTAX,  MSCTXAMT,  ORMSCTAX,  TAXDTSLS,  ORTOTSLS,  TDTTXSLS,  ORTXSLS,  POSTED,  SEQNUMBR,  CURRNIDX  )  select  @I_vBACHNUMB,    @I_vRMDTYPAL,    @I_vDOCNUMBR,    @I_vCUSTNMBR,    @I_vTAXDTLID,    @TRXSORCE,    @I_vACTINDX,    case     when @TXDTLBSE = 1  then 1  else 0  end,   @I_vTAXAMNT,    @I_vTAXAMNT,    case        WHEN @I_vSTAXAMNT = 0   THEN @I_vTAXAMNT  ELSE @I_vSTAXAMNT  end,  case       WHEN @I_vSTAXAMNT = 0  THEN @I_vTAXAMNT  ELSE @I_vSTAXAMNT  end,  @I_vFRTTXAMT,    @I_vFRTTXAMT,    @I_vMSCTXAMT,    @I_vMSCTXAMT,    @I_vTAXDTSLS,    @I_vTAXDTSLS,    case         WHEN @I_vTDTTXSLS is null  THEN @I_vTAXDTSLS  ELSE @I_vTDTTXSLS  end,   case        WHEN @I_vTDTTXSLS is null  THEN @I_vTAXDTSLS  ELSE @I_vTDTTXSLS  end,   0,     @I_vSEQNUMBR,    case     when @ISMCREG = 1  then @CURRNIDX  else 0  end  if @@error <> 0  begin  select @O_iErrorState = 297    select @iStatement = 1  exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end  end  else  begin  select @O_iErrorState = 7148    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end  end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = taRMTransactionTaxInsertPost  @I_vCUSTNMBR,  @I_vDOCNUMBR,  @I_vRMDTYPAL,  @I_vBACHNUMB,  @I_vTAXDTLID,  @I_vTAXAMNT,  @I_vSTAXAMNT,  @I_vFRTTXAMT,  @I_vMSCTXAMT,  @I_vTAXDTSLS,  @I_vSEQNUMBR,  @I_vACTINDX,  @I_vACTNUMST,  @I_vTDTTXSLS,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState= @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 298    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vRequesterTrx=0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE='Receivables_Transaction',  @I_vINDEX1=@I_vRMDTYPAL,  @I_vINDEX2=@I_vDOCNUMBR,  @I_vINDEX3='',  @I_vINDEX4='',  @I_vINDEX5='',  @I_vINDEX6='',  @I_vINDEX7='',  @I_vINDEX8='',  @I_vINDEX9='',  @I_vINDEX10='',  @I_vINDEX11='',  @I_vINDEX12='',  @I_vINDEX13='',  @I_vINDEX14='',  @I_vINDEX15='',  @I_vDelete = 1,  @O_iErrorState = @iCustomState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end  if (@iStatus <> 0) or (@iCustomState <> 0)  begin  select @O_iErrorState = 2777   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taRMTransactionTaxInsert] TO [DYNGRP]
GO