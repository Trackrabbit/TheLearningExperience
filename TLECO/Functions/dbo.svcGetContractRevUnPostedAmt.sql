SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractRevUnPostedAmt]  (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5)  ) RETURNS  numeric (19,5) as BEGIN declare @GLUnPostedAmt numeric(19,5)  select @GLUnPostedAmt = isnull(sum((Transaction_Amount - SVC_Invoice_Credit_Amoun - DSCDLRAM)),0) from SVC00604 where Status = 0  and CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  RETURN isnull(@GLUnPostedAmt,0)  END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractRevUnPostedAmt] TO [DYNGRP]
GO
