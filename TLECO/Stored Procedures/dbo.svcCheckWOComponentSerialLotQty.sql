SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[svcCheckWOComponentSerialLotQty]  (   @RecType smallint,  @WO char(11),  @Line int,  @CMPNTSEQ int,  @Qty numeric(19,5) output ) as  select @Qty = sum(SERLTQTY) from SVC06120 where WORECTYPE = @RecType and WORKORDNUM = @WO   and LNITMSEQ = @Line AND LINITMTYP = 'P'AND CMPNTSEQ = @CMPNTSEQ return    
GO
GRANT EXECUTE ON  [dbo].[svcCheckWOComponentSerialLotQty] TO [DYNGRP]
GO
