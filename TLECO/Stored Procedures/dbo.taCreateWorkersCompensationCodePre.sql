SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateWorkersCompensationCodePre]  @I_vWRKRCOMP char(6) output,   @I_vSTATECD char(2) output,   @I_vDSCRIPTN char(30) output,   @I_vWKCMPMTH smallint output,   @I_vWKCMPAMT numeric(19,5) output,  @I_vWKCMPUNT numeric(19,5) output,  @I_vWKCMPCNT numeric(19,5) output,  @I_vWCMOTMTH smallint output,   @I_vWCWGLIMT numeric(19,5) output,  @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateWorkersCompensationCodePre] TO [DYNGRP]
GO
