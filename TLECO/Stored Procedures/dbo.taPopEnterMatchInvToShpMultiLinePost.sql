SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopEnterMatchInvToShpMultiLinePost]  @I_vPOPRCTNM char(17),    @I_vPOPMtchShpRcpt char(17),   @I_vPONUMBER char(17),    @I_vQTYINVCD numeric(19,5),   @I_vRevalue_Inventory smallint,   @I_vITEMNMBR char(30),    @I_vShipRCPTLNNM int,    @I_vVENDORID char(15),    @I_vVNDITNUM char(30),    @I_vVarianceAccount varchar(75),  @I_vIVCLINNO int,    @I_vLandedCost smallint,   @I_vNONINVEN smallint,    @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopEnterMatchInvToShpMultiLinePost] TO [DYNGRP]
GO
