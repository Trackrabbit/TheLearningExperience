SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractHistRevPostedAmt]  (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5)  ) RETURNS  numeric (19,5) as BEGIN declare @GLPostedAmt numeric(19,5)  select @GLPostedAmt = isnull(sum(PSTDAMNT),0) from SVC30604 where SourceTrxDocumentNumber <> '' and PSTDAMNT> 0  and CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  RETURN isnull(@GLPostedAmt,0)  END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractHistRevPostedAmt] TO [DYNGRP]
GO
