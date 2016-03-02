SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateSopPaymentInsertRecordPre]  @I_vSOPTYPE  smallint output,   @I_vSOPNUMBE char(21) output,    @I_vCUSTNMBR char(15) output,    @I_vCUSTNAME char(64) output,   @I_vDOCDATE datetime output,    @I_vDOCAMNT numeric(19,5) output,  @I_vCHEKBKID char(15) output,   @I_vCARDNAME char(15) output,   @I_vCHEKNMBR char(20) output,   @I_vRCTNCCRD char (20) output,   @I_vAUTHCODE char(15) output,   @I_vEXPNDATE datetime output,    @I_vPYMTTYPE int output,   @I_vDOCNUMBR char(20) output,      @I_vAction smallint output,   @I_vSEQNUMBR int output,   @I_vMDFUSRID char(15) output,   @I_vVOIDDATE datetime output,    @I_vPROCESSELECTRONICALLY tinyint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateSopPaymentInsertRecordPre] TO [DYNGRP]
GO
