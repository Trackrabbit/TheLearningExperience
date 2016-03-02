SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetPurchasePre]  @I_vASSETID char(15) output,   @I_vASSETIDSUF smallint output,   @I_vPURCHLINESEQ int output,   @I_vPURCHDESC char(40) output,  @I_vAcquisition_Cost numeric(19,5) output,  @I_vVENDORID char(15) output,  @I_vDOCNUMBR char(20) output,  @I_vDOCDATE datetime output,  @I_vTRXSORCE char(13) output,  @I_vORCTRNUM char(20) output,  @I_vPORDNMBR char(20) output,  @I_vCURNCYID char(15) output,  @I_vXCHGRATE   numeric(19,7) output,  @I_vRATETPID   char(15) output,  @I_vEXPNDATE   datetime output,  @I_vEXCHDATE   datetime output,  @I_vEXGTBDSC   char(30) output,  @I_vEXTBLSRC   char(50) output,  @I_vRATEEXPR   smallint output,   @I_vDYSTINCR   smallint output,  @I_vRATEVARC   numeric(19,7) output,  @I_vTRXDTDEF   smallint output,  @I_vRTCLCMTD   smallint output,  @I_vPRVDSLMT   smallint output,  @I_vDATELMTS   smallint output,  @I_vTIME1   datetime output,  @I_vUSERID char(15) output,  @I_vUpdateIfExists  tinyint output,    @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2   char(50) output,  @I_vUSRDEFND3   char(50) output,  @I_vUSRDEFND4   varchar(8000) output,  @I_vUSRDEFND5   varchar(8000) output,  @O_iErrorState   int output,   @oErrString   varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetPurchasePre] TO [DYNGRP]
GO
