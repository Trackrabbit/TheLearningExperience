SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateAccountGroupPost]  @I_vACCTGRPID char(15),    @I_vACCTGRPDESC  char(30),   @I_vDEPREXPACCT char(75),   @I_vDEPRRESACCT char(75),   @I_vPRIORYRDEPRACCT char(75),   @I_vASSETCOSTACCT char(75),   @I_vPROCEEDSACCT char(75),   @I_vRECOGGAINLOSSACCT char(75),   @I_vNONRECOGGAINLOSSACCT char(75),   @I_vCLEARINGACCT char(75),   @I_vLASTMNTDDATE datetime,   @I_vLASTMNTDUSERID char(15),   @I_vUSRDEFND1    char(50),       @I_vUSRDEFND2   char(50),       @I_vUSRDEFND3   char(50),       @I_vUSRDEFND4   varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString   varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateAccountGroupPost] TO [DYNGRP]
GO
