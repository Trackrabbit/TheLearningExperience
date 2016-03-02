SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractLineLiabIndex] (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5)  ) RETURNS  int as BEGIN declare @REVLIABACTINDX int   if exists(select 1 from SVC00609 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR )  select @REVLIABACTINDX = isnull(ACTINDX, 0) from SVC00609   where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and SVC_Distribution_Type = 11   else  select @REVLIABACTINDX = isnull(ACTINDX, 0) from SVC30609   where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and SVC_Distribution_Type = 11   RETURN isnull(@REVLIABACTINDX,0) END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractLineLiabIndex] TO [DYNGRP]
GO
