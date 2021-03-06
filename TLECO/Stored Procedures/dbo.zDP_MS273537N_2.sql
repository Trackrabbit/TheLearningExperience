SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273537N_2] (@BS int, @MSO_EngineGUID char(51), @DEX_ROW_ID int, @MSO_EngineGUID_RS char(51), @MSO_EngineGUID_RE char(51)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_EngineGUID_RS IS NULL BEGIN SELECT TOP 25  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .MS273537 WHERE ( MSO_EngineGUID = @MSO_EngineGUID AND DEX_ROW_ID > @DEX_ROW_ID OR MSO_EngineGUID < @MSO_EngineGUID ) ORDER BY MSO_EngineGUID DESC, DEX_ROW_ID ASC END ELSE IF @MSO_EngineGUID_RS = @MSO_EngineGUID_RE BEGIN SELECT TOP 25  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .MS273537 WHERE MSO_EngineGUID = @MSO_EngineGUID_RE AND ( MSO_EngineGUID = @MSO_EngineGUID AND DEX_ROW_ID > @DEX_ROW_ID OR MSO_EngineGUID < @MSO_EngineGUID ) ORDER BY MSO_EngineGUID DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .MS273537 WHERE MSO_EngineGUID BETWEEN @MSO_EngineGUID_RE AND @MSO_EngineGUID_RS AND ( MSO_EngineGUID = @MSO_EngineGUID AND DEX_ROW_ID > @DEX_ROW_ID OR MSO_EngineGUID < @MSO_EngineGUID ) ORDER BY MSO_EngineGUID DESC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273537N_2] TO [DYNGRP]
GO
