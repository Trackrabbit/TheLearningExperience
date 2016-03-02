SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taBRBankTransactionVoidPre]   @I_vOption smallint output,   @I_vVOIDDATE datetime output,   @I_vCHEKBKID char(15) output,   @I_vCMTrxNum char(20) output,   @I_vVOIDDESC char(30) output,   @I_vUSERID char(15) output,   @I_vGLPOSTDT datetime output,   @I_vDistRef char(30) output,   @I_vCreateDist tinyint output,   @I_vCMDNUMWK numeric(19,5) output,  @I_vBACHNUMB char(15) output,   @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taBRBankTransactionVoidPre] TO [DYNGRP]
GO
