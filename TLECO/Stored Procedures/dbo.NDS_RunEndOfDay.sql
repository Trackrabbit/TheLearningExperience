SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[NDS_RunEndOfDay]
 AS 
 BEGIN 
   DECLARE @RC int, @SetupGUID varchar(51), @SettlementTime datetime 
   DECLARE setup_Cursor CURSOR FOR 
     SELECT MSO_EngineGUID, MSO_Settlement_Time FROM MS273501 WHERE MSO_ProgID <> 'NetConnect' 
   
   OPEN setup_Cursor 
   
   FETCH NEXT FROM setup_Cursor INTO @SetupGUID, @SettlementTime 
   WHILE (@@FETCH_STATUS = 0) 
   BEGIN
     EXEC @RC = NDS_EndOfDay @SetupGUID, @SettlementTime 
     FETCH NEXT FROM setup_Cursor INTO @SetupGUID, @SettlementTime 
   END
   
   CLOSE setup_Cursor 
   DEALLOCATE setup_Cursor 
 END 
GO
GRANT EXECUTE ON  [dbo].[NDS_RunEndOfDay] TO [DYNGRP]
GO
