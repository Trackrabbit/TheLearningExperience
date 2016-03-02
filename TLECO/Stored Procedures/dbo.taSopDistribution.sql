SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopDistribution]  @I_vSOPTYPE smallint,   @I_vSOPNUMBE char(21),   @I_vSEQNUMBR int = 0,    @I_vDISTTYPE smallint,    @I_vDistRef char (30) = '',   @I_vACTINDX int = 0,   @I_vACTNUMST varchar(75)='',   @I_vDEBITAMT numeric(19,5)=0,   @I_vCRDTAMNT numeric(19,5)=0,   @I_vCUSTNMBR char(15),    @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',   @I_vUSRDEFND2 char(50) = '',   @I_vUSRDEFND3 char(50) = '',   @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState  int output,   @oErrString  varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @CURNCYID char(15),  @CURRNIDX int,  @DECPLCUR tinyint,  @DOCDATE datetime,  @iStatus int,  @iError int,  @iCustomState int,  @iCustomErrString varchar(255),  @O_oErrorState int,  @ACCTENTR tinyint  select  @DECPLCUR = 2,  @DOCDATE = '',  @CURRNIDX = 0,  @CURNCYID = '',  @iStatus = 0,  @O_iErrorState = 0  exec @iStatus = taSopDistributionPre  @I_vSOPTYPE output,  @I_vSOPNUMBE output,  @I_vSEQNUMBR output,  @I_vDISTTYPE output,  @I_vDistRef output,  @I_vACTINDX output,  @I_vACTNUMST output,  @I_vDEBITAMT output,  @I_vCRDTAMNT output,  @I_vCUSTNMBR output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 514    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vSOPTYPE is NULL or  @I_vSOPNUMBE is NULL or  @I_vSEQNUMBR is NULL or  @I_vDISTTYPE is NULL or  @I_vDistRef is NULL or  @I_vACTINDX is NULL or  @I_vDEBITAMT is NULL or  @I_vCUSTNMBR is NULL or  @I_vCRDTAMNT is NULL or  @I_vRequesterTrx is NULL) begin  select @O_iErrorState = 509    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (  @I_vSOPNUMBE = '' or  @I_vSOPTYPE = 0 or  @I_vCUSTNMBR = '' or  @I_vDISTTYPE = 0) begin  select @O_iErrorState = 510     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @I_vSOPNUMBE = UPPER(@I_vSOPNUMBE),  @I_vCUSTNMBR = UPPER(@I_vCUSTNMBR)  if ((@I_vSOPTYPE < 1) or (@I_vSOPTYPE > 6)) begin  select @O_iErrorState = 511     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if ((@I_vSOPTYPE in (3,6)) and (@I_vDISTTYPE not in (1,2,3,4,5,6,7,8,9,10,11,12,13,20,21))) begin  select @O_iErrorState = 6649     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ((@I_vSOPTYPE = 4) and (@I_vDISTTYPE not in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21))) begin  select @O_iErrorState = 512     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (not exists (select 1 from RM00101 (nolock) where CUSTNMBR = @I_vCUSTNMBR)) begin  select @O_iErrorState = 856     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @CURNCYID = isnull(CURNCYID,'') from RM00101 (nolock) where CUSTNMBR = @I_vCUSTNMBR if (@CURNCYID <> '') begin  select @CURRNIDX = isnull(CURRNIDX,0), @DECPLCUR = (DECPLCUR - 1) from DYNAMICS..MC40200 (nolock) where CURNCYID = @CURNCYID end else begin  select @CURNCYID = isnull(FUNLCURR,''), @CURRNIDX = isnull(FUNCRIDX,0) from MC40000 (nolock)  select @DECPLCUR = DECPLCUR - 1 from DYNAMICS..MC40200 (nolock) where CURNCYID = @CURNCYID end  if (@I_vSEQNUMBR = 0) begin  select @I_vSEQNUMBR = isnull(max(SEQNUMBR),0) + 16384 from SOP10102 a (nolock) where a.SOPTYPE = @I_vSOPTYPE and a.SOPNUMBE = @I_vSOPNUMBE end  if (@I_vACTNUMST <> '') begin  select @I_vACTINDX = 0  select @I_vACTINDX = ACTINDX from GL00105 (nolock) where ACTNUMST = @I_vACTNUMST  if (@I_vACTINDX = 0)  begin  select @O_iErrorState = 517     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end else if not exists(select 1 from GL00105 (nolock) where ACTINDX = @I_vACTINDX) begin  select @O_iErrorState = 518     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if exists (select 1 from SOP10102 (nolock) where SOPNUMBE = @I_vSOPNUMBE and SEQNUMBR = @I_vSEQNUMBR and SOPTYPE = @I_vSOPTYPE) begin  select @O_iErrorState = 513     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select @ACCTENTR = ACCTENTR from GL00100 (nolock) where ACTINDX = @I_vACTINDX  if (@ACCTENTR = 0) begin  select @O_iErrorState = 9565     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@O_iErrorState <> 0) begin  return (@O_iErrorState) end  if (@I_vRequesterTrx=0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE='Sales_Transaction',  @I_vINDEX1=@I_vSOPNUMBE,  @I_vINDEX2=@I_vSOPTYPE,  @I_vINDEX3='',  @I_vINDEX4='',  @I_vINDEX5='',  @I_vINDEX6='',  @I_vINDEX7='',  @I_vINDEX8='',  @I_vINDEX9='',  @I_vINDEX10='',  @I_vINDEX11='',  @I_vINDEX12='',  @I_vINDEX13='',  @I_vINDEX14='',  @I_vINDEX15='',  @I_vDelete = 0,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + @iCustomState  select @O_iErrorState = 2782    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  insert SOP10102  (  ACTINDX,  CRDTAMNT,  CURRNIDX,  DEBITAMT,  DistRef,  DISTTYPE,  ORCRDAMT,  ORDBTAMT,  POSTED,  SEQNUMBR,  SOPNUMBE,  SOPTYPE,  TRXSORCE  )  select  @I_vACTINDX,  @I_vCRDTAMNT,  @CURRNIDX,  @I_vDEBITAMT,  @I_vDistRef,  @I_vDISTTYPE,  @I_vCRDTAMNT,  @I_vDEBITAMT,  0,  @I_vSEQNUMBR,  @I_vSOPNUMBE,  @I_vSOPTYPE,  '' if (@@error <> 0) begin  select @O_iErrorState = 516    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if exists (select 1 from DTA00300 (nolock) where ACTINDX = @I_vACTINDX) begin  select @DOCDATE = DOCDATE from SOP10100 where SOPNUMBE = @I_vSOPNUMBE and SOPTYPE = @I_vSOPTYPE  exec @iStatus = taMdaInsert  @I_vDOCNUMBR = @I_vSOPNUMBE,  @I_vRMDTYPAL = @I_vSOPTYPE,  @I_vDTASERIES = 11,  @I_vACTINDX = @I_vACTINDX,  @I_vSEQNUMBR = @I_vSEQNUMBR,  @I_vDEBITAMT = @I_vDEBITAMT,  @I_vCRDTAMNT = @I_vCRDTAMNT,  @I_vTRXDATE = @DOCDATE,  @I_vDECPLCUR = @DECPLCUR,  @I_vUpdated = 0,  @O_iErrorState  = @O_iErrorState output,  @oErrString  = @oErrString output  if @O_iErrorState <> 0 or @@error <> 0 or @iStatus <> 0  begin  select @O_iErrorState = 1199    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  exec @iStatus = taSopDistributionPost  @I_vSOPTYPE,  @I_vSOPNUMBE,  @I_vSEQNUMBR,  @I_vDISTTYPE,  @I_vDistRef,  @I_vACTINDX,  @I_vACTNUMST,  @I_vDEBITAMT,  @I_vCRDTAMNT,  @I_vCUSTNMBR,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 515    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (@I_vRequesterTrx=0) begin  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE='Sales_Transaction',  @I_vINDEX1=@I_vSOPNUMBE,  @I_vINDEX2=@I_vSOPTYPE,  @I_vINDEX3='',  @I_vINDEX4='',  @I_vINDEX5='',  @I_vINDEX6='',  @I_vINDEX7='',  @I_vINDEX8='',  @I_vINDEX9='',  @I_vINDEX10='',  @I_vINDEX11='',  @I_vINDEX12='',  @I_vINDEX13='',  @I_vINDEX14='',  @I_vINDEX15='',  @I_vDelete = 1,  @O_iErrorState = @iCustomState output  select @iError = @@error  if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0))  begin  select @oErrString = rtrim(@oErrString) + ' ' + @iCustomState  select @O_iErrorState = 2781    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopDistribution] TO [DYNGRP]
GO
