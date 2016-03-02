SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9400UN_2] (@BS int, @TABLTECH char(79), @Event_Type smallint, @TABLTECH_RS char(79), @Event_Type_RS smallint, @TABLTECH_RE char(79), @Event_Type_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @TABLTECH_RS IS NULL BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE ( TABLTECH = @TABLTECH AND Event_Type > @Event_Type OR TABLTECH > @TABLTECH ) ORDER BY TABLTECH ASC, Event_Type ASC, DEX_ROW_ID ASC END ELSE IF @TABLTECH_RS = @TABLTECH_RE BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE TABLTECH = @TABLTECH_RS AND Event_Type BETWEEN @Event_Type_RS AND @Event_Type_RE AND ( TABLTECH = @TABLTECH AND Event_Type > @Event_Type OR TABLTECH > @TABLTECH ) ORDER BY TABLTECH ASC, Event_Type ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE AND Event_Type BETWEEN @Event_Type_RS AND @Event_Type_RE AND ( TABLTECH = @TABLTECH AND Event_Type > @Event_Type OR TABLTECH > @TABLTECH ) ORDER BY TABLTECH ASC, Event_Type ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9400UN_2] TO [DYNGRP]
GO
