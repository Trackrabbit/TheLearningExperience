SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[svcCheckComponentSerialLotQty]  (   @RecType smallint,  @CallNumber char(11),  @EquipLine int,  @LineSeq int,  @CMPNTSEQ int,  @Qty numeric(19,5) output ) as  select @Qty = sum(SERLTQTY) from SVC00250 where  SRVRECTYPE = @RecType and CALLNBR = @CallNumber and EQPLINE = @EquipLine and LINITMTYP = 'P'   and LNITMSEQ = @LineSeq and CMPNTSEQ = @CMPNTSEQ return    
GO
GRANT EXECUTE ON  [dbo].[svcCheckComponentSerialLotQty] TO [DYNGRP]
GO
