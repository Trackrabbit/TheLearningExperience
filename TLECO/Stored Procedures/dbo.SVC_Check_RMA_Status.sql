SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Check_RMA_Status]  @ReturnType smallint,  @ReturnDocID char(15),  @Status int OUTPUT AS DECLARE @Exists smallint DECLARE @ProcessLine Numeric(19,5) DECLARE @DocNumber char(31) DECLARE @ProcessType smallint DECLARE @LotSeq int DECLARE @retstat int DECLARE @TotalLines int, @TotalCustomerOwned int  begin  SET @Exists = 0  SET @Status = 0   IF @ReturnDocID <> '' AND @ReturnType = 1  IF EXISTS(SELECT * FROM SVC05000 WHERE RETDOCID = @ReturnDocID AND Return_Record_Type = @ReturnType)  SET @Exists = 1  ELSE  SET @Exists = 0   IF @Exists = 0  begin  set @Status = 1001  return 1001  end   DECLARE Delete_Process_Line CURSOR   FOR SELECT SVC_Process_SEQ_Number, SVC_Document_Number, SVC_Process_Type, SLTSQNUM   FROM SVC05210   WHERE RETDOCID = @ReturnDocID and Return_Record_Type = @ReturnType and SVC_Process_Type > 0 and SVC_Document_Number <> ''   OPEN Delete_Process_Line   FETCH NEXT FROM Delete_Process_Line INTO @ProcessLine, @DocNumber, @ProcessType, @LotSeq  WHILE @@FETCH_STATUS = 0  begin  IF @ProcessType <> 1 AND @DocNumber <> ''  begin  set @Status = 1002  DEALLOCATE Delete_Process_Line  return 1002  end   FETCH NEXT FROM Delete_Process_Line INTO @ProcessLine, @DocNumber, @ProcessType, @LotSeq  end  DEALLOCATE Delete_Process_Line   IF EXISTS(SELECT * FROM SVC05015 WHERE RETDOCID = @ReturnDocID and MKDTOPST = 1)  begin  set @Status = 1003  return 1003  end   IF EXISTS(SELECT * FROM SVC05200 WHERE RETDOCID = @ReturnDocID and Return_Record_Type = @ReturnType   AND (((RMA_Status = 5 OR RMA_Status = 8 OR RMA_Status = 9 OR RMA_Status = 10) AND Received = 1)  OR (RMA_Status = 9 AND SVC_Ready_To_Close = 1))  AND RETORIG = 2 AND (RETREF <> '' OR CALLNBR <> ''))  begin  set @Status = 1004  return 1004  end    IF EXISTS(SELECT * FROM SVC05200 WHERE RETDOCID = @ReturnDocID and Return_Record_Type = @ReturnType   AND ( Received = 1 OR (RMA_Status = 9 AND SVC_Ready_To_Close = 1))  AND ( SOP_Number_Invoice <> '' OR Replace_SOP_Number <> '' OR Credit_SOP_Number <> ''))  begin  set @Status = 1005  return 1005  end    SELECT @TotalLines = count(*) FROM SVC05200 WHERE RETDOCID = @ReturnDocID and Return_Record_Type = @ReturnType  SELECT @TotalCustomerOwned = count(*) FROM SVC05200 WHERE RETDOCID = @ReturnDocID and Return_Record_Type = @ReturnType AND CUSTOWN = 1   if @TotalLines = @TotalCustomerOwned  begin  set @Status = 1006  return 1006  end   if exists(select 1 from SVC05200 where (QTYDMGED > 0 or QTYINSVC > 0 or QTYINUSE > 0 or QTYRTRND > 0)  and RETDOCID = @ReturnDocID and Return_Record_Type = @ReturnType and CUSTOWN = 0 AND Received = 1)  begin  set @Status = 1011  return 1011  end   IF EXISTS(SELECT * FROM SVC05200 WHERE RETDOCID = @ReturnDocID and Return_Record_Type = @ReturnType  AND (((RMA_Status = 5 OR RMA_Status = 8 OR RMA_Status = 9 OR RMA_Status = 7) AND Received = 1)  OR (RMA_Status = 9 AND SVC_Ready_To_Close = 1)))  begin  set @Status = 1007  return 1007  end   IF EXISTS(SELECT * FROM SVC05200 WHERE RETDOCID = @ReturnDocID and Return_Record_Type = @ReturnType  AND (((RMA_Status = 1 OR RMA_Status = 2 OR RMA_Status = 3 OR RMA_Status = 4) AND Received = 1)  OR (RMA_Status = 9 AND SVC_Ready_To_Close = 1))  AND RETORIG = 1 AND (SOPNUMBE <> '' OR Replace_SOP_Number <> '' OR Credit_SOP_Number <> ''))  begin  set @Status = 1008  return 1008  end   IF EXISTS(SELECT * FROM SVC05200 WHERE RETDOCID = @ReturnDocID and Return_Record_Type = @ReturnType  AND (((RMA_Status = 1 OR RMA_Status = 2 OR RMA_Status = 3 OR RMA_Status = 4) AND Received = 1)  OR (RMA_Status = 9 AND SVC_Ready_To_Close = 1)))  begin  set @Status = 1009  return 1009  end   return 0 end    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_RMA_Status] TO [DYNGRP]
GO
