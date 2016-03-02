SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Bin_UpdatePosted]  (@DocType smallint,  @RecType smallint,  @DocNumber char(20),  @Line numeric(19,5),  @posted tinyint,  @CMPNTSEQ int = 0 ) As  if @DocType = 1   update SVC00212 set MKDTOPST = 1 where POSTED = @posted and  SRVRECTYPE = @RecType and CALLNBR = @DocNumber and EQPLINE = 1 and LINITMTYP = 'P' and LNITMSEQ = @Line else if @DocType = 2  update SVC00712 set POSTED = 1 where  ORDDOCID = @DocNumber and LNITMSEQ = @Line else if @DocType = 3  update SVC05212 set POSTED = 1 where  Return_Record_Type = @RecType and RETDOCID = @DocNumber and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ else if @DocType = 4  update SVC05612 set POSTED = 1 where  RTV_Number = @DocNumber else if @DocType = 5  update SVC06112 set MKDTOPST = 1 where POSTED = @posted and  WORECTYPE = @RecType and WORKORDNUM = @DocNumber and LINITMTYP = 'P' and LNITMSEQ = @Line and CMPNTSEQ = @CMPNTSEQ  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Bin_UpdatePosted] TO [DYNGRP]
GO
