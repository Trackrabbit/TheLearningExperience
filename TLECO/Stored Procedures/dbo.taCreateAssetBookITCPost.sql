SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAssetBookITCPost]  @I_vASSETID char(15),    @I_vASSETIDSUF smallint,    @I_vBOOKID char(15),   @I_vORGCOSTBASIS numeric(19,5),   @I_vSECT179EXPDED numeric(19,5),   @I_vITCCODEREDAMT numeric(19,5),   @I_vMISCCOSTADJ numeric(19,5),   @I_vTEFRAFLAG smallint,   @I_vITCAMTTAKEN numeric(19,5),   @I_vITCAMTALLOWED numeric(19,5),   @I_vITCRECAPTURE numeric(19,5),   @I_vUSERWHOENTERED char(15),   @I_vUpdateIfExists   tinyint,   @I_vUSRDEFND1     char(50),   @I_vUSRDEFND2    char(50),   @I_vUSRDEFND3    char(50),   @I_vUSRDEFND4    varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString    varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAssetBookITCPost] TO [DYNGRP]
GO
