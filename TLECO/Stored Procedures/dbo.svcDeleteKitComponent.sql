SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcDeleteKitComponent]  @RecType smallint,   @DocNumber char(15),   @EquipLine  int,  @Line int  As  delete from SVC00203 where  SRVRECTYPE = @RecType AND CALLNBR = @DocNumber AND LINITMTYP = 'P' and  EQPLINE = @EquipLine and LNITMSEQ = @Line AND CMPNTSEQ <> 0  return (0)    
GO
GRANT EXECUTE ON  [dbo].[svcDeleteKitComponent] TO [DYNGRP]
GO
