SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP83SS_1] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Favorite_Save_Level smallint, @CMPANYID smallint, @USRCLASS char(15), @USERID char(15), @ASI_Favorite_Name char(81), @ASI_Sequence smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Favorite_Save_Level, CMPANYID, USRCLASS, USERID, ASI_Favorite_Name, ASI_Sequence, ASI_Field_Number, ASI_Field_Number_Dict_ID, ASI_Ascending, DEX_ROW_ID FROM .ASIEXP83 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Favorite_Save_Level = @ASI_Favorite_Save_Level AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND USERID = @USERID AND ASI_Favorite_Name = @ASI_Favorite_Name AND ASI_Sequence = @ASI_Sequence ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Favorite_Save_Level ASC, CMPANYID ASC, USRCLASS ASC, USERID ASC, ASI_Favorite_Name ASC, ASI_Sequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP83SS_1] TO [DYNGRP]
GO
