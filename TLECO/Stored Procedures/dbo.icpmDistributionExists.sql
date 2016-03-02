SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmDistributionExists]  @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint = NULL,  @I_cIntercompanyID char(5)  = NULL,  @I_tSearchForOtherDists tinyint  = NULL,  @O_tDistributionsExist tinyint  = NULL output,  @O_iErrorState int  = NULL  output  as   declare  @TRUE   tinyint  select   @O_tDistributionsExist = 0,  @O_iErrorState = 0  if @I_cVoucherNumber  is NULL or  @I_sControlType is NULL or  @I_cIntercompanyID is NULL or  @I_tSearchForOtherDists is NULL begin  select @O_iErrorState = 21007  return end   select @TRUE = 1  if @I_tSearchForOtherDists = @TRUE begin  select   @O_tDistributionsExist = @TRUE   where  exists   (select   1  from  PM10100   where   VCHRNMBR = @I_cVoucherNumber  and CNTRLTYP = @I_sControlType  and  INTERID <> @I_cIntercompanyID) end else begin  select   @O_tDistributionsExist = @TRUE   where  exists   (select   1  from  PM10100   where   VCHRNMBR = @I_cVoucherNumber  and CNTRLTYP = @I_sControlType  and  INTERID  = @I_cIntercompanyID) end  return   
GO
GRANT EXECUTE ON  [dbo].[icpmDistributionExists] TO [DYNGRP]
GO
