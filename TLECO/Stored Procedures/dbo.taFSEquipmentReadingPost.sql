SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taFSEquipmentReadingPost]  @I_vSERLNMBR char(21),   @I_vITEMNMBR char(31),   @I_vMeters_1 int,   @I_vMeters_2 int,   @I_vMeters_3 int,   @I_vMeters_4 int,   @I_vMeters_5 int,   @I_vReplaces_1 tinyint,   @I_vReplaces_2 tinyint,   @I_vReplaces_3 tinyint,   @I_vReplaces_4 tinyint,   @I_vReplaces_5 tinyint,   @I_vLSTDTEDT datetime,   @I_vUpdateIfExists tinyint,  @I_vRequesterTrx smallint,  @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2 char(50),   @I_vUSRDEFND3 char(50),   @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int = null output, @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taFSEquipmentReadingPost] TO [DYNGRP]
GO
