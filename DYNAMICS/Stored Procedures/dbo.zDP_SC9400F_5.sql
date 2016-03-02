SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9400F_5] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9400F_5] TO [DYNGRP]
GO
