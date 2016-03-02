SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[svcUpdateCancelLineDate]  @CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5),  @SOPInvoiceDate datetime,  @SOP_Type smallint,  @SOP_Number char(21)  AS if exists(select * from SVC00603 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR   and svcReverseType = -98 and POSTED = 1)  update SVC00603 with (ROWLOCK)set INVODATE = @SOPInvoiceDate, svcReverseType = 8, SOPTYPE= @SOP_Type, SOPNUMBE= @SOP_Number  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and svcReverseType = -98 and POSTED = 1 if exists(select * from SVC00603 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR   and svcReverseType = -97 and POSTED = 1)  update SVC00603 with (ROWLOCK)set INVODATE = @SOPInvoiceDate, svcReverseType = 7, SOPTYPE= @SOP_Type, SOPNUMBE= @SOP_Number  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and svcReverseType = -97 and POSTED = 1 if exists(select * from SVC00603 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR   and svcReverseType = -96 and POSTED = 1)  update SVC00603 with (ROWLOCK)set INVODATE = @SOPInvoiceDate, svcReverseType = 6, SOPTYPE= @SOP_Type, SOPNUMBE= @SOP_Number  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and svcReverseType = -96 and POSTED = 1 return   
GO
GRANT EXECUTE ON  [dbo].[svcUpdateCancelLineDate] TO [DYNGRP]
GO
