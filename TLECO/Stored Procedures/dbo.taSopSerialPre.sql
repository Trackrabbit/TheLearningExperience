SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopSerialPre]  @I_vSOPTYPE smallint output,   @I_vSOPNUMBE char(21) output,   @I_vLNITMSEQ int output,   @I_vCMPNTSEQ int output,   @I_vQTYTYPE smallint output,    @I_vITEMNMBR char(30) output,   @I_vLOCNCODE char(10) output,   @I_vQUANTITY numeric(19,5)output,   @I_vBIN char(15) output,   @I_vCREATEBIN tinyint output,   @I_vSERLNMBR char(20)output,   @I_vAUTOCREATESERIAL int output,  @I_vDOCID char(15) output,   @I_vDROPSHIP smallint output,   @I_vQTYFULFI numeric(19,5) output,   @I_vALLOCATE smallint output,   @I_vUpdateIfExists smallint output,  @I_vSERLNMBRToReplace char(20)output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopSerialPre] TO [DYNGRP]
GO
