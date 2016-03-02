SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmBackoutBreakouts]  @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint  = NULL,  @O_iErrorState int  = NULL  output as   declare  @sDUETO   smallint,  @sDUEFROM smallint,  @sROUND smallint  if @I_cVoucherNumber  is NULL or  @I_sControlType is NULL  begin  select @O_iErrorState = 21014  return end   select   @O_iErrorState = 0  select  @sDUETO  = 19,  @sDUEFROM  = 20,  @sROUND  = 16   delete  PM10100  where  VCHRNMBR  = @I_cVoucherNumber  and   CNTRLTYP  = @I_sControlType  and (DISTTYPE  = @sDUETO  or DISTTYPE  = @sDUEFROM  or  DISTTYPE  = @sROUND)  return   
GO
GRANT EXECUTE ON  [dbo].[icpmBackoutBreakouts] TO [DYNGRP]
GO
