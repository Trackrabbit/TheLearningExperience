SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create Procedure [dbo].[SVC_GetContractInvoiceStatus] (  @CONSTS smallint,  @CONTNBR char(11),  @CanInvoice tinyint OUTPUT ) As set nocount on  if exists(select * FROM SVC00603 WHERE (CONSTS = @CONSTS) AND (CONTNBR = @CONTNBR) and POSTED = 0)  select @CanInvoice = 1 else  select @CanInvoice = 0  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_GetContractInvoiceStatus] TO [DYNGRP]
GO
