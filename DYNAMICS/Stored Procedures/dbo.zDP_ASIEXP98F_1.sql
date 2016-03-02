SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP98F_1] (@CMPANYID_RS smallint, @USERID_RS char(15), @ASI_Favorite_Dict_ID_RS smallint, @ASI_Favorite_Type_RS smallint, @USRCLASS_RS char(15), @CMPANYID_RE smallint, @USERID_RE char(15), @ASI_Favorite_Dict_ID_RE smallint, @ASI_Favorite_Type_RE smallint, @USRCLASS_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  USERID, USRCLASS, CMPANYID, ASI_Favorite_Type, ASI_Favorite_Dict_ID, ACESIBLE, DEX_ROW_ID FROM .ASIEXP98 ORDER BY CMPANYID ASC, USERID ASC, ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, USRCLASS ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  USERID, USRCLASS, CMPANYID, ASI_Favorite_Type, ASI_Favorite_Dict_ID, ACESIBLE, DEX_ROW_ID FROM .ASIEXP98 WHERE CMPANYID = @CMPANYID_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ASI_Favorite_Dict_ID BETWEEN @ASI_Favorite_Dict_ID_RS AND @ASI_Favorite_Dict_ID_RE AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE ORDER BY CMPANYID ASC, USERID ASC, ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, USRCLASS ASC END ELSE BEGIN SELECT TOP 25  USERID, USRCLASS, CMPANYID, ASI_Favorite_Type, ASI_Favorite_Dict_ID, ACESIBLE, DEX_ROW_ID FROM .ASIEXP98 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ASI_Favorite_Dict_ID BETWEEN @ASI_Favorite_Dict_ID_RS AND @ASI_Favorite_Dict_ID_RE AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE ORDER BY CMPANYID ASC, USERID ASC, ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, USRCLASS ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP98F_1] TO [DYNGRP]
GO