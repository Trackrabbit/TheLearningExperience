SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ASIEXP85SD] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Favorite_Save_Level smallint, @CMPANYID smallint, @USRCLASS char(15), @USERID char(15), @ASI_Favorite_Name char(81), @ASI_Field_Sequence smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .ASIEXP85 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Favorite_Save_Level = @ASI_Favorite_Save_Level AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND USERID = @USERID AND ASI_Favorite_Name = @ASI_Favorite_Name AND ASI_Field_Sequence = @ASI_Field_Sequence AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ASIEXP85 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Favorite_Save_Level = @ASI_Favorite_Save_Level AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND USERID = @USERID AND ASI_Favorite_Name = @ASI_Favorite_Name AND ASI_Field_Sequence = @ASI_Field_Sequence SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP85SD] TO [DYNGRP]
GO
