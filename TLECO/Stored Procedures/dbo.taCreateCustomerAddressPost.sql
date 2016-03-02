SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateCustomerAddressPost]  @I_vCUSTNMBR char(15),   @I_vADRSCODE char(15),   @I_vSLPRSNID char(15),   @I_vUPSZONE char(3),   @I_vSHIPMTHD char(15),   @I_vTAXSCHID char(15),   @I_vCNTCPRSN char(60),   @I_vADDRESS1 char(60),   @I_vADDRESS2 char(60),     @I_vADDRESS3 char(60),     @I_vCOUNTRY char(60),   @I_vCITY char(35),   @I_vSTATE char(29),   @I_vZIPCODE char(10),    @I_vPHNUMBR1 char(21),   @I_vPHNUMBR2 char(21),   @I_vPHNUMBR3 char(21),   @I_vFAX char(21),   @I_vGPSFOINTEGRATIONID char(30),  @I_vINTEGRATIONSOURCE smallint,   @I_vINTEGRATIONID char(30),   @I_vCCode char(6),   @I_vLOCNCODE char(10),   @I_vSALSTERR char(15),   @I_vShipToName char(64),      @I_vPrint_Phone_NumberGB smallint,  @I_vUSERDEF1 char(20),   @I_vUSERDEF2 char(20),   @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2 char(50),      @I_vUSRDEFND3 char(50),      @I_vUSRDEFND4 varchar(8000),      @I_vUSRDEFND5 varchar(8000),      @O_iErrorState int output,   @oErrString varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateCustomerAddressPost] TO [DYNGRP]
GO
