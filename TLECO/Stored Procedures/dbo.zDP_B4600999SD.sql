SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600999SD] (@BSSI_SSRS_Type char(25), @Series_Name char(31), @BSSI_SSRS_Name char(101), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4600999 WHERE BSSI_SSRS_Type = @BSSI_SSRS_Type AND Series_Name = @Series_Name AND BSSI_SSRS_Name = @BSSI_SSRS_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4600999 WHERE BSSI_SSRS_Type = @BSSI_SSRS_Type AND Series_Name = @Series_Name AND BSSI_SSRS_Name = @BSSI_SSRS_Name SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600999SD] TO [DYNGRP]
GO
