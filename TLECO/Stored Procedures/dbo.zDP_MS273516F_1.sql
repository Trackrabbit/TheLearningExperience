SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273516F_1] (@MSO_EngineGUID_RS char(51), @MSO_CheckbookID_RS char(51), @MSO_CardName_RS char(31), @MSO_EngineGUID_RE char(51), @MSO_CheckbookID_RE char(51), @MSO_CardName_RE char(31)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_EngineGUID_RS IS NULL BEGIN SELECT TOP 25  MSO_EngineGUID, MSO_CardName, MSO_CheckbookID, MSO_Number_Days_Of_Book_, MSO_ExpiredBook_Batch_Na, DEX_ROW_ID FROM .MS273516 ORDER BY MSO_EngineGUID ASC, MSO_CheckbookID ASC, MSO_CardName ASC END ELSE IF @MSO_EngineGUID_RS = @MSO_EngineGUID_RE BEGIN SELECT TOP 25  MSO_EngineGUID, MSO_CardName, MSO_CheckbookID, MSO_Number_Days_Of_Book_, MSO_ExpiredBook_Batch_Na, DEX_ROW_ID FROM .MS273516 WHERE MSO_EngineGUID = @MSO_EngineGUID_RS AND MSO_CheckbookID BETWEEN @MSO_CheckbookID_RS AND @MSO_CheckbookID_RE AND MSO_CardName BETWEEN @MSO_CardName_RS AND @MSO_CardName_RE ORDER BY MSO_EngineGUID ASC, MSO_CheckbookID ASC, MSO_CardName ASC END ELSE BEGIN SELECT TOP 25  MSO_EngineGUID, MSO_CardName, MSO_CheckbookID, MSO_Number_Days_Of_Book_, MSO_ExpiredBook_Batch_Na, DEX_ROW_ID FROM .MS273516 WHERE MSO_EngineGUID BETWEEN @MSO_EngineGUID_RS AND @MSO_EngineGUID_RE AND MSO_CheckbookID BETWEEN @MSO_CheckbookID_RS AND @MSO_CheckbookID_RE AND MSO_CardName BETWEEN @MSO_CardName_RS AND @MSO_CardName_RE ORDER BY MSO_EngineGUID ASC, MSO_CheckbookID ASC, MSO_CardName ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273516F_1] TO [DYNGRP]
GO
