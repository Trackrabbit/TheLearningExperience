SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Get_ContractLineAmount]  (  @CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5),  @AmountToInvoice numeric(19,5) OUTPUT,  @OrigAmountToInvoice numeric(19,5) OUTPUT   ) As  set nocount on   select @AmountToInvoice = sum(DOCAMNT),@OrigAmountToInvoice = sum(ORDOCAMT)   from SVC00603 WITH (NOLOCK)  where @CONSTS=CONSTS and @CONTNBR=CONTNBR and @LNSEQNBR=LNSEQNBR   return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_ContractLineAmount] TO [DYNGRP]
GO
