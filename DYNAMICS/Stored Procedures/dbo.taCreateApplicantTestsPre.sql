SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateApplicantTestsPre]  @I_vLLASTNAME_I char(21) output,     @I_vFFIRSTNAME_I char(15) output,     @I_vTESTCODE_I char(7) output,      @I_vAPPLICANTNUMBER_I numeric(19,5) output,    @I_vISEQUENCENUMBER_I smallint output,    @I_vSTRTDATE datetime output,      @I_vTESTSCORE_I char(21) output,     @I_vNOTE varchar(8000) output,       @I_vCHANGEBY_I char(15) output,      @I_vUpdateIfExists tinyint output,     @I_vRequesterTrx smallint output,     @I_vUSRDEFND1 char(50) output,      @I_vUSRDEFND2 char(50) output,         @I_vUSRDEFND3 char(50) output,         @I_vUSRDEFND4 varchar(8000) output,     @I_vUSRDEFND5 varchar(8000) output,     @O_iErrorState int output,       @oErrString varchar(255) output       as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateApplicantTestsPre] TO [DYNGRP]
GO
