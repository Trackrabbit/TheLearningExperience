SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSServiceCallCodesEquipmentPost]  @I_vSRVRECTYPE smallint,  @I_vCALLNBR char(11),   @I_vITEMNMBR char(31),   @I_vSERLNMBR char(21),   @I_vCUSTNMBR char(15),   @I_vPROBCDE char(11),   @I_vCAUSECDE char(11),   @I_vRPRCODE char(11),   @I_vPMPERF tinyint,   @I_vUpdateIfExists tinyint,  @I_vRequesterTrx smallint,  @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2 char(50),   @I_vUSRDEFND3 char(50),   @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int = NULL output, @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSServiceCallCodesEquipmentPost] TO [DYNGRP]
GO
