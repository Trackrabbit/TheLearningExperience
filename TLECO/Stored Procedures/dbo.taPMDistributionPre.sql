SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPMDistributionPre]   @I_vDOCTYPE smallint output,   @I_vVCHRNMBR char(17) output,   @I_vVENDORID char(15) output,   @I_vDSTSQNUM int output,    @I_vDISTTYPE smallint output,   @I_vDistRef char(30) output,   @I_vACTINDX int output,    @I_vACTNUMST varchar(75) output,  @I_vDEBITAMT numeric(19,5) output,  @I_vCRDTAMNT numeric(19,5) output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,       @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPMDistributionPre] TO [DYNGRP]
GO