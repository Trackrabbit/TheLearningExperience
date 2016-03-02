SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateCreditCardPre]  @I_vRCVBGRBX smallint output,   @I_vCARDNAME char(15) output,   @I_vCBPAYBLE  tinyint output,    @I_vCBRCVBLE tinyint output,    @I_vCKBKNUM1 char(15) output,   @I_vACTNUMST char(75) output,   @I_vVENDORID  char(15) output,   @I_vRequesterTrx smallint output,   @I_vUSERID char(15) output,   @I_vCREATDDT datetime output,   @I_vMODIFDT datetime output,   @I_vUSRDEFND1   char(50) output,       @I_vUSRDEFND2  char(50) output,       @I_vUSRDEFND3  char(50) output,       @I_vUSRDEFND4  varchar(8000) output,       @I_vUSRDEFND5 varchar(8000) output,       @O_iErrorState int output,    @oErrString  varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return(@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateCreditCardPre] TO [DYNGRP]
GO
