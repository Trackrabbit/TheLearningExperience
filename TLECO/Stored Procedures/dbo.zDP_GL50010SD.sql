SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50010SD] (@USERID char(15), @AMNTFROM smallint, @YEARID char(15), @ACTINDX int, @SQLSESID int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .GL50010 WHERE USERID = @USERID AND AMNTFROM = @AMNTFROM AND YEARID = @YEARID AND ACTINDX = @ACTINDX AND SQLSESID = @SQLSESID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .GL50010 WHERE USERID = @USERID AND AMNTFROM = @AMNTFROM AND YEARID = @YEARID AND ACTINDX = @ACTINDX AND SQLSESID = @SQLSESID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50010SD] TO [DYNGRP]
GO
