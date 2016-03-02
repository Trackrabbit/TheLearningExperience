SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmDeleteRoundingDistribution]  @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint = NULL,  @O_tDistributionDeleted  tinyint  = NULL output,  @O_iErrorState int  = NULL  output  as   declare  @TRUE tinyint,  @FALSE  tinyint,  @sROUND smallint  select   @O_tDistributionDeleted  = 0,  @O_iErrorState    = 0  if @I_cVoucherNumber  is NULL or  @I_sControlType is NULL begin  select @O_iErrorState = 21006  return end   select  @TRUE  = 1,  @FALSE  = 0,  @sROUND = 16   delete  PM10100  where  VCHRNMBR = @I_cVoucherNumber  and    CNTRLTYP = @I_sControlType  and DISTTYPE = @sROUND  if @@rowcount <> 0   select @O_tDistributionDeleted = @TRUE  else  select @O_tDistributionDeleted = @FALSE   return   
GO
GRANT EXECUTE ON  [dbo].[icpmDeleteRoundingDistribution] TO [DYNGRP]
GO
