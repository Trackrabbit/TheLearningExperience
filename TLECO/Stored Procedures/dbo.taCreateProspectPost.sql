SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateProspectPost]  @I_vPROSPID  char(15),   @I_vCUSTNAME  char(65),   @I_vCNTCPRSN  char(60),   @I_vADDRESS1  char(60),   @I_vADDRESS2  char(60),   @I_vADDRESS3  char(60),   @I_vCITY  char(35),              @I_vSTATE  char(29),   @I_vZIP  char(10),   @I_vCOUNTRY  char(60),   @I_vCUSTCLAS  char(15),   @I_vPHONE1  char(21),   @I_vPHONE2  char(21),   @I_vPHONE3  char(21),   @I_vPRCLEVEL char(10),   @I_vFAX char(21),   @I_vSHIPMTHD char(15),   @I_vTAXSCHID char(15),   @I_vUSERDEF1 char(20),   @I_vUSERDEF2 char(20),   @I_vUSER2ENT char(15),   @I_vCREATDDT datetime,   @I_vMODIFDT datetime,   @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2  char(50),      @I_vUSRDEFND3  char(50),      @I_vUSRDEFND4  varchar(8000),      @I_vUSRDEFND5  varchar(8000),      @O_iErrorState  int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateProspectPost] TO [DYNGRP]
GO
