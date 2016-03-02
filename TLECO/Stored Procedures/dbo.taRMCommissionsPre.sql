SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRMCommissionsPre]  @I_vRMDTYPAL smallint output,   @I_vDOCNUMBR char(20) output,   @I_vSEQNUMBR int output,   @I_vCUSTNMBR char(15) output,    @I_vSLPRSNID char(15) output,   @I_vSALSTERR char(15) output,   @I_vCOMPRCNT numeric(19,2) output,  @I_vCOMDLRAM numeric(19,2) output,  @I_vDOCAMNT  numeric(19,2) output,  @I_vPRCTOSAL numeric(19,2) output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taRMCommissionsPre] TO [DYNGRP]
GO
