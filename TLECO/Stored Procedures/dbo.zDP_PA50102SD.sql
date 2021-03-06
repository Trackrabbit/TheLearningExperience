SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50102SD] (@USERID char(15), @CUSTNMBR char(15), @APFRDCTY smallint, @APFRDCNM char(21), @APTODCTY smallint, @APTODCNM char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PA50102 WHERE USERID = @USERID AND CUSTNMBR = @CUSTNMBR AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PA50102 WHERE USERID = @USERID AND CUSTNMBR = @CUSTNMBR AND APFRDCTY = @APFRDCTY AND APFRDCNM = @APFRDCNM AND APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50102SD] TO [DYNGRP]
GO
