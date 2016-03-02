SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateProspectPre]  @I_vPROSPID  char(15) output,   @I_vCUSTNAME  char(65) output,   @I_vCNTCPRSN  char(60) output,   @I_vADDRESS1  char(60) output,   @I_vADDRESS2  char(60) output,   @I_vADDRESS3  char(60) output,   @I_vCITY  char(35) output,              @I_vSTATE  char(29) output,   @I_vZIP  char(10) output,   @I_vCOUNTRY  char(60) output,   @I_vCUSTCLAS  char(15) output,   @I_vPHONE1  char(21) output,   @I_vPHONE2  char(21) output,   @I_vPHONE3  char(21) output,   @I_vPRCLEVEL char(10) output,   @I_vFAX char(21) output,   @I_vSHIPMTHD char(15) output,   @I_vTAXSCHID char(15) output,   @I_vUSERDEF1 char(20) output,   @I_vUSERDEF2 char(20) output,   @I_vUSER2ENT char(15) output,   @I_vCREATDDT datetime output,   @I_vMODIFDT datetime output,   @I_vUSRDEFND1  char(50) output,       @I_vUSRDEFND2  char(50) output,       @I_vUSRDEFND3  char(50) output,       @I_vUSRDEFND4  varchar(8000) output,       @I_vUSRDEFND5  varchar(8000) output,       @O_iErrorState int output,    @oErrString  varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateProspectPre] TO [DYNGRP]
GO
