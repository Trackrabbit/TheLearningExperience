SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPMManualCheckPost]   @I_vBACHNUMB char(15) ,  @I_vPMNTNMBR char(20) ,  @I_vVENDORID char(15) ,  @I_vDOCNUMBR char(20) ,  @I_vDOCAMNT  numeric(19,5) ,  @I_vDOCDATE  datetime ,  @I_vPSTGDATE datetime ,  @I_vPYENTTYP smallint ,  @I_vCARDNAME char(15) ,  @I_vCURNCYID char(15) ,  @I_vCHEKBKID char(15) ,  @I_vTRXDSCRN char(30) ,  @I_vXCHGRATE numeric(19,7) ,  @I_vRATETPID char(15) ,  @I_vEXPNDATE datetime ,  @I_vEXCHDATE datetime ,  @I_vEXGTBDSC char(30) ,  @I_vEXTBLSRC char(50) ,  @I_vRATEEXPR smallint ,  @I_vDYSTINCR smallint ,  @I_vRATEVARC numeric(19,7) ,  @I_vTRXDTDEF smallint ,  @I_vRTCLCMTD smallint ,  @I_vPRVDSLMT smallint ,  @I_vDATELMTS smallint ,  @I_vTIME1 datetime ,  @I_vMDFUSRID char(15) ,  @I_vPTDUSRID char(15) ,  @I_vBatchCHEKBKID char(15) ,  @I_vCREATEDIST smallint ,  @I_vRequesterTrx smallint,  @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2 char(50),      @I_vUSRDEFND3 char(50),      @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int output,  @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPMManualCheckPost] TO [DYNGRP]
GO
