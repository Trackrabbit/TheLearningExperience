SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create proc [dbo].[pmUpdateDistributionWORKOPEN]  @cRangeValueVoucherNumber char(21) =NULL,  @sRangeValueControlType smallint =NULL,  @sSetValuePostingStatus smallint =NULL,  @cSetValueTRXSource char(13) =NULL,  @dSetValuePostingDate datetime =NULL,  @iErrorState     int  =NULL output as  set nocount on  select @iErrorState = 0  if  @cRangeValueVoucherNumber  is NULL or  @sRangeValueControlType  is NULL or  @sSetValuePostingStatus  is NULL or  @cSetValueTRXSource   is NULL or  @dSetValuePostingDate   is NULL begin  select @iErrorState = 21085  return end   update  PM10100 set   PSTGSTUS  = @sSetValuePostingStatus,  TRXSORCE   = @cSetValueTRXSource,  PSTGDATE  = @dSetValuePostingDate where  VCHRNMBR = @cRangeValueVoucherNumber and  CNTRLTYP = @sRangeValueControlType  return(@@error)   
GO
GRANT EXECUTE ON  [dbo].[pmUpdateDistributionWORKOPEN] TO [DYNGRP]
GO
