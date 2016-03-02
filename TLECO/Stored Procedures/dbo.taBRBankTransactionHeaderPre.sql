SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taBRBankTransactionHeaderPre]   @I_vOption smallint output,   @I_vCMTrxType smallint output,   @I_vTRXDATE datetime output,   @I_vCHEKBKID char(15) output,   @I_vCMTrxNum char(20) output,   @I_vpaidtorcvdfrom char(30) output,  @I_vDSCRIPTN char(30) output,   @I_vTRXAMNT numeric(19,5) output,  @I_vUSERID char(15) output,   @I_vGLPOSTDT datetime output,   @I_vDistRef char(30) output,   @I_vBACHNUMB char(15) output,   @I_vXCHGRATE numeric(19,7) output,  @I_vRATETPID char(15) output,   @I_vEXPNDATE datetime output,   @I_vEXCHDATE datetime output,   @I_vEXGTBDSC char(30) output,   @I_vEXTBLSRC char(50) output,   @I_vRATEEXPR smallint output,    @I_vDYSTINCR smallint output,   @I_vRATEVARC numeric(19,7) output,  @I_vTRXDTDEF smallint output,   @I_vRTCLCMTD smallint output,   @I_vPRVDSLMT smallint output,   @I_vDATELMTS smallint output,   @I_vTIME1 datetime output,   @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taBRBankTransactionHeaderPre] TO [DYNGRP]
GO
