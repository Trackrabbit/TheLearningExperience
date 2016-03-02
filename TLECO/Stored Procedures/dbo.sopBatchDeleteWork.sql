SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create proc [dbo].[sopBatchDeleteWork]  (@cBatchSource char(15)=NULL, @cBatchNumber char(15)=NULL, @iErrorState int=NULL output)  AS  DECLARE @SopType smallint, @SopNumber char(21), @MstrNumber int BEGIN  SET nocount on  SELECT @iErrorState = 0 IF @cBatchSource=NULL or @cBatchNumber=NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  DECLARE PostedHeaderRecords CURSOR FAST_FORWARD FOR   SELECT SOPTYPE, SOPNUMBE, MSTRNUMB FROM SOP10100  WHERE SOP10100.BACHNUMB = @cBatchNumber AND SOP10100.BCHSOURC = @cBatchSource AND SOP10100.TRXSORCE <> '' OPEN PostedHeaderRecords  FETCH NEXT FROM PostedHeaderRecords   INTO @SopType, @SopNumber, @MstrNumber WHILE @@FETCH_STATUS = 0 BEGIN   EXEC sopTrxDeleteWork @SopType, @SopNumber, @MstrNumber, @iErrorState   FETCH NEXT FROM PostedHeaderRecords   INTO @SopType, @SopNumber, @MstrNumber END CLOSE PostedHeaderRecords DEALLOCATE PostedHeaderRecords  end    
GO
GRANT EXECUTE ON  [dbo].[sopBatchDeleteWork] TO [DYNGRP]
GO
