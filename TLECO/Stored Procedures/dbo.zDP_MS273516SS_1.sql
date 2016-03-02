SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273516SS_1] (@MSO_EngineGUID char(51), @MSO_CheckbookID char(51), @MSO_CardName char(31)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_EngineGUID, MSO_CardName, MSO_CheckbookID, MSO_Number_Days_Of_Book_, MSO_ExpiredBook_Batch_Na, DEX_ROW_ID FROM .MS273516 WHERE MSO_EngineGUID = @MSO_EngineGUID AND MSO_CheckbookID = @MSO_CheckbookID AND MSO_CardName = @MSO_CardName ORDER BY MSO_EngineGUID ASC, MSO_CheckbookID ASC, MSO_CardName ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273516SS_1] TO [DYNGRP]
GO
