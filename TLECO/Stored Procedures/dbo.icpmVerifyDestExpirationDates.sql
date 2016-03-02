SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmVerifyDestExpirationDates]  @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint = NULL,  @I_dNewDate datetime = NULL,  @I_cOrigICID char(5)  = NULL,  @O_tRateExpired tinyint  = NULL output,  @O_iErrorState          int             = NULL  output  as   declare  @TRUE           tinyint,  @dMinDate datetime,  @iStatus int  select  @O_tRateExpired = 0,  @O_iErrorState  = 0  exec @iStatus = smGetMinDate @dMinDate output  if  @I_cVoucherNumber is NULL or  @I_sControlType is NULL or  @I_dNewDate is NULL or   @I_cOrigICID is NULL begin  select @O_iErrorState = 21012  return  end   select @TRUE = 1  select   @O_tRateExpired = @TRUE where exists  (select  1   from  PM10100   where  VCHRNMBR  =  @I_cVoucherNumber   and CNTRLTYP  =  @I_sControlType  and INTERID  <>  @I_cOrigICID  and XCHGRATE <>  0.0   and EXPNDATE  <>   @dMinDate   and  EXPNDATE <  @I_dNewDate) return    
GO
GRANT EXECUTE ON  [dbo].[icpmVerifyDestExpirationDates] TO [DYNGRP]
GO
