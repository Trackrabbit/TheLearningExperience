SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273511F_1] (@MSO_ProgID_Prefix_RS char(21), @MSO_ProcessorID_RS int, @MSO_ProgID_Prefix_RE char(21), @MSO_ProcessorID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @MSO_ProgID_Prefix_RS IS NULL BEGIN SELECT TOP 25  MSO_ProgID_Prefix, MSO_ProcessorID, MSO_ProcessorValue, DEX_ROW_ID FROM .MS273511 ORDER BY MSO_ProgID_Prefix ASC, MSO_ProcessorID ASC END ELSE IF @MSO_ProgID_Prefix_RS = @MSO_ProgID_Prefix_RE BEGIN SELECT TOP 25  MSO_ProgID_Prefix, MSO_ProcessorID, MSO_ProcessorValue, DEX_ROW_ID FROM .MS273511 WHERE MSO_ProgID_Prefix = @MSO_ProgID_Prefix_RS AND MSO_ProcessorID BETWEEN @MSO_ProcessorID_RS AND @MSO_ProcessorID_RE ORDER BY MSO_ProgID_Prefix ASC, MSO_ProcessorID ASC END ELSE BEGIN SELECT TOP 25  MSO_ProgID_Prefix, MSO_ProcessorID, MSO_ProcessorValue, DEX_ROW_ID FROM .MS273511 WHERE MSO_ProgID_Prefix BETWEEN @MSO_ProgID_Prefix_RS AND @MSO_ProgID_Prefix_RE AND MSO_ProcessorID BETWEEN @MSO_ProcessorID_RS AND @MSO_ProcessorID_RE ORDER BY MSO_ProgID_Prefix ASC, MSO_ProcessorID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273511F_1] TO [DYNGRP]
GO
