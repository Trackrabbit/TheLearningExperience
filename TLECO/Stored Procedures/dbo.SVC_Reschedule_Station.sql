SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Reschedule_Station] (@STATIONID char(11),@StartStatus integer,@Priority numeric(19,5), @SEQUENCE numeric(19,5)) AS declare @WORECTYPE smallint declare @WORKORDNUM char(11) declare @Route_Sequence numeric(19,5) declare @Status smallint declare ST_cursor CURSOR for select WORECTYPE, WORKORDNUM, Route_Sequence,Status from SVC06300   where STATIONID = @STATIONID AND   Status < @StartStatus OR   (Status = @StartStatus and SVC_Depot_Priority >= @Priority)  order by Status, SVC_Depot_Priority, SEQUENCE1 set nocount on OPEN ST_cursor FETCH NEXT FROM ST_cursor INTO @WORECTYPE, @WORKORDNUM,@Route_Sequence, @Status WHILE (@@FETCH_STATUS <> -1) begin  exec SVC_Schedule_Work_Order @WORECTYPE, @WORKORDNUM, @Route_Sequence, @Status   FETCH NEXT FROM ST_cursor INTO @WORECTYPE, @WORKORDNUM,@Route_Sequence, @Status end DEALLOCATE ST_cursor    
GO
GRANT EXECUTE ON  [dbo].[SVC_Reschedule_Station] TO [DYNGRP]
GO
