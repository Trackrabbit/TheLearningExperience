SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateEmployeeStateTaxPre]  @I_vEMPLOYID char(15) output,   @I_vSTATECD char(2) output,   @I_vTXFLGSTS char(6) output,   @I_vEXMFBLND tinyint output,   @I_vEXFBLSPS tinyint output,   @I_vEXFORO65 tinyint output,   @I_vEXMFRSLF tinyint output,   @I_vEXMFSPAL tinyint output,   @I_vEXMFRSPS tinyint output,   @I_vEXFSPO65 tinyint output,   @I_vPRSNEXPT smallint output,   @I_vDEPNDNTS smallint output,   @I_vADNLALOW smallint output,   @I_vESTDEDAL smallint output,   @I_vEXMTAMNT numeric(19,5) output,  @I_vADSTWHDG numeric(19,5) output,  @I_vESTSTWHD numeric(19,5) output,  @I_vINACTIVE tinyint output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateEmployeeStateTaxPre] TO [DYNGRP]
GO
