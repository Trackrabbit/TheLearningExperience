SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPMTransactionTaxInsertPre]  @I_vVENDORID char(15) output,  @I_vVCHRNMBR char(17) output,  @I_vDOCTYPE smallint output,  @I_vBACHNUMB char(15) output,  @I_vTAXDTLID char(15) output,  @I_vTAXAMNT numeric(19,5) output,  @I_vPCTAXAMT numeric(19,5) output,  @I_vFRTTXAMT numeric(19,5) output,  @I_vMSCTXAMT numeric(19,5) output,  @I_vTDTTXPUR numeric(19,5) output,  @I_vTXDTTPUR numeric(19,5) output,  @I_vACTINDX int output,   @I_vACTNUMST varchar(75) output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPMTransactionTaxInsertPre] TO [DYNGRP]
GO
