SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateApplicantSkillsPost]  @I_vLLASTNAME_I char(21),     @I_vFFIRSTNAME_I char(15),     @I_vSKILL char(31),       @I_vAPPLICANTNUMBER_I numeric(19,5),   @I_vCOMMENT20_I char(21),     @I_vPOINTS_I int,       @I_vUpdateIfExists tinyint,     @I_vRequesterTrx smallint ,     @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2 char(50),         @I_vUSRDEFND3 char(50),         @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,     @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateApplicantSkillsPost] TO [DYNGRP]
GO
