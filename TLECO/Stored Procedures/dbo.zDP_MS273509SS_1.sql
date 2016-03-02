SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273509SS_1] (@MSO_ProgID_Prefix char(21), @MSO_CardType char(1)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_ProgID_Prefix, MSO_CardType, MSO_CardName, DEX_ROW_ID FROM .MS273509 WHERE MSO_ProgID_Prefix = @MSO_ProgID_Prefix AND MSO_CardType = @MSO_CardType ORDER BY MSO_ProgID_Prefix ASC, MSO_CardType ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273509SS_1] TO [DYNGRP]
GO
