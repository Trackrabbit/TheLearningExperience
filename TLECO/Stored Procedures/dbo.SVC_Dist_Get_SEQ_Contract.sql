SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Dist_Get_SEQ_Contract] (@Number as char(11),  @RecordType as smallint,  @Line as integer,  @InvoiceLine as integer,  @NextLine as integer output)  AS if @InvoiceLine = 0   select @NextLine = isnull(max(SEQNUMBR),0)+16384   from SVC00609  where CONTNBR = @Number and CONSTS = @RecordType and LNSEQNBR =@Line else  select @NextLine = isnull(max(SEQNUMBR),0)+16384   from SVC00631  where CONTNBR = @Number and CONSTS = @RecordType and LNSEQNBR =@Line and SVC_Invoice_SEQ_Number = @InvoiceLine return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Dist_Get_SEQ_Contract] TO [DYNGRP]
GO
