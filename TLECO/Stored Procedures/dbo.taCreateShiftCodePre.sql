SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateShiftCodePre]  @I_vSHFTCODE char(6) output,   @I_vDSCRIPTN char(30) output,   @I_vSHFTTYPE smallint output,   @I_vSHFTAMT numeric(19,5) output,  @I_vSHFTPCT numeric(19,5) output,  @I_vINACTIVE tinyint output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateShiftCodePre] TO [DYNGRP]
GO
