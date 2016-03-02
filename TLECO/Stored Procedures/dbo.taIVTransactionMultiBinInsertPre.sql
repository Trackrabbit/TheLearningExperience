SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVTransactionMultiBinInsertPre]  @I_vIVDOCNBR char(17) output,   @I_vIVDOCTYP smallint output,  @I_vITEMNMBR  char(30) output,  @I_vLNSEQNBR numeric(19,5) output,  @I_vQUANTITY  numeric(19,5) output,  @I_vADJTYPE tinyint = 0 output,  @I_vBIN  char(15) output,  @I_vCreateBin  tinyint output,   @I_vOverrideBin tinyint output,   @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,  @I_vUSRDEFND2 char(50) output,  @I_vUSRDEFND3 char(50) output,  @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVTransactionMultiBinInsertPre] TO [DYNGRP]
GO