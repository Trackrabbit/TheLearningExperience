SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create PROCEDURE [dbo].[SVC_CONT_EstLineInvoice]  @CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5),  @CHECKDATE datetime,   @TOTALINVOICED numeric(19,5) OUTPUT,  @TOTALCREDITED numeric(19,5) OUTPUT,  @TOTDISCOUNT numeric(19,5) OUTPUT AS  select @TOTALINVOICED = SUM(IsNull(SVC00603.ORDOCAMT,0)),  @TOTALCREDITED = SUM(IsNull(SVC00603.OrigInvCreditAmt,0)),  @TOTDISCOUNT = SUM(IsNull(SVC00603.ORDDLRAT,0)) from  SVC00603  where  SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and   SVC00603.LNSEQNBR = @LNSEQNBR and  SVC00603.INVODATE <= @CHECKDATE and  SVC00603.POSTED = 0  select  @TOTALINVOICED = IsNull(@TOTALINVOICED,0) - IsNull(@TOTDISCOUNT,0),  @TOTALCREDITED = IsNull(@TOTALCREDITED,0),  @TOTDISCOUNT = IsNull(@TOTDISCOUNT,0) return   
GO
GRANT EXECUTE ON  [dbo].[SVC_CONT_EstLineInvoice] TO [DYNGRP]
GO
