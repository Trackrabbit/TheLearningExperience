SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateTerritory] @I_vSALSTERR  char(15),   @I_vSLTERDSC  char(30)='',   @I_vSLPRSNID  char(15)='',   @I_vSTMGRFNM  char(15)='',   @I_vSTMGRMNM  char(15)='',             @I_vSTMGRLNM  char(20)='',   @I_vCOUNTRY  char(60)='',   @I_vCOSTTODT  numeric(19,5)=0,  @I_vTTLCOMTD  numeric(19,5)=0,  @I_vTTLCOMLY  numeric(19,5)=0,  @I_vNCOMSLYR  numeric(19,5)=0,  @I_vCOMSLLYR  numeric(19,5)=0,  @I_vCSTLSTYR  numeric(19,5)=0,  @I_vCOMSLTDT  numeric(19,5)=0,  @I_vNCOMSLTD  numeric(19,5)=0,  @I_vKPCALHST  tinyint=1,   @I_vKPERHIST  tinyint=1,               @I_vMODIFDT datetime='',   @I_vCREATDDT datetime='',   @I_vUSRDEFND1  char(50) = '',       @I_vUSRDEFND2  char(50) = '',       @I_vUSRDEFND3  char(50) = '',       @I_vUSRDEFND4  varchar(8000) = '',  @I_vUSRDEFND5  varchar(8000) = '',  @O_iErrorState int output,   @oErrString  varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @iAddCodeErrState int,    @iStatus int,      @iGetNextNoteIdxErrState int,   @CMPANYID smallint,  @NOTEINDX decimal(19,5),  @iCustomState int,  @O_oErrorState int,  @iCustomErrString varchar(255),  @iError int     select  @iStatus = 0,  @iAddCodeErrState =0,  @CMPANYID = 0,  @NOTEINDX = 0,  @iCustomState = 0,  @O_oErrorState = 0,  @O_iErrorState = 0    if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateTerritoryPre  @I_vSALSTERR  output,  @I_vSLTERDSC  output,  @I_vSLPRSNID  output,  @I_vSTMGRFNM  output,  @I_vSTMGRMNM  output,  @I_vSTMGRLNM  output,  @I_vCOUNTRY  output,  @I_vCOSTTODT  output,  @I_vTTLCOMTD  output,  @I_vTTLCOMLY  output,  @I_vNCOMSLYR  output,  @I_vCOMSLLYR  output,  @I_vCSTLSTYR  output,  @I_vCOMSLTDT  output,  @I_vNCOMSLTD  output,  @I_vKPCALHST  output,  @I_vKPERHIST  output,  @I_vMODIFDT output,  @I_vCREATDDT output,  @I_vUSRDEFND1  output,  @I_vUSRDEFND2  output,  @I_vUSRDEFND3  output,  @I_vUSRDEFND4  output,  @I_vUSRDEFND5  output,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 1515    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if ( @I_vSALSTERR is null or  @I_vSLTERDSC is null or  @I_vSLPRSNID is null or  @I_vSTMGRFNM is null or  @I_vSTMGRMNM is null or  @I_vSTMGRLNM is null or  @I_vCOUNTRY is null or  @I_vCOSTTODT is null or  @I_vTTLCOMTD is null or  @I_vTTLCOMLY is null or  @I_vNCOMSLYR is null or  @I_vCOMSLLYR is null or  @I_vCSTLSTYR is null or  @I_vCOMSLTDT is null or  @I_vNCOMSLTD is null or  @I_vKPCALHST is null or  @I_vKPERHIST is null or   @I_vMODIFDT is null or  @I_vCREATDDT is null ) begin  select @O_iErrorState = 5000    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  select  @I_vSALSTERR = UPPER(@I_vSALSTERR),  @I_vSLPRSNID = UPPER(@I_vSLPRSNID)   select @CMPANYID = CMPANYID from DYNAMICS..SY01500 (nolock) where INTERID = db_name()  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @CMPANYID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @NOTEINDX output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) begin  if (@iGetNextNoteIdxErrState <> 0)  begin  exec @iStatus = taUpdateString  @iGetNextNoteIdxErrState,   @oErrString,  @oErrString output,  @O_oErrorState output  end  select @O_iErrorState = 3475   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vSALSTERR = '') begin  select @O_iErrorState = 5001    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vKPCALHST < 0 or @I_vKPCALHST > 1) begin  select @O_iErrorState = 1632     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vKPERHIST < 0 or @I_vKPERHIST > 1) begin  select @O_iErrorState = 1633     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@O_iErrorState = 0) begin  if (not exists (select 1 from RM00303 (nolock) where SALSTERR = @I_vSALSTERR))  begin  insert RM00303  (  SALSTERR,  SLTERDSC,  INACTIVE,  SLPRSNID,  STMGRFNM,  STMGRMNM,  STMGRLNM,  COUNTRY,  COSTTODT,  TTLCOMTD,  TTLCOMLY,  NCOMSLYR,  COMSLLYR,  CSTLSTYR,  COMSLTDT,  NCOMSLTD,  KPCALHST,  KPERHIST,  NOTEINDX,  MODIFDT,  CREATDDT  )  select  @I_vSALSTERR,    @I_vSLTERDSC,    0,     @I_vSLPRSNID,    @I_vSTMGRFNM,    @I_vSTMGRMNM,    @I_vSTMGRLNM,    @I_vCOUNTRY,    @I_vCOSTTODT,    @I_vTTLCOMTD,    @I_vTTLCOMLY,    @I_vNCOMSLYR,    @I_vCOMSLLYR,    @I_vCSTLSTYR,    @I_vCOMSLTDT,    @I_vNCOMSLTD,    @I_vKPCALHST,    @I_vKPERHIST,    @NOTEINDX,    case      WHEN @I_vMODIFDT = ''  THEN convert(varchar(12),getdate())  ELSE @I_vMODIFDT  end,  case     WHEN @I_vCREATDDT = ''  THEN convert(varchar(12),getdate())  ELSE @I_vCREATDDT  end  end end  if (@@error <> 0) begin  select @O_iErrorState = 5003    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState) end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = taCreateTerritoryPost  @I_vSALSTERR,  @I_vSLTERDSC,  @I_vSLPRSNID,  @I_vSTMGRFNM,  @I_vSTMGRMNM,  @I_vSTMGRLNM,  @I_vCOUNTRY,  @I_vCOSTTODT,  @I_vTTLCOMTD,  @I_vTTLCOMLY,  @I_vNCOMSLYR,  @I_vCOMSLLYR,  @I_vCSTLSTYR,  @I_vCOMSLTDT,  @I_vNCOMSLTD,  @I_vKPCALHST,  @I_vKPERHIST,  @I_vMODIFDT,  @I_vCREATDDT,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @iCustomErrString output select @iError = @@error  if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iCustomErrString))  select @O_iErrorState = 1516    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateTerritory] TO [DYNGRP]
GO
