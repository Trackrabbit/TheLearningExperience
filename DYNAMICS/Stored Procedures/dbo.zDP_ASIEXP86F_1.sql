SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP86F_1] (@ASI_Favorite_Dict_ID_RS smallint, @ASI_Favorite_Type_RS smallint, @ASI_Favorite_Save_Level_RS smallint, @CMPANYID_RS smallint, @USRCLASS_RS char(15), @USERID_RS char(15), @ASI_Favorite_Name_RS char(81), @ASI_Field_Sequence_RS smallint, @ASI_Favorite_Dict_ID_RE smallint, @ASI_Favorite_Type_RE smallint, @ASI_Favorite_Save_Level_RE smallint, @CMPANYID_RE smallint, @USRCLASS_RE char(15), @USERID_RE char(15), @ASI_Favorite_Name_RE char(81), @ASI_Field_Sequence_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @ASI_Favorite_Dict_ID_RS IS NULL BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Favorite_Save_Level, CMPANYID, USRCLASS, USERID, ASI_Favorite_Name, ASI_Field_Sequence, ASI_Include_Column, ASI_Display_Column, ASI_Field_Number_Dict_ID, ASI_Field_Number, ASI_Column_Display_Name, ASI_Display_Column_Width, DEX_ROW_ID FROM .ASIEXP86 ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Favorite_Save_Level ASC, CMPANYID ASC, USRCLASS ASC, USERID ASC, ASI_Favorite_Name ASC, ASI_Field_Sequence ASC END ELSE IF @ASI_Favorite_Dict_ID_RS = @ASI_Favorite_Dict_ID_RE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Favorite_Save_Level, CMPANYID, USRCLASS, USERID, ASI_Favorite_Name, ASI_Field_Sequence, ASI_Include_Column, ASI_Display_Column, ASI_Field_Number_Dict_ID, ASI_Field_Number, ASI_Column_Display_Name, ASI_Display_Column_Width, DEX_ROW_ID FROM .ASIEXP86 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID_RS AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE AND ASI_Favorite_Save_Level BETWEEN @ASI_Favorite_Save_Level_RS AND @ASI_Favorite_Save_Level_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ASI_Favorite_Name BETWEEN @ASI_Favorite_Name_RS AND @ASI_Favorite_Name_RE AND ASI_Field_Sequence BETWEEN @ASI_Field_Sequence_RS AND @ASI_Field_Sequence_RE ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Favorite_Save_Level ASC, CMPANYID ASC, USRCLASS ASC, USERID ASC, ASI_Favorite_Name ASC, ASI_Field_Sequence ASC END ELSE BEGIN SELECT TOP 25  ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Favorite_Save_Level, CMPANYID, USRCLASS, USERID, ASI_Favorite_Name, ASI_Field_Sequence, ASI_Include_Column, ASI_Display_Column, ASI_Field_Number_Dict_ID, ASI_Field_Number, ASI_Column_Display_Name, ASI_Display_Column_Width, DEX_ROW_ID FROM .ASIEXP86 WHERE ASI_Favorite_Dict_ID BETWEEN @ASI_Favorite_Dict_ID_RS AND @ASI_Favorite_Dict_ID_RE AND ASI_Favorite_Type BETWEEN @ASI_Favorite_Type_RS AND @ASI_Favorite_Type_RE AND ASI_Favorite_Save_Level BETWEEN @ASI_Favorite_Save_Level_RS AND @ASI_Favorite_Save_Level_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ASI_Favorite_Name BETWEEN @ASI_Favorite_Name_RS AND @ASI_Favorite_Name_RE AND ASI_Field_Sequence BETWEEN @ASI_Field_Sequence_RS AND @ASI_Field_Sequence_RE ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Favorite_Save_Level ASC, CMPANYID ASC, USRCLASS ASC, USERID ASC, ASI_Favorite_Name ASC, ASI_Field_Sequence ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP86F_1] TO [DYNGRP]
GO
