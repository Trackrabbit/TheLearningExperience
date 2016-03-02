SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create proc [dbo].[ivTrxHistLineDTLGetNextSeq]  (@nDocType smallint = NULL, @cDocNum char(21)=NULL, @nLineSeqNum numeric(19,5), @nLineSeqDTLNum smallint output, @iErrorState int=NULL output)  AS  BEGIN  SET nocount on  SELECT @iErrorState = 0 IF @nDocType = NULL or @cDocNum = NULL or @nLineSeqNum = NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  SELECT @nLineSeqDTLNum =  isnull(MAX(DTLSEQNM),0) FROM IV30301 WHERE DOCTYPE = @nDocType AND DOCNUMBR = @cDocNum AND LNSEQNBR = @nLineSeqNum  IF @nLineSeqDTLNum = 0  BEGIN   SELECT @nLineSeqDTLNum = 1  END ELSE  BEGIN  SELECT @nLineSeqDTLNum = @nLineSeqDTLNum + 1  END END    
GO
GRANT EXECUTE ON  [dbo].[ivTrxHistLineDTLGetNextSeq] TO [DYNGRP]
GO
