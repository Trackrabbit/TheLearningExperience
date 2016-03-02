SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateEmployeeStateTaxPost]  @I_vEMPLOYID char(15),    @I_vSTATECD char(2),    @I_vTXFLGSTS char(6),    @I_vEXMFBLND tinyint,    @I_vEXFBLSPS tinyint,    @I_vEXFORO65 tinyint,    @I_vEXMFRSLF tinyint,    @I_vEXMFSPAL tinyint,    @I_vEXMFRSPS tinyint,    @I_vEXFSPO65 tinyint,    @I_vPRSNEXPT smallint,    @I_vDEPNDNTS smallint,    @I_vADNLALOW smallint,    @I_vESTDEDAL smallint,    @I_vEXMTAMNT numeric(19,5),   @I_vADSTWHDG numeric(19,5),   @I_vESTSTWHD numeric(19,5),   @I_vINACTIVE tinyint,    @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),        @I_vUSRDEFND3 char(50),        @I_vUSRDEFND4 varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateEmployeeStateTaxPost] TO [DYNGRP]
GO
