SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateSalespersonPost]  @I_vSLPRSNID char(15),   @I_vSALSTERR char(15),   @I_vEMPLOYID char(15),   @I_vVENDORID char(15),   @I_vSLPRSNFN  char(15),   @I_vSPRSNSMN  char(15),   @I_vSPRSNSLN  char(20),   @I_vADDRESS1    char(60),   @I_vADDRESS2 char(60),   @I_vADDRESS3 char(60),   @I_vCITY  char(35),   @I_vSTATE  char(29),   @I_vZIP   char(10),   @I_vCOUNTRY  char(60),   @I_vPHONE1  char(21),   @I_vPHONE2  char(21),   @I_vPHONE3  char(21),   @I_vFAX   char(21),   @I_vINACTIVE   tinyint,   @I_vCOMMCODE char(15),   @I_vCOMPRCNT  numeric(19,2),           @I_vSTDCPRCT    numeric(19,2),       @I_vCOMAPPTO    smallint,       @I_vCOSTTODT   numeric(19,5),   @I_vCSTLSTYR   numeric(19,5),   @I_vTTLCOMTD  numeric(19,5),   @I_vTTLCOMLY  numeric(19,5),   @I_vCOMSLTDT  numeric(19,5),   @I_vCOMSLLYR  numeric(19,5),   @I_vNCOMSLTD  numeric(19,5),   @I_vNCOMSLYR  numeric(19,5),   @I_vKPCALHST   tinyint,   @I_vKPERHIST    tinyint,    @I_vMODIFDT     datetime,   @I_vCREATDDT datetime,   @I_vCOMMDEST smallint,   @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),      @I_vUSRDEFND2  char(50),      @I_vUSRDEFND3  char(50),      @I_vUSRDEFND4  varchar(8000),      @I_vUSRDEFND5  varchar(8000),      @O_iErrorState  int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateSalespersonPost] TO [DYNGRP]
GO
