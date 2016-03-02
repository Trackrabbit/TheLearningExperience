SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAccountGroupPre]  @I_vACCTGRPID char(15) output,    @I_vACCTGRPDESC  char(30) output,   @I_vDEPREXPACCT char(75) output,   @I_vDEPRRESACCT char(75) output,   @I_vPRIORYRDEPRACCT char(75) output,   @I_vASSETCOSTACCT char(75) output,   @I_vPROCEEDSACCT char(75) output,   @I_vRECOGGAINLOSSACCT char(75) output,   @I_vNONRECOGGAINLOSSACCT char(75) output,   @I_vCLEARINGACCT char(75) output,   @I_vLASTMNTDTIME datetime output,   @I_vLASTMNTDUSERID char(15) output,   @I_vUSRDEFND1    char(50) output,       @I_vUSRDEFND2   char(50) output,       @I_vUSRDEFND3   char(50) output,       @I_vUSRDEFND4   varchar(8000) output,       @I_vUSRDEFND5 varchar(8000) output,       @O_iErrorState int output,    @oErrString   varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAccountGroupPre] TO [DYNGRP]
GO
