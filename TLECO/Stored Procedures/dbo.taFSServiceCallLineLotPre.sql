SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSServiceCallLineLotPre]  @I_vSRVRECTYPE  smallint output,  @I_vCALLNBR char(11) output,   @I_vEQPLINE int = 1 output,   @I_vLINITMTYP char(3) output,   @I_vLNITMSEQ int output,   @I_vQTYTYPE smallint output,   @I_vITEMNMBR char(31) output,   @I_vSERLTNUM char(21) output,   @I_vSLTSQNUM bigint output,   @I_vSERLTQTY numeric(19,5) output,  @I_vSOLD tinyint output,   @I_vLOCNCODE char(11) output,   @I_vDTSEQNUM numeric(19,5) output,  @I_vDATERECD datetime output,   @I_vBIN char(15) output,   @I_vENTDTE datetime output,   @I_vAUTOCREATELOT smallint output,  @I_vMFGDATE datetime output,   @I_vEXPNDATE datetime output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int = NULL output,  @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSServiceCallLineLotPre] TO [DYNGRP]
GO
