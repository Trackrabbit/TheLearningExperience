SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopSerialPost]  @I_vSOPTYPE smallint,    @I_vSOPNUMBE char(21),     @I_vLNITMSEQ int,    @I_vCMPNTSEQ int,    @I_vQTYTYPE smallint,     @I_vITEMNMBR char(30),    @I_vLOCNCODE char(10),    @I_vQUANTITY numeric(19,5),     @I_vBIN char(15),    @I_vCREATEBIN tinyint,    @I_vSERLNMBR char(20),    @I_vAUTOCREATESERIAL int,   @I_vDOCID char(15),    @I_vDROPSHIP smallint,    @I_vQTYFULFI numeric(19,5),    @I_vALLOCATE smallint,    @I_vUpdateIfExists smallint,   @I_vSERLNMBRToReplace char(20),   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output, @oErrString varchar(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopSerialPost] TO [DYNGRP]
GO
