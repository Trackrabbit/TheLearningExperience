SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateItemVendorsPre]  @I_vITEMNMBR char(30) output,   @I_vVENDORID char(15) output,  @I_vVNDITNUM char(30) output,  @I_vQTYRQSTN numeric(19,5) output,  @I_vAVRGLDTM int output,   @I_vNORCTITM smallint output,  @I_vMINORQTY numeric(19,5) output,  @I_vMAXORDQTY numeric(19,5) output,  @I_vECORDQTY numeric(19,5) output,  @I_vVNDITDSC char(100) output,  @I_vLast_Originating_Cost numeric(19,5) output,  @I_vLast_Currency_ID char(15) output,  @I_vFREEONBOARD smallint output,   @I_vPRCHSUOM char(8) output,   @I_vPLANNINGLEADTIME smallint output,  @I_vORDERMULTIPLE numeric(19,5) output,  @I_vMNFCTRITMNMBR char(30) output,  @I_vUpdateIfExists   tinyint output,   @I_vRequesterTrx smallint output,  @I_vUSRDEFND1     char(50) output,  @I_vUSRDEFND2    char(50) output,  @I_vUSRDEFND3    char(50) output,  @I_vUSRDEFND4    varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString    varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateItemVendorsPre] TO [DYNGRP]
GO
