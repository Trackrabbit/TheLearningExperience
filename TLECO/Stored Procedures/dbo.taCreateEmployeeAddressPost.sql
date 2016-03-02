SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateEmployeeAddressPost]  @I_vEMPLOYID char(15),    @I_vADRSCODE char(15),    @I_vADDRESS1 char(60),    @I_vADDRESS2 char(60),    @I_vADDRESS3 char(60),    @I_vCITY char(35),    @I_vSTATE char(29),    @I_vZIPCODE char(10),    @I_vCOUNTY char(60),    @I_vCOUNTRY char(60),    @I_vPHONE1 char(21),    @I_vPHONE2 char(21),    @I_vPHONE3 char(21),    @I_vFAX char(21),    @I_vForeign_Address tinyint,   @I_vForeign_StateProvince char(23),  @I_vForeign_Postal_Code char(15),  @I_vCCode char(6),    @I_vUpdateIfExists tinyint,   @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50) ,       @I_vUSRDEFND3 char(50) ,       @I_vUSRDEFND4 varchar(8000) ,       @I_vUSRDEFND5 varchar(8000) ,       @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateEmployeeAddressPost] TO [DYNGRP]
GO
