SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopLineDeletePre]   @I_vSOPTYPE int output,    @I_vSOPNUMBE char(21) output,    @I_vLNITMSEQ int output,   @I_vITEMNMBR char(30) output,   @I_vRequesterTrx smallint output,  @I_vRecreateDist smallint output,  @I_vCMPNTSEQ int output,   @I_vDeleteType smallint output,   @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return(@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopLineDeletePre] TO [DYNGRP]
GO
