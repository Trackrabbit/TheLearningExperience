SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateKitItemRcdPre]  @I_vITEMNMBR char(30) output,   @I_vCMPTITNM char(30) output,   @I_vCMPITUOM char(8) output,   @I_vCMPITQTY numeric(19,5) output,  @I_vUSRDEFND1 char(50) output,       @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int = NULL output,  @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return(@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateKitItemRcdPre] TO [DYNGRP]
GO
