SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01200SD] (@Master_Type char(3), @Master_ID char(31), @ADRSCODE char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY01200 WHERE Master_Type = @Master_Type AND Master_ID = @Master_ID AND ADRSCODE = @ADRSCODE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY01200 WHERE Master_Type = @Master_Type AND Master_ID = @Master_ID AND ADRSCODE = @ADRSCODE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01200SD] TO [DYNGRP]
GO
