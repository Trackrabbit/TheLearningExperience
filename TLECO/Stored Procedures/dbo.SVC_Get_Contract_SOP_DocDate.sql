SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Contract_SOP_DocDate]  (@CONSTS        smallint,  @CONTNBR       char(11),  @CHECKDATE datetime ,  @InvoiceDate datetime OUTPUT)  As select @InvoiceDate = max(INVODATE) from SVC00603 where  SVC00603.CONSTS = @CONSTS and  SVC00603.CONTNBR = @CONTNBR and  SVC00603.INVODATE <= @CHECKDATE and  SVC00603.POSTED = 0  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Contract_SOP_DocDate] TO [DYNGRP]
GO
