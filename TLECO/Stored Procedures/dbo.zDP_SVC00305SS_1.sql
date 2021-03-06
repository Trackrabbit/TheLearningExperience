SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00305SS_1] (@EQUIPID int, @SCHEDID char(9), @PMDTLID char(9), @PMSTAT smallint, @Meter_1_Level int, @LSTPMDTE datetime) AS  set nocount on SELECT TOP 1  EQUIPID, ITEMNMBR, SERLNMBR, SCHEDID, PMDTLID, Meter_1_Level, Meter_2_Level, CALLNBR, LSTPMDTE, METER1, METER2, PMSTAT, SVCLSTPMPERF, DEX_ROW_ID FROM .SVC00305 WHERE EQUIPID = @EQUIPID AND SCHEDID = @SCHEDID AND PMDTLID = @PMDTLID AND PMSTAT = @PMSTAT AND Meter_1_Level = @Meter_1_Level AND LSTPMDTE = @LSTPMDTE ORDER BY EQUIPID ASC, SCHEDID ASC, PMDTLID ASC, PMSTAT ASC, Meter_1_Level ASC, LSTPMDTE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00305SS_1] TO [DYNGRP]
GO
