SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopCommissionsPre]  @I_vSOPTYPE smallint output,   @I_vSOPNUMBE char(21) output,    @I_vLNITMSEQ int output,   @I_vSLPRSNID char(15) output,   @I_vSALSTERR char(15) output,   @I_vCOMPRCNT numeric(19,2) output,  @I_vCOMMAMNT numeric(19,5) output,  @I_vPRCTOSAL numeric(19,5) output,  @I_vCUSTNMBR char(15) output,    @I_vCURNCYID char(15) output,   @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopCommissionsPre] TO [DYNGRP]
GO
