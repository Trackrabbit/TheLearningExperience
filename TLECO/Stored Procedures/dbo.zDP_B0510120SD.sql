SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510120SD] (@MJW_Offering_ID char(21), @MJW_Property_ID char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B0510120 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_Property_ID = @MJW_Property_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B0510120 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_Property_ID = @MJW_Property_ID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510120SD] TO [DYNGRP]
GO
