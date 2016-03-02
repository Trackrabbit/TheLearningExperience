SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetBookPre]  @I_vASSETID char(15) output,    @I_vASSETIDSUF smallint output,    @I_vBOOKID char(15) output,   @I_vPLINSERVDATE datetime output,   @I_vDATEADDED datetime output,   @I_vDEPRTODATE datetime output,   @I_vCOSTBASIS numeric(19,5) output,   @I_vSALVAGEVALUE numeric(19,5) output,   @I_vYTDDEPRAMT numeric(19,5) output,   @I_vLTDDEPRAMT numeric(19,5) output,   @I_vDEPRECIATIONMETHOD   smallint output,    @I_vAVERAGINGCONV smallint output,    @I_vSWITCHOVER smallint output,   @I_vORIGINALLIFEYEARS smallint output,   @I_vORIGINALLIFEDAYS smallint output,   @I_vAMORTIZATIONCODE smallint output,   @I_vAMORTIZATIONAMOUNT numeric(19,5) output,   @I_vInitial_Allowance_Perc  numeric(19,5) output,   @I_vSPECDEPRALLOW smallint output,   @I_vSPECDEPRALLOWPCT numeric(19,5) output,   @I_vLUXAUTOIND smallint output,   @I_vLUXVANTRUCK tinyint output,    @I_vLUXELAUTO tinyint output,    @I_vUSERID char(15) output,   @I_vUpdateIfExists   tinyint output,    @I_vUSRDEFND1     char(50) output,   @I_vUSRDEFND2    char(50) output,   @I_vUSRDEFND3    char(50) output,   @I_vUSRDEFND4    varchar(8000) output,   @I_vUSRDEFND5 varchar(8000) output,   @O_iErrorState int output,    @oErrString    varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetBookPre] TO [DYNGRP]
GO
