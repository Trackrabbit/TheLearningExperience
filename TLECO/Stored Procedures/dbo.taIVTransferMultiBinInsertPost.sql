SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taIVTransferMultiBinInsertPost]  @I_vIVDOCNBR char(17),    @I_vITEMNMBR  char(30),   @I_vLNSEQNBR numeric(19,5),   @I_vBIN  char(15),   @I_vTOBIN char(15),   @I_vQUANTITY  numeric(19,5),   @I_vSERLTNUM char(20),   @I_vSLTSQNUM int,    @I_vCreateBin  tinyint,   @I_vOverrideBin tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2 char(50),   @I_vUSRDEFND3 char(50),   @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taIVTransferMultiBinInsertPost] TO [DYNGRP]
GO
