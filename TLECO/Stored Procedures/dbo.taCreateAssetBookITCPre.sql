SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetBookITCPre]  @I_vASSETID char(15) output,   @I_vASSETIDSUF smallint output,   @I_vBOOKID char(15) output,  @I_vORGCOSTBASIS numeric(19,5) output,  @I_vSECT179EXPDED numeric(19,5) output,  @I_vITCCODEREDAMT numeric(19,5) output,  @I_vMISCCOSTADJ numeric(19,5) output,  @I_vTEFRAFLAG smallint output,  @I_vITCAMTTAKEN numeric(19,5) output,  @I_vITCAMTALLOWED numeric(19,5) output,  @I_vITCRECAPTURE numeric(19,5) output,  @I_vUSERWHOENTERED char(15) output,  @I_vUpdateIfExists   tinyint output,   @I_vUSRDEFND1     char(50) output,  @I_vUSRDEFND2    char(50) output,  @I_vUSRDEFND3    char(50) output,  @I_vUSRDEFND4    varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString    varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetBookITCPre] TO [DYNGRP]
GO
