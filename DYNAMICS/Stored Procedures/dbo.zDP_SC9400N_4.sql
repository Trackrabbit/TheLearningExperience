SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9400N_4] (@BS int, @TABLTECH char(79), @Event_Type smallint, @Extender_Form_ID char(15), @DEX_ROW_ID int, @TABLTECH_RS char(79), @Event_Type_RS smallint, @Extender_Form_ID_RS char(15), @TABLTECH_RE char(79), @Event_Type_RE smallint, @Extender_Form_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @TABLTECH_RS IS NULL BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE ( TABLTECH = @TABLTECH AND Event_Type = @Event_Type AND Extender_Form_ID = @Extender_Form_ID AND DEX_ROW_ID > @DEX_ROW_ID OR TABLTECH = @TABLTECH AND Event_Type = @Event_Type AND Extender_Form_ID > @Extender_Form_ID OR TABLTECH = @TABLTECH AND Event_Type > @Event_Type OR TABLTECH > @TABLTECH ) ORDER BY TABLTECH ASC, Event_Type ASC, Extender_Form_ID ASC, DEX_ROW_ID ASC END ELSE IF @TABLTECH_RS = @TABLTECH_RE BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE TABLTECH = @TABLTECH_RS AND Event_Type BETWEEN @Event_Type_RS AND @Event_Type_RE AND Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE AND ( TABLTECH = @TABLTECH AND Event_Type = @Event_Type AND Extender_Form_ID = @Extender_Form_ID AND DEX_ROW_ID > @DEX_ROW_ID OR TABLTECH = @TABLTECH AND Event_Type = @Event_Type AND Extender_Form_ID > @Extender_Form_ID OR TABLTECH = @TABLTECH AND Event_Type > @Event_Type OR TABLTECH > @TABLTECH ) ORDER BY TABLTECH ASC, Event_Type ASC, Extender_Form_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE AND Event_Type BETWEEN @Event_Type_RS AND @Event_Type_RE AND Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE AND ( TABLTECH = @TABLTECH AND Event_Type = @Event_Type AND Extender_Form_ID = @Extender_Form_ID AND DEX_ROW_ID > @DEX_ROW_ID OR TABLTECH = @TABLTECH AND Event_Type = @Event_Type AND Extender_Form_ID > @Extender_Form_ID OR TABLTECH = @TABLTECH AND Event_Type > @Event_Type OR TABLTECH > @TABLTECH ) ORDER BY TABLTECH ASC, Event_Type ASC, Extender_Form_ID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9400N_4] TO [DYNGRP]
GO
