SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPMDistributionBuild]  @I_vDOCTYPE smallint,   @I_vVCHNUMWK char(17),   @I_vVENDORID char(15),   @I_vACTINDX int,   @I_vDTSAMT numeric(19,5),  @I_vCTSAMT numeric(19,5),  @I_vTYPE int,    @I_vCURRNIDX int,   @I_vCURNCYID char(15),    @I_vDECPLCUR int,   @I_vPTDUSRID char(15) = '',  @I_vRATETPID char(15) = '',  @I_vXCHGRATE numeric(19,7)=0,  @I_vEXCHDATE datetime = '',  @I_vEXPNDATE datetime = '',  @I_vEXGTBLID char(15) = '',  @I_vTIME1 datetime = '',  @I_vORDTSAMT numeric(19,5),  @I_vORCTSAMT numeric(19,5),  @I_vRTCLCMTD smallint,    @O_iErrorState int = NULL output, @oErrString varchar(255) output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @iStatus int,  @iError int,  @O_oErrorState int  select @O_iErrorState = 0,  @iStatus = 0,  @O_oErrorState  = 0  if(  @I_vDOCTYPE is NULL or  @I_vVCHNUMWK is NULL or  @I_vVENDORID is NULL or  @I_vDTSAMT is NULL or  @I_vTYPE is NULL or  @I_vCTSAMT is NULL or  @I_vCURRNIDX is NULL or  @I_vCURNCYID is NULL or  @I_vDECPLCUR is NULL or    @I_vACTINDX is NULL or  @I_vPTDUSRID is NULL or  @I_vRATETPID is NULL or    @I_vXCHGRATE is NULL or    @I_vEXCHDATE is NULL or    @I_vEXPNDATE is NULL or    @I_vEXGTBLID is NULL or    @I_vTIME1 is NULL or    @I_vORDTSAMT is NULL or    @I_vORCTSAMT is NULL or    @I_vRTCLCMTD is NULL     ) begin  select @O_iErrorState = 650   return (@O_iErrorState) end  if (  @I_vDOCTYPE = 0 or   @I_vVCHNUMWK = ''  ) begin  select @O_iErrorState = 651   return (@O_iErrorState) end  select  @I_vVENDORID = UPPER(@I_vVENDORID)  exec @iStatus = taPMDistributionInsert  @I_vDOCTYPE = @I_vDOCTYPE,  @I_vVCHNUMWK = @I_vVCHNUMWK,  @I_vVENDORID = @I_vVENDORID,  @I_vACTINDX = @I_vACTINDX,  @I_vDEBITAMT = @I_vDTSAMT,  @I_vCRDTAMNT = @I_vCTSAMT,  @I_vDISTTYPE = @I_vTYPE,  @I_vCURRNIDX = @I_vCURRNIDX,  @I_vCURNCYID = @I_vCURNCYID,  @I_vDECPLCUR = @I_vDECPLCUR,    @I_vTRXSORCE =  '',  @I_vDistRef = 'eBusiness',  @I_vPTDUSRID = @I_vPTDUSRID,  @I_vRATETPID = @I_vRATETPID,    @I_vXCHGRATE = @I_vXCHGRATE,    @I_vEXCHDATE = @I_vEXCHDATE,    @I_vEXPNDATE = @I_vEXPNDATE,    @I_vEXGTBLID = @I_vEXGTBLID,    @I_vTIME1 = @I_vTIME1,     @I_vORDBTAMT = @I_vORDTSAMT,    @I_vORCRDAMT = @I_vORCTSAMT,    @I_vRTCLCMTD = @I_vRTCLCMTD,    @O_iErrorState = @O_iErrorState output,  @oErrString = @oErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0  select @iStatus = @iError if (@iStatus <> 0) or (@O_oErrorState <> 0) begin  select @O_iErrorState = 652   return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPMDistributionBuild] TO [DYNGRP]
GO