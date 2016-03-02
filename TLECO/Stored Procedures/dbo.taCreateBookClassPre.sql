SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateBookClassPre]  @I_vBOOKID char(15) output,   @I_vASSETCLASSID char(15) output,  @I_vDEPRECIATIONMETHOD smallint output,   @I_vAVERAGINGCONV smallint output,   @I_vAMORTIZATIONCODE smallint output,  @I_vAMORTIZATIONAMOUNT  numeric(19,5) output,  @I_vSWITCHOVER smallint output,  @I_vORIGINALLIFEYEARS smallint output,  @I_vORIGINALLIFEDAYS smallint output,  @I_vInitial_Allowance_Perc smallint output,  @I_vSPECDEPRALLOW smallint output,  @I_vSPECDEPRALLOWPCT smallint output,  @I_vSALVAGEPCT numeric(19,5) output,  @I_vSALVAGEEST tinyint output,   @I_vLUXAUTOIND smallint output,  @I_vTEFRAFLAG smallint output,  @I_vUSRDEFND1    char(50) output,  @I_vUSRDEFND2   char(50) output,  @I_vUSRDEFND3   char(50) output,  @I_vUSRDEFND4   varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString   varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return(@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateBookClassPre] TO [DYNGRP]
GO
