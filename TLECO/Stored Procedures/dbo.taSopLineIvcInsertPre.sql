SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taSopLineIvcInsertPre]  @I_vSOPTYPE smallint output,   @I_vSOPNUMBE char(21) output,    @I_vCUSTNMBR char(15) output,    @I_vDOCDATE datetime output,   @I_vUSERDATE datetime output,   @I_vLOCNCODE char(10) output,   @I_vITEMNMBR char(30) output,   @I_vAutoAssignBin smallint output,  @I_vUNITPRCE numeric(19,5) output,  @I_vXTNDPRCE numeric(19,5) output,  @I_vQUANTITY numeric(19,5) output,  @I_vMRKDNAMT numeric(19,5) output,  @I_vMRKDNPCT numeric(19,2) output,  @I_vCOMMNTID char(15) output,   @I_vCOMMENT_1 char(50) output,   @I_vCOMMENT_2 char(50) output,   @I_vCOMMENT_3 char(50) output,   @I_vCOMMENT_4 char(50) output,   @I_vUNITCOST numeric (19,5) output,  @I_vPRCLEVEL char(10) output,   @I_vITEMDESC char(100) output,   @I_vTAXAMNT numeric(19,5) output,  @I_vQTYONHND numeric(19,5) output,  @I_vQTYRTRND numeric(19,5) output,  @I_vQTYINUSE numeric(19,5) output,  @I_vQTYINSVC numeric(19,5) output,  @I_vQTYDMGED numeric(19,5) output,  @I_vNONINVEN smallint output,   @I_vLNITMSEQ int output,    @I_vDROPSHIP smallint output,   @I_vQTYTBAOR numeric(19,5) output,  @I_vDOCID char(15) output,    @I_vSALSTERR char(15) output,   @I_vSLPRSNID char(15) output,   @I_vITMTSHID char(15) output,   @I_vIVITMTXB smallint output,   @I_vTAXSCHID char(15) output,   @I_vPRSTADCD char(15) output,   @I_vShipToName char(64) output,   @I_vCNTCPRSN char(60) output,   @I_vADDRESS1 char(60) output,   @I_vADDRESS2 char(60) output,   @I_vADDRESS3 char(60) output,   @I_vCITY char(35) output,    @I_vSTATE char(29) output,    @I_vZIPCODE char(10) output,   @I_vCOUNTRY char(60) output,   @I_vPHONE1 char(21) output,    @I_vPHONE2 char(21) output,    @I_vPHONE3 char(21) output,    @I_vFAXNUMBR char(21)output,    @I_vPrint_Phone_NumberGB smallint output,      @I_vEXCEPTIONALDEMAND tinyint output,  @I_vReqShipDate datetime output,  @I_vFUFILDAT datetime output,   @I_vACTLSHIP datetime output,   @I_vSHIPMTHD char(15) output,   @I_vINVINDX varchar(75) output,   @I_vCSLSINDX varchar(75) output,  @I_vSLSINDX varchar(75) output,   @I_vMKDNINDX varchar(75) output,  @I_vRTNSINDX varchar(75) output,  @I_vINUSINDX varchar(75) output,  @I_vINSRINDX varchar(75) output,  @I_vDMGDINDX varchar(75) output,  @I_vAUTOALLOCATESERIAL int output,  @I_vAUTOALLOCATELOT int output,   @I_vGPSFOINTEGRATIONID char(30) output,  @I_vINTEGRATIONSOURCE smallint output,  @I_vINTEGRATIONID char(30) output,  @I_vRequesterTrx smallint output,  @I_vQTYCANCE numeric(19,5) output,  @I_vQTYFULFI numeric(19,5) output,  @I_vALLOCATE smallint output,   @I_vUpdateIfExists smallint output,  @I_vRecreateDist smallint output,  @I_vQUOTEQTYTOINV numeric(19,5) output,  @I_vTOTALQTY numeric(19,5) output,  @I_vCMMTTEXT varchar(500) output,  @I_vKitCompMan smallint output,   @I_vDEFPRICING int output,    @I_vDEFEXTPRICE int output,    @I_vCURNCYID char(15) output,   @I_vUOFM char(8) output,    @I_vIncludePromo smallint output,  @I_vCKCreditLimit tinyint output,  @I_vQtyShrtOpt smallint output,   @I_vRECREATETAXES smallint output,  @I_vRECREATECOMM smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,   @I_vUSRDEFND3 char(50) output,   @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,    @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taSopLineIvcInsertPre] TO [DYNGRP]
GO