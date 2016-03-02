SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopDistributionInsert]  @I_vPOPTYPE  smallint,    @I_vPOPRCTNM char(17),     @I_vACTINDX  int, @I_vDEBITAMT numeric(19,5), @I_vCRDTAMNT numeric(19,5), @I_vDISTTYPE smallint, @I_vCURRNIDX smallint, @I_vTRXSORCE char(13), @I_vDistRef  char(30), @I_vVENDORID char(15),    @I_vORDTAMT  numeric(19,5), @I_vORCTAMT  numeric(19,5), @I_vCURNCYID char(15),    @I_vRATETPID char(15),    @I_vEXGTBLID char(15),    @I_vXCHGRATE numeric(19,7),   @I_vEXCHDATE datetime,    @I_vTIME1    datetime,    @I_vRTCLCMTD smallint,    @O_iErrorState int = NULL output, @oErrString  varchar(255) output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @CURNCYID char(15),  @DECPLCUR int,  @SEQNUMBR int,  @DOCDATE datetime,  @DTAREF char(25),  @iStatus int,  @O_oErrorState int,  @MCINSTALLED smallint  select  @SEQNUMBR = 0,  @DECPLCUR = 2,  @DOCDATE  = '',  @DTAREF   = '',  @iStatus  = 0,  @O_iErrorState = 0,  @MCINSTALLED = 1  if (  @I_vPOPTYPE  is NULL or  @I_vPOPRCTNM is NULL or  @I_vACTINDX  is NULL or  @I_vDEBITAMT is NULL or  @I_vCRDTAMNT is NULL or  @I_vDISTTYPE is NULL or  @I_vCURRNIDX is NULL or  @I_vTRXSORCE is NULL or  @I_vVENDORID is NULL or  @I_vORDTAMT  is NULL or  @I_vORCTAMT  is NULL or  @I_vCURNCYID is NULL or  @I_vRATETPID is NULL or  @I_vEXGTBLID is NULL or  @I_vXCHGRATE is NULL or  @I_vEXCHDATE is NULL or  @I_vTIME1    is NULL or  @I_vRTCLCMTD is NULL) begin  select @O_iErrorState = 7301   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if(  @I_vPOPTYPE = 0 or  @I_vPOPRCTNM = '' or  @I_vDISTTYPE = 0) begin  select @O_iErrorState = 7302   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  select @I_vPOPRCTNM = UPPER(@I_vPOPRCTNM),  @I_vTRXSORCE = UPPER(@I_vTRXSORCE),  @I_vVENDORID = UPPER(@I_vVENDORID),  @I_vCURNCYID = UPPER(@I_vCURNCYID)  if ( (not exists(select top 1 CURNCYID from IV00105 (nolock) where CURNCYID <> '')) and  (not exists(select top 1 CURNCYID from CM00100 (nolock) where CURNCYID <> ''))) begin  select @MCINSTALLED = 0 end  select @SEQNUMBR = (isnull(max(SEQNUMBR),0) + 16384) from POP10390 (nolock) where POPRCTNM = @I_vPOPRCTNM insert POP10390  (  POPRCTNM,  SEQNUMBR,  ACTINDX,  CRDTAMNT,  ORCRDAMT,  DEBITAMT,  ORDBTAMT,  DistRef,  DISTTYPE,  TRXSORCE,  CURRNIDX,  XCHGRATE,  VENDORID,  CURNCYID,  RATETPID,  EXGTBLID,  EXCHDATE,  TIME1,  RATECALC,  DENXRATE,  MCTRXSTT  )  select  @I_vPOPRCTNM,    @SEQNUMBR,    @I_vACTINDX,    @I_vCRDTAMNT,    @I_vORCTAMT,    @I_vDEBITAMT,    @I_vORDTAMT,    @I_vDistRef,    @I_vDISTTYPE,    @I_vTRXSORCE,    case     when @MCINSTALLED = 1  then @I_vCURRNIDX  else 0  end,  @I_vXCHGRATE,    @I_vVENDORID,    case     when @MCINSTALLED = 1  then @I_vCURNCYID  else ''  end,  @I_vRATETPID,    @I_vEXGTBLID,    @I_vEXCHDATE,    @I_vTIME1,    @I_vRTCLCMTD,    0,     0    if (@@error <> 0) begin  select @O_iErrorState = 7303   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if exists (select 1 from DTA00300 (nolock) where ACTINDX = @I_vACTINDX) begin  select @DECPLCUR = DECPLCUR - 1 from DYNAMICS..MC40200 (nolock) where CURNCYID = @I_vCURNCYID  select @DOCDATE = receiptdate from POP10300 (nolock) where POPRCTNM = @I_vPOPRCTNM  exec @iStatus = taMdaInsert  @I_vDOCNUMBR = @I_vPOPRCTNM,  @I_vRMDTYPAL = 0,  @I_vDTASERIES = 12,  @I_vACTINDX = @I_vACTINDX,  @I_vSEQNUMBR = @SEQNUMBR,  @I_vDEBITAMT = @I_vDEBITAMT,  @I_vCRDTAMNT = @I_vCRDTAMNT,  @I_vTRXDATE = @DOCDATE,  @I_vDECPLCUR = @DECPLCUR,  @I_vUpdated = 0,  @O_iErrorState  = @O_iErrorState output,  @oErrString  = @oErrString output  if @O_iErrorState <> 0 or @@error <> 0 or @iStatus <> 0  begin  select @O_iErrorState = 1198   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState)  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopDistributionInsert] TO [DYNGRP]
GO