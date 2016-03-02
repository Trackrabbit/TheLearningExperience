SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopEnterMatchLotInsertPre]  @I_vPOPRCTNM  char(17) output,    @I_vITEMNMBR  char(30) output,   @I_vSERLTNUM  char(20) output,   @I_vSERLTQTY  numeric(19,5) output,  @I_vRCPTLNNM int output,     @I_vEXPNDATE datetime output,   @I_vMFGDATE datetime output,    @I_vRequesterTrx smallint output,   @I_vUSRDEFND1  char(50) output,   @I_vUSRDEFND2  char(50) output,   @I_vUSRDEFND3  char(50) output,   @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5  varchar(8000) output,  @O_iErrorState  int output,     @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopEnterMatchLotInsertPre] TO [DYNGRP]
GO
