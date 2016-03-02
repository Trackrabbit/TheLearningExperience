SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSServiceCallCodesEquipmentPre]  @I_vSRVRECTYPE  smallint output,  @I_vCALLNBR char(11) output,   @I_vITEMNMBR char(31) output,   @I_vSERLNMBR char(21) output,   @I_vCUSTNMBR char(15) output,   @I_vPRDLINE char(21) output,   @I_vPROBCDE char(11) output,   @I_vCAUSECDE char(11) output,   @I_vRPRCODE char(11) output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int = NULL output, @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSServiceCallCodesEquipmentPre] TO [DYNGRP]
GO
