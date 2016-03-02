SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRMCommissionsPost]  @I_vRMDTYPAL smallint,   @I_vDOCNUMBR char(20),   @I_vSEQNUMBR int = 0,   @I_vCUSTNMBR char(15),    @I_vSLPRSNID char(15),   @I_vSALSTERR char(15),   @I_vCOMPRCNT numeric(19,2),  @I_vCOMDLRAM numeric(19,2),  @I_vDOCAMNT  numeric(19,2),  @I_vPRCTOSAL numeric(19,2),  @I_vRequesterTrx smallint,  @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2 char(50),   @I_vUSRDEFND3 char(50),   @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int output,  @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taRMCommissionsPost] TO [DYNGRP]
GO
