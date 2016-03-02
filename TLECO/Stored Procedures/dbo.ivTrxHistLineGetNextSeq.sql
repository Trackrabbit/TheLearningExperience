SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create proc [dbo].[ivTrxHistLineGetNextSeq]  (@nDocType smallint = NULL, @cDocNum char(21)=NULL, @nLineSeqNum numeric(19,5) output, @iErrorState int=NULL output)  AS   BEGIN  SET nocount on  SELECT @iErrorState = 0 IF @nDocType = NULL or @cDocNum = NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  SELECT @nLineSeqNum =  isnull(MAX(LNSEQNBR),0) FROM IV30300 WHERE DOCTYPE = @nDocType AND DOCNUMBR = @cDocNum  IF @nLineSeqNum = 0  BEGIN   SELECT @nLineSeqNum = 16384  END ELSE  BEGIN  SELECT @nLineSeqNum = @nLineSeqNum + 16384  END END    
GO
GRANT EXECUTE ON  [dbo].[ivTrxHistLineGetNextSeq] TO [DYNGRP]
GO
