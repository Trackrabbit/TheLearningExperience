SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractLineGLRevPostedAmt]  (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5)  ) RETURNS  numeric (19,5) as BEGIN declare @GLPostedAmt numeric(19,5)  select @GLPostedAmt =  isnull(sum(dbo.svcGetContractGLRevPostedAmt(CONSTS, CONTNBR, LNSEQNBR, GLNumber)),0)  from svcContractDeferRev604  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  RETURN (@GLPostedAmt)  END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractLineGLRevPostedAmt] TO [DYNGRP]
GO
