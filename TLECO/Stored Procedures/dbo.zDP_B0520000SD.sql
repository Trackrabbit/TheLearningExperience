SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0520000SD] (@VENDORID char(15), @BSSI_Investment_Number char(21), @YEAR1 smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B0520000 WHERE VENDORID = @VENDORID AND BSSI_Investment_Number = @BSSI_Investment_Number AND YEAR1 = @YEAR1 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B0520000 WHERE VENDORID = @VENDORID AND BSSI_Investment_Number = @BSSI_Investment_Number AND YEAR1 = @YEAR1 SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0520000SD] TO [DYNGRP]
GO
