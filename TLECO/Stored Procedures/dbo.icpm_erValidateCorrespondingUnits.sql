SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpm_erValidateCorrespondingUnits]  @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint = NULL,  @O_tValidCUs tinyint  = NULL output,  @O_iErrorState int  = NULL  output  as   declare  @TRUE   tinyint  select   @O_tValidCUs = 0,  @O_iErrorState = 0  if @I_cVoucherNumber is NULL or  @I_sControlType is NULL  begin  select @O_iErrorState = 21073  return end   select @TRUE = 1  select   @O_tValidCUs = @TRUE where   not exists(select   1   from   PM10100 with (NOLOCK)  where   VCHRNMBR = @I_cVoucherNumber  and  CNTRLTYP = @I_sControlType  and  CorrespondingUnit <> ''  and  CorrespondingUnit   not in (select   INTERID   from   PM10100 with (NOLOCK)  where   VCHRNMBR = @I_cVoucherNumber  and  CNTRLTYP = @I_sControlType))  return   
GO
GRANT EXECUTE ON  [dbo].[icpm_erValidateCorrespondingUnits] TO [DYNGRP]
GO
