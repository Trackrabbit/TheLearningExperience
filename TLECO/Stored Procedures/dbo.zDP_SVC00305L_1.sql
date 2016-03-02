SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00305L_1] (@EQUIPID_RS int, @SCHEDID_RS char(9), @PMDTLID_RS char(9), @PMSTAT_RS smallint, @Meter_1_Level_RS int, @LSTPMDTE_RS datetime, @EQUIPID_RE int, @SCHEDID_RE char(9), @PMDTLID_RE char(9), @PMSTAT_RE smallint, @Meter_1_Level_RE int, @LSTPMDTE_RE datetime) AS  set nocount on IF @EQUIPID_RS IS NULL BEGIN SELECT TOP 25  EQUIPID, ITEMNMBR, SERLNMBR, SCHEDID, PMDTLID, Meter_1_Level, Meter_2_Level, CALLNBR, LSTPMDTE, METER1, METER2, PMSTAT, SVCLSTPMPERF, DEX_ROW_ID FROM .SVC00305 ORDER BY EQUIPID DESC, SCHEDID DESC, PMDTLID DESC, PMSTAT DESC, Meter_1_Level DESC, LSTPMDTE DESC END ELSE IF @EQUIPID_RS = @EQUIPID_RE BEGIN SELECT TOP 25  EQUIPID, ITEMNMBR, SERLNMBR, SCHEDID, PMDTLID, Meter_1_Level, Meter_2_Level, CALLNBR, LSTPMDTE, METER1, METER2, PMSTAT, SVCLSTPMPERF, DEX_ROW_ID FROM .SVC00305 WHERE EQUIPID = @EQUIPID_RS AND SCHEDID BETWEEN @SCHEDID_RS AND @SCHEDID_RE AND PMDTLID BETWEEN @PMDTLID_RS AND @PMDTLID_RE AND PMSTAT BETWEEN @PMSTAT_RS AND @PMSTAT_RE AND Meter_1_Level BETWEEN @Meter_1_Level_RS AND @Meter_1_Level_RE AND LSTPMDTE BETWEEN @LSTPMDTE_RS AND @LSTPMDTE_RE ORDER BY EQUIPID DESC, SCHEDID DESC, PMDTLID DESC, PMSTAT DESC, Meter_1_Level DESC, LSTPMDTE DESC END ELSE BEGIN SELECT TOP 25  EQUIPID, ITEMNMBR, SERLNMBR, SCHEDID, PMDTLID, Meter_1_Level, Meter_2_Level, CALLNBR, LSTPMDTE, METER1, METER2, PMSTAT, SVCLSTPMPERF, DEX_ROW_ID FROM .SVC00305 WHERE EQUIPID BETWEEN @EQUIPID_RS AND @EQUIPID_RE AND SCHEDID BETWEEN @SCHEDID_RS AND @SCHEDID_RE AND PMDTLID BETWEEN @PMDTLID_RS AND @PMDTLID_RE AND PMSTAT BETWEEN @PMSTAT_RS AND @PMSTAT_RE AND Meter_1_Level BETWEEN @Meter_1_Level_RS AND @Meter_1_Level_RE AND LSTPMDTE BETWEEN @LSTPMDTE_RS AND @LSTPMDTE_RE ORDER BY EQUIPID DESC, SCHEDID DESC, PMDTLID DESC, PMSTAT DESC, Meter_1_Level DESC, LSTPMDTE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00305L_1] TO [DYNGRP]
GO
