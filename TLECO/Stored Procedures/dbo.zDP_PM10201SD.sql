SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10201SD] (@PMNTNMBR char(21), @KEYFIELD char(21), @APTVCHNM char(21), @APTODCTY smallint, @APFVCHNM char(21), @APFRDCTY smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PM10201 WHERE PMNTNMBR = @PMNTNMBR AND KEYFIELD = @KEYFIELD AND APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND APFVCHNM = @APFVCHNM AND APFRDCTY = @APFRDCTY AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PM10201 WHERE PMNTNMBR = @PMNTNMBR AND KEYFIELD = @KEYFIELD AND APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND APFVCHNM = @APFVCHNM AND APFRDCTY = @APFRDCTY SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10201SD] TO [DYNGRP]
GO