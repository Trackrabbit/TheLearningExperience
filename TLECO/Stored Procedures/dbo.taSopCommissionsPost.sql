SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopCommissionsPost]  @I_vSOPTYPE smallint,   @I_vSOPNUMBE char(21),    @I_vLNITMSEQ int,   @I_vSLPRSNID char(15),   @I_vSALSTERR char(15),   @I_vCOMPRCNT numeric(19,2),  @I_vCOMMAMNT numeric(19,5),  @I_vPRCTOSAL numeric(19,5),  @I_vCUSTNMBR char(15),    @I_vCURNCYID char(15),   @I_vRequesterTrx smallint,  @I_vUSRDEFND1 char(50),   @I_vUSRDEFND2 char(50),   @I_vUSRDEFND3 char(50),   @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int output,  @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopCommissionsPost] TO [DYNGRP]
GO
