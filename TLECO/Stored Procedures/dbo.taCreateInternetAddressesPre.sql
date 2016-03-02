SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateInternetAddressesPre]  @I_vMaster_Type char(3) output,    @I_vMaster_ID char(30) output,  @I_vADRSCODE char(15) output,  @I_vINET1  char(200) output,  @I_vINET2 char(200) output,  @I_vINET3 char(200) output,  @I_vINET4 char(200) output,  @I_vINET5 char(200) output,  @I_vINET6 char(200) output,  @I_vINET7 char(200) output,  @I_vINET8 char(200) output,  @I_vINETINFO text output,  @I_vMessenger_Address char(200) output,  @I_vEmailBccAddress text output,  @I_vEmailCcAddress text output,   @I_vEmailToAddress text output,   @I_vUSRDEFND1   char(50) output,  @I_vUSRDEFND2  char(50) output,  @I_vUSRDEFND3  char(50) output,  @I_vUSRDEFND4  varchar(8000) output,  @I_vUSRDEFND5 varchar(8000) output,  @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateInternetAddressesPre] TO [DYNGRP]
GO
