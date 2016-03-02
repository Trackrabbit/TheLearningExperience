SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateManualCheckHeaderInsertPre]  @I_vMLCHKTYP smallint output,   @I_vPYADNMBR int output,   @I_vBACHNUMB char(15) output,   @I_vCHEKBKID char(15) output,   @I_vCHEKNMBR char(20) output,   @I_vPOSTEDDT datetime output,   @I_vEMPLOYID char(15) output,   @I_vUSEGPPYADNMBR int output,   @I_vRequesterTrx smallint output,  @I_vUSERID char(15) output,   @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateManualCheckHeaderInsertPre] TO [DYNGRP]
GO
