SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06300SI] (@STATIONID char(11), @SEQUENCE1 numeric(19,5), @Queue_Status char(3), @WORECTYPE smallint, @WORKORDNUM char(11), @Route_Sequence numeric(19,5), @SVC_Depot_Priority numeric(19,5), @Status smallint, @TECHID char(11), @ETTR numeric(19,5), @ETADTE datetime, @ETATME datetime, @ECOMPDT datetime, @EComp_Time datetime, @ACTSTRTDTE datetime, @ACTSTRTTME datetime, @LSTSTAID char(11), @Last_Sequence numeric(19,5), @NXTSTATID char(11), @NXTSEQ numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC06300 (STATIONID, SEQUENCE1, Queue_Status, WORECTYPE, WORKORDNUM, Route_Sequence, SVC_Depot_Priority, Status, TECHID, ETTR, ETADTE, ETATME, ECOMPDT, EComp_Time, ACTSTRTDTE, ACTSTRTTME, LSTSTAID, Last_Sequence, NXTSTATID, NXTSEQ) VALUES ( @STATIONID, @SEQUENCE1, @Queue_Status, @WORECTYPE, @WORKORDNUM, @Route_Sequence, @SVC_Depot_Priority, @Status, @TECHID, @ETTR, @ETADTE, @ETATME, @ECOMPDT, @EComp_Time, @ACTSTRTDTE, @ACTSTRTTME, @LSTSTAID, @Last_Sequence, @NXTSTATID, @NXTSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06300SI] TO [DYNGRP]
GO
