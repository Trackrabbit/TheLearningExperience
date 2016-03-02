SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreatePhysicalLocationIDPre]  @I_vPhysical_Location_ID char(15) output,   @I_vPhysical_Location_Desc char(30) output,  @I_vLOCATNID char(15) output,  @I_vLast_Inventory_Date datetime output,  @I_vUSRDEFND1     char(50) output,  @I_vUSRDEFND2    char(50) output,  @I_vUSRDEFND3    char(50) output,  @I_vUSRDEFND4    varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString    varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreatePhysicalLocationIDPre] TO [DYNGRP]
GO
