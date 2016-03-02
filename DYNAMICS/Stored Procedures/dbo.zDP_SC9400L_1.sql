SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9400L_1] (@PRODID_RS smallint, @RealTimeId_RS char(101), @INTERID_RS char(5), @Event_Type_RS smallint, @PRODID_RE smallint, @RealTimeId_RE char(101), @INTERID_RE char(5), @Event_Type_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 ORDER BY PRODID DESC, RealTimeId DESC, INTERID DESC, Event_Type DESC, DEX_ROW_ID DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE PRODID = @PRODID_RS AND RealTimeId BETWEEN @RealTimeId_RS AND @RealTimeId_RE AND INTERID BETWEEN @INTERID_RS AND @INTERID_RE AND Event_Type BETWEEN @Event_Type_RS AND @Event_Type_RE ORDER BY PRODID DESC, RealTimeId DESC, INTERID DESC, Event_Type DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  PRODID, RealTimeId, Extender_Form_ID, TABLTECH, TBLPHYSNM, INTERID, TriggerType, Event_Type, URL, DEX_ROW_ID, TXTFIELD FROM .SC9400 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND RealTimeId BETWEEN @RealTimeId_RS AND @RealTimeId_RE AND INTERID BETWEEN @INTERID_RS AND @INTERID_RE AND Event_Type BETWEEN @Event_Type_RS AND @Event_Type_RE ORDER BY PRODID DESC, RealTimeId DESC, INTERID DESC, Event_Type DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9400L_1] TO [DYNGRP]
GO
