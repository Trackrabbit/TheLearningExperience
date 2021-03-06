SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00204SD] (@VENDORID char(15), @TEN99TYPE smallint, @YEAR1 smallint, @PERIODID smallint, @TEN99BOXNUMBER smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PM00204 WHERE VENDORID = @VENDORID AND TEN99TYPE = @TEN99TYPE AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND TEN99BOXNUMBER = @TEN99BOXNUMBER AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PM00204 WHERE VENDORID = @VENDORID AND TEN99TYPE = @TEN99TYPE AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND TEN99BOXNUMBER = @TEN99BOXNUMBER SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00204SD] TO [DYNGRP]
GO
