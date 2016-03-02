SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100920SD] (@BSSI_User_Def_Field char(25), @USERID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B7100920 WHERE BSSI_User_Def_Field = @BSSI_User_Def_Field AND USERID = @USERID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B7100920 WHERE BSSI_User_Def_Field = @BSSI_User_Def_Field AND USERID = @USERID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100920SD] TO [DYNGRP]
GO
