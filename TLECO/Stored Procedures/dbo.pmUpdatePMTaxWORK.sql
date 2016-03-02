SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create proc [dbo].[pmUpdatePMTaxWORK]  @cRangeValueVoucherNumber char(21) =NULL,  @cRangeValueTRXSource char(13) =NULL,  @tSetValuePosted tinyint  =NULL,  @cSetValueTRXSource char(13) =NULL,  @iErrorState     int  =NULL output as  set nocount on  select @iErrorState = 0  if  @cRangeValueVoucherNumber is NULL or  @cRangeValueTRXSource is NULL or  @tSetValuePosted is NULL or  @cSetValueTRXSource is NULL begin  select @iErrorState = 21086  return end   update  PM10500 set   POSTED    = @tSetValuePosted,  TRXSORCE   = @cSetValueTRXSource where  VCHRNMBR = @cRangeValueVoucherNumber and TRXSORCE = @cRangeValueTRXSource  return(@@error)   
GO
GRANT EXECUTE ON  [dbo].[pmUpdatePMTaxWORK] TO [DYNGRP]
GO
