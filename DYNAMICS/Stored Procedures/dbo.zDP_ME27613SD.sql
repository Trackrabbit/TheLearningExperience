SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27613SD] (@ME_Check_Format_ID char(15), @ME_Field_Name char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ME27613 WHERE ME_Check_Format_ID = @ME_Check_Format_ID AND ME_Field_Name = @ME_Field_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ME27613 WHERE ME_Check_Format_ID = @ME_Check_Format_ID AND ME_Field_Name = @ME_Field_Name SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27613SD] TO [DYNGRP]
GO
