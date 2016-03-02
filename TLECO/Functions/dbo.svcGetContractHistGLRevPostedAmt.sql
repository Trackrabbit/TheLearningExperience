SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractHistGLRevPostedAmt]  (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5),  @GLNumber int   ) RETURNS  numeric (19,5) as BEGIN declare @GLPostedAmt numeric(19,5)  select @GLPostedAmt = isnull(sum(PSTDAMNT),0) from svcContractDeferRev30604 where   (GLNumber in (select JRNENTRY from GL20000 where JRNENTRY = @GLNumber) or GLNumber in(select JRNENTRY from GL30000 where JRNENTRY = @GLNumber))  and CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  RETURN isnull(@GLPostedAmt,0)  END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractHistGLRevPostedAmt] TO [DYNGRP]
GO
