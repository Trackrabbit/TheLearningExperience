SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateLockboxPre]  @I_vLockboxID char(15) output,    @I_vLockboxDescription char(30) output,   @I_vCHEKBKID char(15) output,    @I_vSTRGA255 char(255) output,        @I_vpaLockboxFormatType smallint output,  @I_vXPRTFTYP smallint output,    @I_vDECPLCUR smallint output,    @I_vpaApplyMethod smallint output,   @I_vOmitStartRecords int output,   @I_vOmitLastRecords int output,    @I_vpaHeaderRowIndicator char(10) output,  @I_vpaDeailRowIndicator char(10) output,  @I_vCREATDDT datetime output,    @I_vMODIFDT datetime output,    @I_vUSRDEFND1 char(50) output,        @I_vUSRDEFND2 char(50) output,        @I_vUSRDEFND3 char(50) output,        @I_vUSRDEFND4 varchar(8000) output,       @I_vUSRDEFND5 varchar(8000) output,       @O_iErrorState int output,    @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateLockboxPre] TO [DYNGRP]
GO
