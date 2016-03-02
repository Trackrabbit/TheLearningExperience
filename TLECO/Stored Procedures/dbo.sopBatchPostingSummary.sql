SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create proc [dbo].[sopBatchPostingSummary] (@cBatchSource char(15)=NULL, @cBatchNumber char(15)=NULL,  @CountPostedTransactions integer=NULL output, @CountUnpostedTransactions integer=NULL output,  @AmountUnpostedTransactions numeric(19,5)=NULL output,   @iErrorState int=NULL output)  AS  BEGIN  SET nocount on  SELECT @iErrorState = 0 IF @cBatchSource=NULL or @cBatchNumber=NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  SELECT @CountUnpostedTransactions = COUNT(*),  @AmountUnpostedTransactions = SUM(DOCAMNT)  FROM SOP10100  WHERE SOP10100.BACHNUMB = @cBatchNumber AND SOP10100.BCHSOURC = @cBatchSource AND SOP10100.TRXSORCE = ''  SELECT @CountPostedTransactions = COUNT(*)  FROM SOP10100  WHERE SOP10100.BACHNUMB = @cBatchNumber AND SOP10100.BCHSOURC = @cBatchSource AND SOP10100.TRXSORCE <> ''  end   
GO
GRANT EXECUTE ON  [dbo].[sopBatchPostingSummary] TO [DYNGRP]
GO
