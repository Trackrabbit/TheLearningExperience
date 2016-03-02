SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sopUpdateBulkPrintBatchStatus] @PrevBatch char(15), @NewBatch  char(15),  @SOPType smallint, @SOPNumber char(21) AS  DECLARE @PrevBatchNumber char(15) DECLARE @PrevLocationCode char(11) DECLARE @PrevSeqNumber int  DECLARE @NewAvailPickSeqNum int DECLARE @PrevBulkPrintDate datetime DECLARE @NewBulkPrintDate datetime  DECLARE PreviousBatch_Cursor CURSOR FOR  SELECT BACHNUMB, LOCNCODE, SEQNUMBR, Bulk_Print_Date  FROM SOP10206  WHERE BACHNUMB = @PrevBatch  OPEN PreviousBatch_Cursor FETCH PreviousBatch_Cursor INTO @PrevBatchNumber, @PrevLocationCode, @PrevSeqNumber, @PrevBulkPrintDate  WHILE @@FETCH_STATUS = 0 BEGIN   set @NewBulkPrintDate = ''   SELECT @NewBulkPrintDate = Bulk_Print_Date, @NewAvailPickSeqNum = SEQNUMBR  FROM SOP10206  WHERE BACHNUMB = @NewBatch  AND LOCNCODE = @PrevLocationCode  AND Bulk_Print_Date = @PrevBulkPrintDate   if @NewBulkPrintDate is NULL or @NewBulkPrintDate = ' '  begin  set @NewBulkPrintDate = @PrevBulkPrintDate   end   select @NewAvailPickSeqNum = isnull(MAX(SEQNUMBR), 0) + 1  FROM SOP10206  WHERE BACHNUMB = @NewBatch  AND LOCNCODE = @PrevLocationCode   INSERT INTO SOP10206 VALUES (@NewBatch, @PrevLocationCode, @NewAvailPickSeqNum, @NewBulkPrintDate, 0)    UPDATE SOP10207 set BACHNUMB = @NewBatch, SEQNUMBR = @NewAvailPickSeqNum  WHERE BACHNUMB = @PrevBatch and LOCNCODE = @PrevLocationCode and SEQNUMBR = @PrevSeqNumber   AND SOPNUMBE = @SOPNumber AND SOPTYPE = @SOPType   FETCH PreviousBatch_Cursor INTO @PrevBatchNumber, @PrevLocationCode, @PrevSeqNumber, @PrevBulkPrintDate END  delete from SOP10206  where BACHNUMB = @PrevBatchNumber and BACHNUMB not in (select BACHNUMB from SOP10207 where BACHNUMB = @PrevBatchNumber)  CLOSE PreviousBatch_Cursor DEALLOCATE PreviousBatch_Cursor    
GO
GRANT EXECUTE ON  [dbo].[sopUpdateBulkPrintBatchStatus] TO [DYNGRP]
GO
