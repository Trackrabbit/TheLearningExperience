SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopEnterMatchInvToShpMultiLinePre]  @I_vPOPRCTNM char(17) output,   @I_vPOPMtchShpRcpt char(17) output,  @I_vPONUMBER char(17) output,   @I_vQTYINVCD numeric(19,5) output,  @I_vRevalue_Inventory smallint output,  @I_vITEMNMBR char(30) output,   @I_vShipRCPTLNNM int output,   @I_vVENDORID char(15) output,   @I_vVNDITNUM char(30) output,   @I_vVarianceAccount varchar(75) output,  @I_vIVCLINNO int output,   @I_vLandedCost smallint output,   @I_vNONINVEN smallint output,   @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopEnterMatchInvToShpMultiLinePre] TO [DYNGRP]
GO
