SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractLineNonBilledAmount] (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5)  ) RETURNS  numeric (19,5) as BEGIN declare @NonInvoicedContractBillings numeric (19,5)  select @NonInvoicedContractBillings = isnull(sum(DOCAMNT - SVC_Invoice_Credit_Amoun - DSCDLRAM), 0)  from SVC00603   where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR   and POSTED = 0 and PSTDAMNT = 0   RETURN isnull(@NonInvoicedContractBillings,0) END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractLineNonBilledAmount] TO [DYNGRP]
GO
