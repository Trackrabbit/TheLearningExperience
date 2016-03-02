SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetInsurancePre]  @I_vASSETID char(15) output,    @I_vASSETIDSUF smallint output,   @I_vINSURANCECLASS char(15) output,   @I_vINSURANCEYEAR smallint output,   @I_vINSURANCEVALUE numeric(19,5) output,   @I_vREPLACEMENTCOST numeric(19,5) output,   @I_vREPROCOST numeric(19,5) output,   @I_vDEPRREPROCOST numeric(19,5) output,   @I_vEXCLUSIONAMT numeric(19,5) output,   @I_vEXCLUSIONTYPE char(15) output,   @I_vUSRDEFND1    char(50) output,       @I_vUSRDEFND2   char(50) output,       @I_vUSRDEFND3   char(50) output,       @I_vUSRDEFND4   varchar(8000) output,       @I_vUSRDEFND5 varchar(8000) output,       @O_iErrorState int output,    @oErrString   varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetInsurancePre] TO [DYNGRP]
GO
