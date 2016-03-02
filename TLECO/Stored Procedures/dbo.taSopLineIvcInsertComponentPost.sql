SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopLineIvcInsertComponentPost]  @I_vSOPTYPE smallint,    @I_vSOPNUMBE char(21),     @I_vUSERDATE datetime,    @I_vLOCNCODE char(10),    @I_vLNITMSEQ int,     @I_vITEMNMBR char(30),    @I_vAutoAssignBin smallint,   @I_vITEMDESC char(100),    @I_vQUANTITY numeric(19,5),   @I_vQTYTBAOR numeric(19,5),   @I_vQTYCANCE numeric(19,5),   @I_vQTYFULFI numeric(19,5),   @I_vQUOTEQTYTOINV numeric(19,5), @I_vQTYONHND numeric(19,5),   @I_vQTYRTRND numeric(19,5),   @I_vQTYINUSE numeric(19,5),   @I_vQTYINSVC numeric(19,5),   @I_vQTYDMGED numeric(19,5),   @I_vCUSTNMBR char(15),     @I_vDOCID char(15),     @I_vUNITCOST numeric (19,5),  @I_vNONINVEN smallint,    @I_vAUTOALLOCATESERIAL int,   @I_vAUTOALLOCATELOT int,   @I_vCMPNTSEQ int,     @I_vCMPITUOM char(9),    @I_vCURNCYID char(15),    @I_vUpdateIfExists smallint,  @I_vRecreateDist smallint,   @I_vRequesterTrx smallint,   @I_vQtyShrtOpt smallint,   @I_vRECREATECOMM smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),  @I_vUSRDEFND5 varchar(8000),  @O_iErrorState int output, @oErrString char(255) output  as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopLineIvcInsertComponentPost] TO [DYNGRP]
GO
