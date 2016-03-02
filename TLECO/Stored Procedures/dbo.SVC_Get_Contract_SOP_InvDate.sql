SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Contract_SOP_InvDate] (@CONSTS        smallint,  @CONTNBR       char(11),  @InvoiceDate datetime OUTPUT)  As declare @MeterInvDate datetime  if exists(select * from SVC00603 where CONSTS = @CONSTS and CONTNBR = @CONTNBR)  select @InvoiceDate = max(INVODATE) from SVC00603 where  CONSTS = @CONSTS and CONTNBR = @CONTNBR and POSTED=1 and svcReverseType < -89 and  (svcReverseType <> -91 and SVC_Invoice_Credit_Amoun = 0 ) else  select @InvoiceDate = NXTBLDTE from SVC00600 where CONSTS = @CONSTS and CONTNBR = @CONTNBR   select @MeterInvDate =  max(INVODATE) from SVC00607 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and Amount_To_Invoice = 0 if @MeterInvDate > @InvoiceDate or @InvoiceDate is null  select @InvoiceDate = @MeterInvDate return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Contract_SOP_InvDate] TO [DYNGRP]
GO
