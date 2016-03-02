SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateCreditCardPost]  @I_vRCVBGRBX smallint,    @I_vCARDNAME char(15),    @I_vCBPAYBLE  tinyint,    @I_vCBRCVBLE tinyint,    @I_vCKBKNUM1 char(15),    @I_vACTNUMST char(75),    @I_vVENDORID  char(15),    @I_vRequesterTrx smallint,    @I_vUSERID  char(15),     @I_vCREATDDT datetime,    @I_vMODIFDT datetime,    @I_vUSRDEFND1   char(50),        @I_vUSRDEFND2  char(50),        @I_vUSRDEFND3  char(50),        @I_vUSRDEFND4  varchar(8000),        @I_vUSRDEFND5 varchar(8000),        @O_iErrorState int output,    @oErrString  varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return(@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateCreditCardPost] TO [DYNGRP]
GO
