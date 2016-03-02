SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510280SD] (@MJW_Investment_Number char(21), @VENDORID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B0510280 WHERE MJW_Investment_Number = @MJW_Investment_Number AND VENDORID = @VENDORID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B0510280 WHERE MJW_Investment_Number = @MJW_Investment_Number AND VENDORID = @VENDORID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510280SD] TO [DYNGRP]
GO