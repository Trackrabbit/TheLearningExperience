SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00305SI] (@EQUIPID int, @ITEMNMBR char(31), @SERLNMBR char(21), @SCHEDID char(9), @PMDTLID char(9), @Meter_1_Level int, @Meter_2_Level int, @CALLNBR char(11), @LSTPMDTE datetime, @METER1 int, @METER2 int, @PMSTAT smallint, @SVCLSTPMPERF datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00305 (EQUIPID, ITEMNMBR, SERLNMBR, SCHEDID, PMDTLID, Meter_1_Level, Meter_2_Level, CALLNBR, LSTPMDTE, METER1, METER2, PMSTAT, SVCLSTPMPERF) VALUES ( @EQUIPID, @ITEMNMBR, @SERLNMBR, @SCHEDID, @PMDTLID, @Meter_1_Level, @Meter_2_Level, @CALLNBR, @LSTPMDTE, @METER1, @METER2, @PMSTAT, @SVCLSTPMPERF) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00305SI] TO [DYNGRP]
GO