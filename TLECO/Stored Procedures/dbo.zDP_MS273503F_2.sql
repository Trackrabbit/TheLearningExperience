SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273503F_2] (@MSO_EngineGUID_RS char(51), @MSO_EngineGUID_RE char(51)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_EngineGUID_RS IS NULL BEGIN SELECT TOP 25  USERID, MSO_EngineGUID, MSO_UserCanSelect, MSO_AllowCredit, MSO_AllowForce, MSO_AllowSale, MSO_AllowVoid, MSO_AllowBook, MSO_AllowShip, DEX_ROW_ID FROM .MS273503 ORDER BY MSO_EngineGUID ASC, DEX_ROW_ID ASC END ELSE IF @MSO_EngineGUID_RS = @MSO_EngineGUID_RE BEGIN SELECT TOP 25  USERID, MSO_EngineGUID, MSO_UserCanSelect, MSO_AllowCredit, MSO_AllowForce, MSO_AllowSale, MSO_AllowVoid, MSO_AllowBook, MSO_AllowShip, DEX_ROW_ID FROM .MS273503 WHERE MSO_EngineGUID = @MSO_EngineGUID_RS ORDER BY MSO_EngineGUID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, MSO_EngineGUID, MSO_UserCanSelect, MSO_AllowCredit, MSO_AllowForce, MSO_AllowSale, MSO_AllowVoid, MSO_AllowBook, MSO_AllowShip, DEX_ROW_ID FROM .MS273503 WHERE MSO_EngineGUID BETWEEN @MSO_EngineGUID_RS AND @MSO_EngineGUID_RE ORDER BY MSO_EngineGUID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273503F_2] TO [DYNGRP]
GO
