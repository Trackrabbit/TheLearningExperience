SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01404SD] (@USERID char(15), @DICTID smallint, @CMPANYID smallint, @USRCLASS char(15), @REPORTID smallint, @VisibleTo smallint, @Report_Option_Name char(81), @USERNAME char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY01404 WHERE USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo = @VisibleTo AND Report_Option_Name = @Report_Option_Name AND USERNAME = @USERNAME AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY01404 WHERE USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo = @VisibleTo AND Report_Option_Name = @Report_Option_Name AND USERNAME = @USERNAME SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01404SD] TO [DYNGRP]
GO
