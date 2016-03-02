SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateInventorySitePost]  @I_vLOCNCODE char(10),   @I_vLOCNDSCR char(30),   @I_vADDRESS1 char(60),   @I_vADDRESS2 char(60),   @I_vADDRESS3  char(60),   @I_vCITY  char(35),   @I_vSTATE char(29),   @I_vZIPCODE char(10),   @I_vCOUNTRY char(60),   @I_vPHONE1  char(20),   @I_vPHONE2 char(20),   @I_vPHONE3 char(20),   @I_vFAXNUMBR char(20),   @I_vLocation_Segment char(66),   @I_vSTAXSCHD char(15),   @I_vPCTAXSCH char(15),   @I_vINCLDDINPLNNNG tinyint,   @I_vCCode char(6),   @I_vPORECEIPTBIN char(15),  @I_vPORETRNBIN char(15),  @I_vSOFULFILLMENTBIN char(15),  @I_vSORETURNBIN char(15),  @I_vBOMRCPTBIN char(15),  @I_vMATERIALISSUEBIN char(15),  @I_vMORECEIPTBIN char(15),  @I_vREPAIRISSUESBIN  char(15),  @I_vUSRDEFND1   char(50),       @I_vUSRDEFND2  char(50),       @I_vUSRDEFND3  char(50),       @I_vUSRDEFND4  varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateInventorySitePost] TO [DYNGRP]
GO
