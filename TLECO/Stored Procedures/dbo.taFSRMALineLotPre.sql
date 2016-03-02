SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSRMALineLotPre]  @I_vReturn_Record_Type smallint output,  @I_vRETDOCID char(15) output,   @I_vLNSEQNBR numeric(19,5) output,  @I_vQTYTYPE smallint output,   @I_vSERLTQTY numeric(19,5) output,  @I_vITEMNMBR char(31) output,   @I_vLOTNUMBR char(21) output,    @I_vLOCNCODE char(11) output,   @I_vSLTSQNUM integer output,   @I_vBIN char(15) output,   @I_vDATERECD datetime output,   @I_vDTSEQNUM numeric(19,5) output,  @I_vENTDTE datetime output,   @I_vReplaceItem smallint output,  @I_vAUTOCREATELOT smallint output,  @I_vMFGDATE datetime output,   @I_vEXPNDATE datetime output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,    @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSRMALineLotPre] TO [DYNGRP]
GO
