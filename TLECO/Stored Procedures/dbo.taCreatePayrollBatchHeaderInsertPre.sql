SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreatePayrollBatchHeaderInsertPre]  @I_vBACHNUMB char(15) output,   @I_vUPRBCHOR smallint output,   @I_vBCHCOMNT char(60) output,   @I_vUPRBCHFR smallint output,    @I_vPOSTEDDT datetime output,   @I_vCNTRLTRX int output,   @I_vCTRLEMPCT smallint output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreatePayrollBatchHeaderInsertPre] TO [DYNGRP]
GO
