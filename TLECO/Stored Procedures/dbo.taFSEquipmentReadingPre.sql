SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSEquipmentReadingPre]  @I_vSERLNMBR char(21) output,   @I_vITEMNMBR char(31) output,   @I_vMeters_1 int output,   @I_vMeters_2 int output,   @I_vMeters_3 int output,   @I_vMeters_4 int output,   @I_vMeters_5 int output,   @I_vReplaces_1 tinyint output,   @I_vReplaces_2 tinyint output,   @I_vReplaces_3 tinyint output,   @I_vReplaces_4 tinyint output,   @I_vReplaces_5 tinyint output,   @I_vLSTDTEDT datetime output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int = null output, @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSEquipmentReadingPre] TO [DYNGRP]
GO
