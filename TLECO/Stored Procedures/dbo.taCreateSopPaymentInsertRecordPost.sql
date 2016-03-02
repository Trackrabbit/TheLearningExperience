SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateSopPaymentInsertRecordPost]  @I_vSOPTYPE  smallint,   @I_vSOPNUMBE char(21),    @I_vCUSTNMBR char(15),    @I_vCUSTNAME char(64),   @I_vDOCDATE datetime,    @I_vDOCAMNT numeric(19,5),  @I_vCHEKBKID char(15),   @I_vCARDNAME char(15),   @I_vCHEKNMBR char(20),   @I_vRCTNCCRD char (20),   @I_vAUTHCODE char(15),   @I_vEXPNDATE datetime,    @I_vPYMTTYPE int,   @I_vDOCNUMBR char(20),      @I_vAction smallint,   @I_vSEQNUMBR int,   @I_vMDFUSRID char(15),   @I_vVOIDDATE datetime,    @I_vPROCESSELECTRONICALLY tinyint,  @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2 char(50),   @I_vUSRDEFND3 char(50),   @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateSopPaymentInsertRecordPost] TO [DYNGRP]
GO
