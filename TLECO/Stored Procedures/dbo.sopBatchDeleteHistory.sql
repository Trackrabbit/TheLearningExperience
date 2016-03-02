SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create proc [dbo].[sopBatchDeleteHistory] (@cBatchSource char(15)=NULL, @cBatchNumber char(15)=NULL, @TrxSource char(13)=NULL,   @KeepHistory smallint=NULL, @KeepDistributionHistory smallint=NULL, @iErrorState int=NULL output)  AS  DECLARE @SopType smallint, @SopNumber char(21) BEGIN  SET nocount on  SELECT @iErrorState = 0 IF @cBatchSource=NULL or @cBatchNumber=NULL or @TrxSource=NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  DECLARE PostedHeaderRecords CURSOR FAST_FORWARD FOR   SELECT SOPTYPE, SOPNUMBE FROM SOP10100  WHERE SOP10100.BACHNUMB = @cBatchNumber AND SOP10100.BCHSOURC = @cBatchSource AND SOP10100.TRXSORCE = @TrxSource OPEN PostedHeaderRecords  FETCH NEXT FROM PostedHeaderRecords   INTO @SopType, @SopNumber WHILE @@FETCH_STATUS = 0 BEGIN   EXEC sopTrxDeleteHistory @SopType, @SopNumber, @TrxSource, @KeepHistory, @KeepDistributionHistory, @iErrorState   FETCH NEXT FROM PostedHeaderRecords   INTO @SopType, @SopNumber END CLOSE PostedHeaderRecords DEALLOCATE PostedHeaderRecords  end   
GO
GRANT EXECUTE ON  [dbo].[sopBatchDeleteHistory] TO [DYNGRP]
GO
