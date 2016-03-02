SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_GetContractMeterInvoice] (  @CONSTS smallint,  @CONTNBR char(11),  @History tinyint,  @DOCUMENTAMOUNT numeric(19,5) OUTPUT,  @ORGDOCUMENTAMOUNT numeric(19,5) OUTPUT ) AS if @History = 1  select @DOCUMENTAMOUNT = sum(Amount_To_Invoice)+sum(Invoiced_Amount),  @ORGDOCUMENTAMOUNT = sum(Orig_Amount_To_Invoice)+sum(Orig_Invoiced_Amount)  from SVC30607 where CONTNBR = @CONTNBR and CONSTS = @CONSTS else  select @DOCUMENTAMOUNT = sum(Amount_To_Invoice)+sum(Invoiced_Amount),  @ORGDOCUMENTAMOUNT = sum(Orig_Amount_To_Invoice)+sum(Orig_Invoiced_Amount)  from SVC00607 where CONTNBR = @CONTNBR and CONSTS = @CONSTS  select @DOCUMENTAMOUNT = isnull(@DOCUMENTAMOUNT,0) select @ORGDOCUMENTAMOUNT = isnull(@ORGDOCUMENTAMOUNT,0) return     
GO
GRANT EXECUTE ON  [dbo].[SVC_GetContractMeterInvoice] TO [DYNGRP]
GO
