SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273537L_1] (@MSO_EngineGUID_RS char(51), @SEQNUMBR_RS int, @MSO_EngineGUID_RE char(51), @SEQNUMBR_RE int) AS /* 12.00.0311.000 */ set nocount on IF @MSO_EngineGUID_RS IS NULL BEGIN SELECT TOP 25  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .MS273537 ORDER BY MSO_EngineGUID DESC, SEQNUMBR DESC END ELSE IF @MSO_EngineGUID_RS = @MSO_EngineGUID_RE BEGIN SELECT TOP 25  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .MS273537 WHERE MSO_EngineGUID = @MSO_EngineGUID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY MSO_EngineGUID DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  MSO_EngineGUID, SEQNUMBR, NDS_NodePath, NDS_NodeName, NDS_NodeValue, NDS_Encrypted, DEX_ROW_ID FROM .MS273537 WHERE MSO_EngineGUID BETWEEN @MSO_EngineGUID_RS AND @MSO_EngineGUID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY MSO_EngineGUID DESC, SEQNUMBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273537L_1] TO [DYNGRP]
GO
