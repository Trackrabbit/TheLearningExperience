SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateBookClassPost]  @I_vBOOKID char(15),    @I_vASSETCLASSID char(15),   @I_vDEPRECIATIONMETHOD smallint,    @I_vAVERAGINGCONV smallint,    @I_vAMORTIZATIONCODE smallint,   @I_vAMORTIZATIONAMOUNT  numeric(19,5),   @I_vSWITCHOVER smallint,   @I_vORIGINALLIFEYEARS smallint,   @I_vORIGINALLIFEDAYS smallint,   @I_vInitial_Allowance_Perc smallint,   @I_vSPECDEPRALLOW smallint,   @I_vSPECDEPRALLOWPCT smallint,   @I_vSALVAGEPCT smallint,   @I_vSALVAGEEST tinyint,   @I_vLUXAUTOIND smallint,   @I_vTEFRAFLAG smallint,   @I_vUSRDEFND1    char(50),       @I_vUSRDEFND2   char(50),       @I_vUSRDEFND3   char(50),       @I_vUSRDEFND4   varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString   varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateBookClassPost] TO [DYNGRP]
GO
