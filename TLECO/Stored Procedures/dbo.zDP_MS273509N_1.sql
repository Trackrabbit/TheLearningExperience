SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273509N_1] (@BS int, @MSO_ProgID_Prefix char(21), @MSO_CardType char(1), @MSO_ProgID_Prefix_RS char(21), @MSO_CardType_RS char(1), @MSO_ProgID_Prefix_RE char(21), @MSO_CardType_RE char(1)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_ProgID_Prefix_RS IS NULL BEGIN SELECT TOP 25  MSO_ProgID_Prefix, MSO_CardType, MSO_CardName, DEX_ROW_ID FROM .MS273509 WHERE ( MSO_ProgID_Prefix = @MSO_ProgID_Prefix AND MSO_CardType > @MSO_CardType OR MSO_ProgID_Prefix > @MSO_ProgID_Prefix ) ORDER BY MSO_ProgID_Prefix ASC, MSO_CardType ASC END ELSE IF @MSO_ProgID_Prefix_RS = @MSO_ProgID_Prefix_RE BEGIN SELECT TOP 25  MSO_ProgID_Prefix, MSO_CardType, MSO_CardName, DEX_ROW_ID FROM .MS273509 WHERE MSO_ProgID_Prefix = @MSO_ProgID_Prefix_RS AND MSO_CardType BETWEEN @MSO_CardType_RS AND @MSO_CardType_RE AND ( MSO_ProgID_Prefix = @MSO_ProgID_Prefix AND MSO_CardType > @MSO_CardType OR MSO_ProgID_Prefix > @MSO_ProgID_Prefix ) ORDER BY MSO_ProgID_Prefix ASC, MSO_CardType ASC END ELSE BEGIN SELECT TOP 25  MSO_ProgID_Prefix, MSO_CardType, MSO_CardName, DEX_ROW_ID FROM .MS273509 WHERE MSO_ProgID_Prefix BETWEEN @MSO_ProgID_Prefix_RS AND @MSO_ProgID_Prefix_RE AND MSO_CardType BETWEEN @MSO_CardType_RS AND @MSO_CardType_RE AND ( MSO_ProgID_Prefix = @MSO_ProgID_Prefix AND MSO_CardType > @MSO_CardType OR MSO_ProgID_Prefix > @MSO_ProgID_Prefix ) ORDER BY MSO_ProgID_Prefix ASC, MSO_CardType ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273509N_1] TO [DYNGRP]
GO
