SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPMManualCheckPre]   @I_vBACHNUMB char(15) output,  @I_vPMNTNMBR char(20) output,  @I_vVENDORID char(15) output,  @I_vDOCNUMBR char(20) output,  @I_vDOCAMNT  numeric(19,5) output,  @I_vDOCDATE  datetime output,  @I_vPSTGDATE datetime output,  @I_vPYENTTYP smallint output,  @I_vCARDNAME char(15) output,  @I_vCURNCYID char(15) output,  @I_vCHEKBKID char(15) output,  @I_vTRXDSCRN char(30) output,  @I_vXCHGRATE numeric(19,7) output,  @I_vRATETPID char(15) output,  @I_vEXPNDATE datetime output,  @I_vEXCHDATE datetime output,  @I_vEXGTBDSC char(30) output,  @I_vEXTBLSRC char(50) output,  @I_vRATEEXPR smallint output,  @I_vDYSTINCR smallint output,  @I_vRATEVARC numeric(19,7) output,  @I_vTRXDTDEF smallint output,  @I_vRTCLCMTD smallint output,  @I_vPRVDSLMT smallint output,  @I_vDATELMTS smallint output,  @I_vTIME1 datetime output,  @I_vMDFUSRID char(15) output,  @I_vPTDUSRID char(15) output,  @I_vBatchCHEKBKID char(15) output,  @I_vCREATEDIST smallint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,       @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPMManualCheckPre] TO [DYNGRP]
GO
