SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[NDS_SAI10100_InsertDocsToTrf]
  @timeStamp char(25), @sopNumber char(21), @sopType smallint, @saiReleaseCount smallint, 
  @batchNumber char(15), @saiDateToPost datetime, @saiTimeToPost datetime, @prnset text 
 AS 
 BEGIN 
   INSERT INTO SAI10100 (Timestmp, SOPNUMBE, SOPTYPE, SAI_Release_Count
             , BACHNUMB, SAI_Date_To_Post, SAI_Time_To_Post , PRNSET) 
   VALUES 
    (@timeStamp, @sopNumber, @sopType, @saiReleaseCount, @batchNumber, @saiDateToPost, @saiTimeToPost, @prnset) 
 END 
GO
GRANT EXECUTE ON  [dbo].[NDS_SAI10100_InsertDocsToTrf] TO [DYNGRP]
GO
