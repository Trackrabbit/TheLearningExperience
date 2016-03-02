SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9400SS_4] (@TABLTECH char(79), @Event_Type smallint, @Extender_Form_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE TABLTECH = @TABLTECH AND Event_Type = @Event_Type AND Extender_Form_ID = @Extender_Form_ID ORDER BY TABLTECH ASC, Event_Type ASC, Extender_Form_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9400SS_4] TO [DYNGRP]
GO
