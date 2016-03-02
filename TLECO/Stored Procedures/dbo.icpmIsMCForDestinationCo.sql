SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmIsMCForDestinationCo]  @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint = NULL,  @I_cOrigCurrencyIndex smallint = NULL,  @I_cOrigIntercompanyID char(5)  = NULL,  @O_tIsDestMC tinyint  = NULL output,  @O_iErrorState           int             = NULL  output  as   declare  @TRUE            tinyint  select  @O_tIsDestMC  = 0,  @O_iErrorState  = 0  if  @I_cVoucherNumber is NULL or  @I_sControlType is NULL or  @I_cOrigCurrencyIndex is NULL or   @I_cOrigIntercompanyID  is NULL begin  select @O_iErrorState = 21011  return  end   select @TRUE = 1  select   @O_tIsDestMC = @TRUE where exists  (select  1   from  PM10100   where  VCHRNMBR =  @I_cVoucherNumber  and CNTRLTYP =  @I_sControlType  and ICCURRIX <> @I_cOrigCurrencyIndex   and  INTERID  <> @I_cOrigIntercompanyID) return    
GO
GRANT EXECUTE ON  [dbo].[icpmIsMCForDestinationCo] TO [DYNGRP]
GO
