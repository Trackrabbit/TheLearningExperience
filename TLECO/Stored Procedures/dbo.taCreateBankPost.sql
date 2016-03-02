SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateBankPost]  @I_vBANKID char(15),   @I_vBANKNAME char(30),       @I_vADDRESS1 char(60),       @I_vADDRESS2 char(60),       @I_vADDRESS3 char(60),       @I_vCITY char(35),   @I_vSTATE char(29),   @I_vZIPCODE char(10),   @I_vCOUNTRY char(60),   @I_vPHNUMBR1 char(21),   @I_vPHNUMBR2 char(21),   @I_vPHONE3 char(21),   @I_vFAXNUMBR  char(21),   @I_vTRNSTNBR char(9),   @I_vBNKBRNCH char(20),   @I_vDDTRANUM char(9),   @I_vRequesterTrx smallint,   @I_vUSRDEFND1   char(50),       @I_vUSRDEFND2  char(50),       @I_vUSRDEFND3  char(50),       @I_vUSRDEFND4  varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateBankPost] TO [DYNGRP]
GO
