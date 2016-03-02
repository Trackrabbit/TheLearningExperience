SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[NDS_InsertInto_MS273529]
  @currentDateTime AS datetime, @storedProcID AS int, @emailFrom AS varchar(100), @emailTo AS varchar(100), @subject AS varchar(100), @emailBody AS varchar(4000),
  @iMsg AS int, @hr AS int, @source AS varchar(255), @description AS varchar(500), @msgOutput AS varchar(1000), @commentAboutFailure AS varchar(50)
 AS 
  IF(@iMsg IS NULL) BEGIN  SET @iMsg = 1  END
  IF(@hr IS NULL)   BEGIN  SET @hr = 1    END
  INSERT INTO [dbo].[MS273529]
  VALUES 
  (dbo.NDS_UDF_GetDate(@currentDateTime), dbo.NDS_UDF_GetTime(@currentDateTime), 
   ISNULL(@storedProcID, 0), ISNULL(@emailFrom, ''),
   ISNULL(@emailTo, ''), ISNULL(@subject, ''),
   ISNULL(@iMsg, 0), ISNULL(@hr, 0), ISNULL(@source, ''),
   ISNULL(SUBSTRING(@description, 1, 255), ''), ISNULL(SUBSTRING(@description, 256, 255), ''),
   ISNULL(SUBSTRING(@msgOutput, 1, 255), ''), ISNULL(SUBSTRING(@msgOutput, 256, 255), ''), 
   ISNULL(SUBSTRING(@msgOutput, 512, 255), ''), ISNULL(SUBSTRING(@msgOutput, 768, 255), ''),
   ISNULL(@commentAboutFailure, '')
  )
GO
GRANT EXECUTE ON  [dbo].[NDS_InsertInto_MS273529] TO [DYNGRP]
GO
