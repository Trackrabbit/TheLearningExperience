SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateKitItemRcdPost]  @I_vITEMNMBR char(30),    @I_vCMPTITNM char(30),    @I_vCMPITUOM char(8),    @I_vCMPITQTY numeric(19,5),   @I_vUSRDEFND1 char(50),       @I_vUSRDEFND2 char(50),       @I_vUSRDEFND3 char(50),       @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int = NULL output,  @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateKitItemRcdPost] TO [DYNGRP]
GO
