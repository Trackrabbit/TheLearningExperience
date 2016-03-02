SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273511SS_1] (@MSO_ProgID_Prefix char(21), @MSO_ProcessorID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_ProgID_Prefix, MSO_ProcessorID, MSO_ProcessorValue, DEX_ROW_ID FROM .MS273511 WHERE MSO_ProgID_Prefix = @MSO_ProgID_Prefix AND MSO_ProcessorID = @MSO_ProcessorID ORDER BY MSO_ProgID_Prefix ASC, MSO_ProcessorID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273511SS_1] TO [DYNGRP]
GO
