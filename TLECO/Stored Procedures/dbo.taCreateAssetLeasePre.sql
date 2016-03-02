SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetLeasePre]  @I_vASSETID char(15) output,    @I_vASSETIDSUF smallint output,   @I_vLEASECOMPID char(15) output,   @I_vLEASETYPE smallint output,   @I_vLEASECONTRACTID char(15) output,   @I_vLEASEPAYMENT numeric(19,5) output,   @I_vLEASEINTRATE numeric(19,5) output,   @I_vLEASEENDDATE datetime output,   @I_vUSRDEFND1    char(50) output,       @I_vUSRDEFND2   char(50) output,       @I_vUSRDEFND3   char(50) output,       @I_vUSRDEFND4   varchar(8000) output,       @I_vUSRDEFND5 varchar(8000) output,       @O_iErrorState int output,    @oErrString   varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetLeasePre] TO [DYNGRP]
GO
