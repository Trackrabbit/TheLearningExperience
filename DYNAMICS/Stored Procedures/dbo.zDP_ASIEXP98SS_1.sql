SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP98SS_1] (@CMPANYID smallint, @USERID char(15), @ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @USRCLASS char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, USRCLASS, CMPANYID, ASI_Favorite_Type, ASI_Favorite_Dict_ID, ACESIBLE, DEX_ROW_ID FROM .ASIEXP98 WHERE CMPANYID = @CMPANYID AND USERID = @USERID AND ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND USRCLASS = @USRCLASS ORDER BY CMPANYID ASC, USERID ASC, ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, USRCLASS ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP98SS_1] TO [DYNGRP]
GO
