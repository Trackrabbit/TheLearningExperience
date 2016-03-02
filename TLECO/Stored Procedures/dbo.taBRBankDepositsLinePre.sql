SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taBRBankDepositsLinePre]   @I_vdepositnumber char(20) output,  @I_vRCPTNMBR char(20) output,   @I_vCHEKBKID char(15) output,   @I_vRcpType smallint output,   @I_vCMRECNUM numeric(19,5) output,  @I_vDEPDATE datetime output,   @I_vBANKNAME char(30) output,   @I_vBNKBRNCH char(20) output,   @I_vCURRENCYTOTAL int output,   @I_vCOINTOTAL numeric(19,5) output,  @I_vXCHGRATE numeric(19,7) output,  @I_vRATETPID char(15) output,   @I_vEXPNDATE datetime output,   @I_vEXCHDATE datetime output,   @I_vEXGTBDSC char(30) output,   @I_vEXTBLSRC char(50) output,   @I_vRATEEXPR smallint output,     @I_vDYSTINCR smallint output,   @I_vRATEVARC numeric(19,7) output,  @I_vTRXDTDEF smallint output,   @I_vRTCLCMTD smallint output,   @I_vPRVDSLMT smallint output,   @I_vDATELMTS smallint output,   @I_vTIME1 datetime output,   @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taBRBankDepositsLinePre] TO [DYNGRP]
GO
