SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopUserDefinedPre]  @I_vSOPTYPE smallint output,   @I_vSOPNUMBE char(21) output,    @I_vUSRDAT01 datetime output,   @I_vUSRDAT02 datetime output,   @I_vUSRTAB01 char(20) output,   @I_vUSRTAB09 char(20) output,   @I_vUSRTAB03 char(20) output,   @I_vUSERDEF1 char(20) output,   @I_vUSERDEF2 char(20) output,   @I_vUSRDEF03 char(20) output,   @I_vUSRDEF04 char(20) output,   @I_vUSRDEF05 char(20) output,   @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopUserDefinedPre] TO [DYNGRP]
GO
