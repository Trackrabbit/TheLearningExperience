SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateUpdateBatchHeaderRcdPre]  @I_vBACHNUMB char(15) output, @I_vBCHCOMNT char(60) output, @I_vSERIES int output, @I_vGLPOSTDT datetime output, @I_vBCHSOURC char(15) output, @I_vDOCAMT numeric(19,5) output, @I_vORIGIN int output, @I_vNUMOFTRX int output, @I_vCHEKBKID char(15) output, @I_vCNTRLTOT numeric(19,5) output,  @I_vCNTRLTRX int output, @I_vPOSTTOGL smallint output, @I_vPmtMethod smallint output,   @I_vEFTFileFormat smallint output,  @I_vRequesterTrx smallint output,  @I_vBRKDNALL tinyint output, @I_vUSERID char(15) output, @I_vBACHFREQ tinyint output,   @I_vRECPSTGS smallint output,   @I_vMSCBDINC smallint output,   @I_vAPPROVL tinyint output,    @I_vAPPRVLDT datetime output,   @I_vAPRVLUSERID char(15) output,  @I_vTRXSOURC char(25) output,   @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateUpdateBatchHeaderRcdPre] TO [DYNGRP]
GO
