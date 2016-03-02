SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateInternetAddressesPost]  @I_vMaster_Type char(3),    @I_vMaster_ID char(30),   @I_vADRSCODE char(15),   @I_vINET1  char(200),   @I_vINET2 char(200),   @I_vINET3 char(200),   @I_vINET4 char(200),   @I_vINET5 char(200),   @I_vINET6 char(200),   @I_vINET7 char(200),   @I_vINET8 char(200),   @I_vINETINFO text,    @I_vMessenger_Address char(200),  @I_vEmailBccAddress text,    @I_vEmailCcAddress text,    @I_vEmailToAddress text,    @I_vUSRDEFND1   char(50),       @I_vUSRDEFND2  char(50),       @I_vUSRDEFND3  char(50),       @I_vUSRDEFND4  varchar(8000),       @I_vUSRDEFND5 varchar(8000),       @O_iErrorState int output,   @oErrString  varchar(255) output   as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateInternetAddressesPost] TO [DYNGRP]
GO
