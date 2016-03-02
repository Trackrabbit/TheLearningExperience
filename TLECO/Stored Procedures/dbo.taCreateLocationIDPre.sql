SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateLocationIDPre]  @I_vLOCATNID char(15) output,   @I_vSTATEDESCR char(30) output,  @I_vCOUNTYDESCR char(30) output,  @I_vCITYDESCR char(30) output,  @I_vSTATEABBREV char(2) output,   @I_vSTATECD char(2) output,   @I_vCOUNTYCODE char(3) output,   @I_vCITYCODE char(4) output,   @I_vLASTMNTDDATE datetime output,  @I_vLASTMNTDUSERID char(15) output,  @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateLocationIDPre] TO [DYNGRP]
GO
