SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640504SD] (@BSSI_Type smallint, @BSSI_Column_ID smallint, @BSSI_Column_Filter_ID char(25), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4640504 WHERE BSSI_Type = @BSSI_Type AND BSSI_Column_ID = @BSSI_Column_ID AND BSSI_Column_Filter_ID = @BSSI_Column_Filter_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4640504 WHERE BSSI_Type = @BSSI_Type AND BSSI_Column_ID = @BSSI_Column_ID AND BSSI_Column_Filter_ID = @BSSI_Column_Filter_ID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640504SD] TO [DYNGRP]
GO
