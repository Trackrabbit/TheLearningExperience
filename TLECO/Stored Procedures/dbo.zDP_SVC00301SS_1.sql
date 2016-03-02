SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00301SS_1] (@SERLNMBR char(21), @ITEMNMBR char(31), @LSTDTEDT datetime) AS  set nocount on SELECT TOP 1  EQUIPID, LNITMSEQ, SERLNMBR, ITEMNMBR, METER1, METER2, METER3, LSTDTEDT, Daily_Usage, USERID, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, Replaces_1, Replaces_2, Replaces_3, Replaces_4, Replaces_5, Reading_Entered_From, Meter_Deltas_1, Meter_Deltas_2, Meter_Deltas_3, Meter_Deltas_4, Meter_Deltas_5, DEX_ROW_ID FROM .SVC00301 WHERE SERLNMBR = @SERLNMBR AND ITEMNMBR = @ITEMNMBR AND LSTDTEDT = @LSTDTEDT ORDER BY SERLNMBR ASC, ITEMNMBR ASC, LSTDTEDT ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00301SS_1] TO [DYNGRP]
GO
