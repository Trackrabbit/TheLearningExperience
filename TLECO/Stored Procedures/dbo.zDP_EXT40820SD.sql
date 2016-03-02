SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40820SD] (@Extender_Page_ID char(15), @COLNUMBR smallint, @Page_Section_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT40820 WHERE Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number = @Page_Section_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT40820 WHERE Extender_Page_ID = @Extender_Page_ID AND COLNUMBR = @COLNUMBR AND Page_Section_Number = @Page_Section_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40820SD] TO [DYNGRP]
GO
