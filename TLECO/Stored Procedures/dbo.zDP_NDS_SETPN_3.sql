SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NDS_SETPN_3] (@BS int, @MSO_EngineGUID char(51), @NDS_NodePath char(101), @DEX_ROW_ID int, @MSO_EngineGUID_RS char(51), @NDS_NodePath_RS char(101), @MSO_EngineGUID_RE char(51), @NDS_NodePath_RE char(101)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_EngineGUID_RS IS NULL BEGIN SELECT TOP 25  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .NDS_SETP WHERE ( MSO_EngineGUID = @MSO_EngineGUID AND NDS_NodePath = @NDS_NodePath AND DEX_ROW_ID > @DEX_ROW_ID OR MSO_EngineGUID = @MSO_EngineGUID AND NDS_NodePath > @NDS_NodePath OR MSO_EngineGUID > @MSO_EngineGUID ) ORDER BY MSO_EngineGUID ASC, NDS_NodePath ASC, DEX_ROW_ID ASC END ELSE IF @MSO_EngineGUID_RS = @MSO_EngineGUID_RE BEGIN SELECT TOP 25  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .NDS_SETP WHERE MSO_EngineGUID = @MSO_EngineGUID_RS AND NDS_NodePath BETWEEN @NDS_NodePath_RS AND @NDS_NodePath_RE AND ( MSO_EngineGUID = @MSO_EngineGUID AND NDS_NodePath = @NDS_NodePath AND DEX_ROW_ID > @DEX_ROW_ID OR MSO_EngineGUID = @MSO_EngineGUID AND NDS_NodePath > @NDS_NodePath OR MSO_EngineGUID > @MSO_EngineGUID ) ORDER BY MSO_EngineGUID ASC, NDS_NodePath ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .NDS_SETP WHERE MSO_EngineGUID BETWEEN @MSO_EngineGUID_RS AND @MSO_EngineGUID_RE AND NDS_NodePath BETWEEN @NDS_NodePath_RS AND @NDS_NodePath_RE AND ( MSO_EngineGUID = @MSO_EngineGUID AND NDS_NodePath = @NDS_NodePath AND DEX_ROW_ID > @DEX_ROW_ID OR MSO_EngineGUID = @MSO_EngineGUID AND NDS_NodePath > @NDS_NodePath OR MSO_EngineGUID > @MSO_EngineGUID ) ORDER BY MSO_EngineGUID ASC, NDS_NodePath ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NDS_SETPN_3] TO [DYNGRP]
GO
