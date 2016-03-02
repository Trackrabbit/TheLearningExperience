SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[svcCLSetContractTotals] (  @CONSTS smallint,  @CONTNBR char(11) ) As declare @DOCUMENTAMOUNT numeric(19,2), @ORGDOCUMENTAMOUNT numeric(19,2) set nocount on  select  @DOCUMENTAMOUNT = SUM(IsNull(DOCAMNT,0)) - SUM(IsNull(SVC_Invoice_Credit_Amoun,0)),   @ORGDOCUMENTAMOUNT = SUM(IsNull(ORDOCAMT,0)) - SUM(IsNull(OrigInvCreditAmt,0))   FROM SVC00603  WHERE (CONSTS = @CONSTS) AND (CONTNBR = @CONTNBR) update SVC00600 with (rowlock) set TOTAL = isnull(@DOCUMENTAMOUNT,0), ORIGTOTAL = isnull(@ORGDOCUMENTAMOUNT,0)  WHERE (CONSTS = @CONSTS) AND (CONTNBR = @CONTNBR) return     
GO
GRANT EXECUTE ON  [dbo].[svcCLSetContractTotals] TO [DYNGRP]
GO
