SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateLocationPre]  @I_vLOCATNID char(15) output,   @I_vLOCATNNM char(30) output,   @I_vADRCNTCT char(60) output,   @I_vADDRESS1 char(60) output,   @I_vADDRESS2 char(60) output,   @I_vADDRESS3 char(60) output,   @I_vCITY  char(35) output,   @I_vCOUNTY char(60) output,   @I_vSTATE char(29) output,   @I_vZIPCODE char(10) output,   @I_vCOUNTRY char(60) output,   @I_vPHONE1 char(20) output,   @I_vPHONE2 char(20) output,   @I_vPHONE3 char(20) output,   @I_vFAXNUMBR char(20) output,   @I_vCCode char(6) output,   @I_vUpdateIfExists tinyint output,  @I_vRequesterTrx smallint output,  @I_vUSRDEFND1 char(50) output,   @I_vUSRDEFND2 char(50) output,       @I_vUSRDEFND3 char(50) output,       @I_vUSRDEFND4 varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateLocationPre] TO [DYNGRP]
GO
