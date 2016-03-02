SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcGetContractSiteSOPCreditDate]  (@CONSTS        smallint,  @CONTNBR       char(11),  @BillToCust char(15),  @BillToAddress char(15),  @UserID char (15),  @UserDate datetime,  @svcConsolidateContractIn tinyint,  @InvoiceDate datetime OUTPUT)  As if @svcConsolidateContractIn = 0  select @InvoiceDate = max(INVODATE) from  SVC00603 WITH (NOLOCK)  left join SVC00615  ON SVC00615.CONSTS = SVC00603.CONSTS AND SVC00615.CONTNBR = SVC00603.CONTNBR   where SVC00615.MKDTOPST = 1 and SVC00603.SVC_Invoice_Credit_Amoun <> 0  and SVC00615.USERID = @UserID and SVC00615.CONSTS = @CONSTS and SVC00615.CONTNBR = @CONTNBR  AND SVC00615.Bill_To_Customer = @BillToCust AND SVC00615.SVC_Bill_To_Address_Code = @BillToAddress  AND SVC00615.svcConsolidateContractIn = 0 else  select @InvoiceDate = max(INVODATE) from  SVC00603 WITH (NOLOCK)  left join SVC00615  ON SVC00615.CONSTS = SVC00603.CONSTS AND SVC00615.CONTNBR = SVC00603.CONTNBR   where SVC00615.MKDTOPST = 1 and SVC00603.SVC_Invoice_Credit_Amoun <> 0  and SVC00615.USERID = @UserID  AND SVC00615.svcConsolidateContractIn = 1  AND SVC00615.Bill_To_Customer = @BillToCust AND SVC00615.SVC_Bill_To_Address_Code = @BillToAddress  select @InvoiceDate = isnull(@InvoiceDate,@UserDate) return    
GO
GRANT EXECUTE ON  [dbo].[svcGetContractSiteSOPCreditDate] TO [DYNGRP]
GO
