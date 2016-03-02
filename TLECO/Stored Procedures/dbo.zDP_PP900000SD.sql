SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP900000SD] (@USERID char(15), @YEAR1 smallint, @PERIODID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PP900000 WHERE USERID = @USERID AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PP900000 WHERE USERID = @USERID AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP900000SD] TO [DYNGRP]
GO