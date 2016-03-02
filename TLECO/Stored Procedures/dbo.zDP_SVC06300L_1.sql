SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06300L_1] (@STATIONID_RS char(11), @Status_RS smallint, @SVC_Depot_Priority_RS numeric(19,5), @SEQUENCE1_RS numeric(19,5), @STATIONID_RE char(11), @Status_RE smallint, @SVC_Depot_Priority_RE numeric(19,5), @SEQUENCE1_RE numeric(19,5)) AS  set nocount on IF @STATIONID_RS IS NULL BEGIN SELECT TOP 25  STATIONID, SEQUENCE1, Queue_Status, WORECTYPE, WORKORDNUM, Route_Sequence, SVC_Depot_Priority, Status, TECHID, ETTR, ETADTE, ETATME, ECOMPDT, EComp_Time, ACTSTRTDTE, ACTSTRTTME, LSTSTAID, Last_Sequence, NXTSTATID, NXTSEQ, DEX_ROW_ID FROM .SVC06300 ORDER BY STATIONID DESC, Status ASC, SVC_Depot_Priority DESC, SEQUENCE1 DESC END ELSE IF @STATIONID_RS = @STATIONID_RE BEGIN SELECT TOP 25  STATIONID, SEQUENCE1, Queue_Status, WORECTYPE, WORKORDNUM, Route_Sequence, SVC_Depot_Priority, Status, TECHID, ETTR, ETADTE, ETATME, ECOMPDT, EComp_Time, ACTSTRTDTE, ACTSTRTTME, LSTSTAID, Last_Sequence, NXTSTATID, NXTSEQ, DEX_ROW_ID FROM .SVC06300 WHERE STATIONID = @STATIONID_RS AND Status BETWEEN @Status_RE AND @Status_RS AND SVC_Depot_Priority BETWEEN @SVC_Depot_Priority_RS AND @SVC_Depot_Priority_RE AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE ORDER BY STATIONID DESC, Status ASC, SVC_Depot_Priority DESC, SEQUENCE1 DESC END ELSE BEGIN SELECT TOP 25  STATIONID, SEQUENCE1, Queue_Status, WORECTYPE, WORKORDNUM, Route_Sequence, SVC_Depot_Priority, Status, TECHID, ETTR, ETADTE, ETATME, ECOMPDT, EComp_Time, ACTSTRTDTE, ACTSTRTTME, LSTSTAID, Last_Sequence, NXTSTATID, NXTSEQ, DEX_ROW_ID FROM .SVC06300 WHERE STATIONID BETWEEN @STATIONID_RS AND @STATIONID_RE AND Status BETWEEN @Status_RE AND @Status_RS AND SVC_Depot_Priority BETWEEN @SVC_Depot_Priority_RS AND @SVC_Depot_Priority_RE AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE ORDER BY STATIONID DESC, Status ASC, SVC_Depot_Priority DESC, SEQUENCE1 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06300L_1] TO [DYNGRP]
GO