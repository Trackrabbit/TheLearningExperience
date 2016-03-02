SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510111SD] (@MJW_Property_ID char(21), @ADRSCODE char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B0510111 WHERE MJW_Property_ID = @MJW_Property_ID AND ADRSCODE = @ADRSCODE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B0510111 WHERE MJW_Property_ID = @MJW_Property_ID AND ADRSCODE = @ADRSCODE SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510111SD] TO [DYNGRP]
GO
