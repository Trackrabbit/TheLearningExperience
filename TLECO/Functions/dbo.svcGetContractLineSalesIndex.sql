SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractLineSalesIndex] (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5)  ) RETURNS  int as BEGIN declare @REVSALESACTINDX int  if exists(select 1 from SVC00609 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR )  select  @REVSALESACTINDX = isnull(ACTINDX, 0) from SVC00609   where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and SVC_Distribution_Type = 1    else  select  @REVSALESACTINDX = isnull(ACTINDX, 0) from SVC30609   where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and SVC_Distribution_Type = 1    RETURN isnull(@REVSALESACTINDX,0) END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractLineSalesIndex] TO [DYNGRP]
GO
