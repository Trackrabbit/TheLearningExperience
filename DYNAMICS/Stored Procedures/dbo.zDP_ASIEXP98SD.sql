SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP98SD] (@CMPANYID smallint, @USERID char(15), @ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @USRCLASS char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ASIEXP98 WHERE CMPANYID = @CMPANYID AND USERID = @USERID AND ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND USRCLASS = @USRCLASS AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ASIEXP98 WHERE CMPANYID = @CMPANYID AND USERID = @USERID AND ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND USRCLASS = @USRCLASS SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP98SD] TO [DYNGRP]
GO
