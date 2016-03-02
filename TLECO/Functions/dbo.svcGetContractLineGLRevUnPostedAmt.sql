SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractLineGLRevUnPostedAmt]  (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5)  ) RETURNS  numeric (19,5) as BEGIN declare @GLPostedAmt numeric(19,5)  select @GLPostedAmt =  isnull(sum(dbo.svcGetContractGLRevUnPostedAmt(CONSTS, CONTNBR, LNSEQNBR, GLNumber)),0)  from svcContractDeferRev604  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  RETURN isnull(@GLPostedAmt,0)  END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractLineGLRevUnPostedAmt] TO [DYNGRP]
GO
