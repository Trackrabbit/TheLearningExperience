SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateSalespersonPre]  @I_vSLPRSNID char(15) output,   @I_vSALSTERR char(15) output,   @I_vEMPLOYID char(15) output,   @I_vVENDORID char(15) output,   @I_vSLPRSNFN  char(15) output,   @I_vSPRSNSMN  char(15) output,   @I_vSPRSNSLN  char(20) output,   @I_vADDRESS1    char(60) output,   @I_vADDRESS2 char(60) output,   @I_vADDRESS3 char(60) output,   @I_vCITY  char(35) output,   @I_vSTATE  char(29) output,   @I_vZIP   char(10) output,   @I_vCOUNTRY  char(60) output,   @I_vPHONE1  char(21) output,   @I_vPHONE2  char(21) output,   @I_vPHONE3  char(21) output,   @I_vFAX   char(21) output,   @I_vINACTIVE   tinyint  output,   @I_vCOMMCODE char(15) output,   @I_vCOMPRCNT  numeric(19,2) output,   @I_vSTDCPRCT    numeric(19,2) output,   @I_vCOMAPPTO    smallint output,   @I_vCOSTTODT   numeric(19,5) output,   @I_vCSTLSTYR   numeric(19,5) output,   @I_vTTLCOMTD  numeric(19,5) output,   @I_vTTLCOMLY  numeric(19,5) output,   @I_vCOMSLTDT  numeric(19,5) output,   @I_vCOMSLLYR  numeric(19,5) output,   @I_vNCOMSLTD  numeric(19,5) output,   @I_vNCOMSLYR  numeric(19,5) output,   @I_vKPCALHST   tinyint output,    @I_vKPERHIST    tinyint output,    @I_vMODIFDT     datetime output,   @I_vCREATDDT datetime output,   @I_vCOMMDEST smallint output,   @I_vUpdateIfExists tinyint output,   @I_vRequesterTrx smallint output,   @I_vUSRDEFND1   char(50) output,       @I_vUSRDEFND2  char(50) output,       @I_vUSRDEFND3  char(50) output,       @I_vUSRDEFND4  varchar(8000) output,       @I_vUSRDEFND5 varchar(8000) output,       @O_iErrorState int output,    @oErrString  varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateSalespersonPre] TO [DYNGRP]
GO