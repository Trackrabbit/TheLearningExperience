SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopIvcTaxInsertPre]  @@I_vPONUMBER char(17) output,    @I_vTAXTYPE smallint output,    @I_vORD int output,     @I_vTAXDTLID char(15) output,     @I_vBKOUTTAX smallint output,     @I_vTAXAMNT numeric (19,5) output,    @I_vFRTTXAMT numeric (19,5) output,   @I_vMSCTXAMT numeric(19,5) output,   @I_vTAXPURCH numeric (19,5) output,   @I_vTOTPURCH numeric (19,5) output,   @I_vTRXSORCE char(13) output,    @I_vVENDORID char(15) output,    @I_vRequesterTrx smallint output,   @I_vUSRDEFND1 char(50) output,    @I_vUSRDEFND2 char(50) output,    @I_vUSRDEFND3 char(50) output,    @I_vUSRDEFND4 varchar(8000) output,   @I_vUSRDEFND5 varchar(8000) output,   @O_iErrorState int output,    @oErrString varchar(255) output     as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopIvcTaxInsertPre] TO [DYNGRP]
GO
