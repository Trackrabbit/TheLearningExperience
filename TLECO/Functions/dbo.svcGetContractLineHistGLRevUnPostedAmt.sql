SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractLineHistGLRevUnPostedAmt]  (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5)  ) RETURNS  numeric (19,5) as BEGIN declare @GLPostedAmt numeric(19,5)  select @GLPostedAmt =  isnull(sum(dbo.svcGetContractHistGLRevUnPostedAmt(CONSTS, CONTNBR, LNSEQNBR, GLNumber)),0)  from svcContractDeferRev30604  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  RETURN isnull(@GLPostedAmt,0)  END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractLineHistGLRevUnPostedAmt] TO [DYNGRP]
GO
