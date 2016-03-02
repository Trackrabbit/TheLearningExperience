SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmRemoveDestinationDists]  @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint  = NULL,  @I_cIntercompanyID char(5)  = NULL,  @O_iErrorState int  = NULL  output  as   if @I_cVoucherNumber  is NULL or  @I_sControlType is NULL or  @I_cIntercompanyID is NULL begin  select @O_iErrorState = 21015  return end   select   @O_iErrorState = 0   delete  PM10100  where  VCHRNMBR = @I_cVoucherNumber  and   CNTRLTYP = @I_sControlType  and INTERID <> @I_cIntercompanyID  return   
GO
GRANT EXECUTE ON  [dbo].[icpmRemoveDestinationDists] TO [DYNGRP]
GO
