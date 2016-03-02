SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[NDS_MS273535_iu]
  @date datetime, @time datetime, @stage int, @orderNumber varchar(20), @invoiceNumber varchar(20), @errCode int, @errDesc varchar(1000) 
 AS 
 BEGIN 
   DECLARE @errDesc1 varchar(255), @errDesc2 varchar(255) 
   SET @errDesc1 = SUBSTRING(@errDesc, 1, 255) 
   SET @errDesc2 = SUBSTRING(@errDesc, 256, 255) 
   INSERT INTO MS273535 (
      NDS_Date, NDS_Time, NDS_Stage, MSO_Doc_Number, NDS_Doc_Number2, NDS_ErrorCode, NDS_Failure_Description1, NDS_Failure_Description2)
   VALUES 
   (@date, @time, @stage, @orderNumber, @invoiceNumber, @errCode, @errDesc1, @errDesc2) 
   
 END 
GO
GRANT EXECUTE ON  [dbo].[NDS_MS273535_iu] TO [DYNGRP]
GO
