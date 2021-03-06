SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00305L_2] (@CALLNBR_RS char(11), @EQUIPID_RS int, @CALLNBR_RE char(11), @EQUIPID_RE int) AS  set nocount on IF @CALLNBR_RS IS NULL BEGIN SELECT TOP 25  EQUIPID, ITEMNMBR, SERLNMBR, SCHEDID, PMDTLID, Meter_1_Level, Meter_2_Level, CALLNBR, LSTPMDTE, METER1, METER2, PMSTAT, SVCLSTPMPERF, DEX_ROW_ID FROM .SVC00305 ORDER BY CALLNBR DESC, EQUIPID DESC, DEX_ROW_ID DESC END ELSE IF @CALLNBR_RS = @CALLNBR_RE BEGIN SELECT TOP 25  EQUIPID, ITEMNMBR, SERLNMBR, SCHEDID, PMDTLID, Meter_1_Level, Meter_2_Level, CALLNBR, LSTPMDTE, METER1, METER2, PMSTAT, SVCLSTPMPERF, DEX_ROW_ID FROM .SVC00305 WHERE CALLNBR = @CALLNBR_RS AND EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE ORDER BY CALLNBR DESC, EQUIPID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EQUIPID, ITEMNMBR, SERLNMBR, SCHEDID, PMDTLID, Meter_1_Level, Meter_2_Level, CALLNBR, LSTPMDTE, METER1, METER2, PMSTAT, SVCLSTPMPERF, DEX_ROW_ID FROM .SVC00305 WHERE CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE ORDER BY CALLNBR DESC, EQUIPID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00305L_2] TO [DYNGRP]
GO
