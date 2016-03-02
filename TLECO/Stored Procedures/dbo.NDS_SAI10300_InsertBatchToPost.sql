SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[NDS_SAI10300_InsertBatchToPost]
   @serverID char(1), @batchNumber char(15), @saiPostTrxLimit smallint, @date datetime, @time datetime 
 AS 
 BEGIN 
   INSERT INTO SAI10300 (SAI_Server_ID, BACHNUMB, SAI_Post_Trx_Limit, SAI_Date_To_Post, SAI_Time_To_Post) 
   VALUES (@serverID, @batchNumber, @saiPostTrxLimit, @date, @time) 
 END 
GO
GRANT EXECUTE ON  [dbo].[NDS_SAI10300_InsertBatchToPost] TO [DYNGRP]
GO
