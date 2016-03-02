SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06300SD] (@STATIONID char(11), @Status smallint, @SVC_Depot_Priority numeric(19,5), @SEQUENCE1 numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC06300 WHERE STATIONID = @STATIONID AND Status = @Status AND SVC_Depot_Priority = @SVC_Depot_Priority AND SEQUENCE1 = @SEQUENCE1 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC06300 WHERE STATIONID = @STATIONID AND Status = @Status AND SVC_Depot_Priority = @SVC_Depot_Priority AND SEQUENCE1 = @SEQUENCE1 SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06300SD] TO [DYNGRP]
GO
