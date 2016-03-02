SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taPopIvcTaxInsertPost]  @@I_vPONUMBER char(17),    @I_vTAXTYPE smallint,    @I_vORD int,     @I_vTAXDTLID char(15),     @I_vBKOUTTAX smallint,     @I_vTAXAMNT numeric (19,5),    @I_vFRTTXAMT numeric (19,5),   @I_vMSCTXAMT numeric(19,5),   @I_vTAXPURCH numeric (19,5),   @I_vTOTPURCH numeric (19,5),   @I_vTRXSORCE char(13),    @I_vVENDORID char(15),    @I_vRequesterTrx smallint,   @I_vUSRDEFND1 char(50),    @I_vUSRDEFND2 char(50),    @I_vUSRDEFND3 char(50),    @I_vUSRDEFND4 varchar(8000),   @I_vUSRDEFND5 varchar(8000),   @O_iErrorState int output,   @oErrString varchar(255) output    as  set nocount on  select @O_iErrorState = 0  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taPopIvcTaxInsertPost] TO [DYNGRP]
GO
