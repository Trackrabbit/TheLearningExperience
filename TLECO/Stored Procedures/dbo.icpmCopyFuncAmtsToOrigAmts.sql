SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmCopyFuncAmtsToOrigAmts]  @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint = NULL,  @O_iErrorState           int             = NULL  output  as   select  @O_iErrorState   = 0  if  @I_cVoucherNumber is NULL or  @I_sControlType is NULL  begin  select @O_iErrorState = 21016  return end   update  PM10100 set  ORCRDAMT  = CRDTAMNT,  ORDBTAMT = DEBITAMT where  VCHRNMBR  = @I_cVoucherNumber and CNTRLTYP  = @I_sControlType  return   
GO
GRANT EXECUTE ON  [dbo].[icpmCopyFuncAmtsToOrigAmts] TO [DYNGRP]
GO
