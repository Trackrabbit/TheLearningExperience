SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Check_Bin_Qty]  (@DocType smallint,  @RecType smallint,  @DocNumber char(20),  @Line numeric(19,5),  @QTY numeric(19,5) output,  @CMPNTSEQ int = 0  ) As  if @DocType = 1   select @QTY = sum(QUANTITY) from SVC00212 where SRVRECTYPE = @RecType and CALLNBR = @DocNumber  and EQPLINE = 1 and LINITMTYP = 'P' and LNITMSEQ = @Line and CMPNTSEQ = @CMPNTSEQ else if @DocType = 2  begin  select @QTY = sum(QUANTITY) from SVC00712 where ORDDOCID = @DocNumber and LNITMSEQ = @Line and POSTED = 0  end else if @DocType = 3  select @QTY = sum(QUANTITY) from SVC05212 where Return_Record_Type = @RecType and RETDOCID = @DocNumber  and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ else if @DocType = 4  select @QTY = sum(QUANTITY) from SVC05612 where RTV_Number = @DocNumber and RTV_Line = @Line else if @DocType = 5  select @QTY = sum(QUANTITY) from SVC06112 where WORECTYPE = @RecType and WORKORDNUM = @DocNumber  and LINITMTYP = 'P' and LNITMSEQ = @Line and CMPNTSEQ = @CMPNTSEQ  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Bin_Qty] TO [DYNGRP]
GO
