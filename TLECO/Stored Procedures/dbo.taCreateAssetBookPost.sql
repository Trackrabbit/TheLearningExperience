SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetBookPost]  @I_vASSETID char(15),    @I_vASSETIDSUF smallint,    @I_vBOOKID char(15),   @I_vPLINSERVDATE datetime,   @I_vDATEADDED datetime,   @I_vDEPRTODATE datetime,   @I_vCOSTBASIS numeric(19,5),   @I_vSALVAGEVALUE numeric(19,5),   @I_vYTDDEPRAMT numeric(19,5),   @I_vLTDDEPRAMT numeric(19,5),   @I_vDEPRECIATIONMETHOD   smallint,    @I_vAVERAGINGCONV smallint,    @I_vSWITCHOVER smallint,   @I_vORIGINALLIFEYEARS smallint,   @I_vORIGINALLIFEDAYS smallint,   @I_vAMORTIZATIONCODE smallint,   @I_vAMORTIZATIONAMOUNT numeric(19,5),   @I_vInitial_Allowance_Perc  numeric(19,5),   @I_vSPECDEPRALLOW smallint,   @I_vSPECDEPRALLOWPCT numeric(19,5),   @I_vLUXAUTOIND smallint,   @I_vLUXVANTRUCK tinyint,   @I_vLUXELAUTO tinyint,   @I_vUSERID char(15),   @I_vUpdateIfExists   tinyint,   @I_vUSRDEFND1     char(50),   @I_vUSRDEFND2    char(50),   @I_vUSRDEFND3    char(50),   @I_vUSRDEFND4    varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString    varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetBookPost] TO [DYNGRP]
GO
